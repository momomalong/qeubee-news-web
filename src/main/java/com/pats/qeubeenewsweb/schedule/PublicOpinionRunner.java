package com.pats.qeubeenewsweb.schedule;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;
import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.entity.PublicOpinion;
import com.pats.qeubeenewsweb.entity.dto.apidto.CDHRequestDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.InstitutionDTO;
import com.pats.qeubeenewsweb.enums.CHDApiNameAndDataSourceIdEnum;
import com.pats.qeubeenewsweb.logic.PublicOpinionLogic;
import com.pats.qeubeenewsweb.service.ApiDataCacheService;
import com.pats.qeubeenewsweb.service.IQbNewsLabelBondIssuerInfoService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
import java.util.StringJoiner;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

/**
 * 启动时修改舆情新闻数据
 *
 * @author hzy
 * @date 2020/12/23 14:11
 */
@Slf4j
@Component
public class PublicOpinionRunner implements ApplicationRunner {

    @Autowired
    private PublicOpinionLogic publicOpinionLogic;

    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    @Autowired
    private IQbNewsLabelBondIssuerInfoService bondIssuerInfoService;

    @Autowired
    private ApiDataCacheService apiDataCacheService;


    @Override
    public void run(ApplicationArguments args) {
        // 补充历史数据
        this.processHistoryData();
//         初始化bond信息在redis的数据
        bondIssuerInfoService.processDetailBonds();
    }

    private void processHistoryData() {
        //向redis存储一个缓存数据，使当前方法一个月只执行一次
        Boolean ifAbsent = redisTemplate.opsForValue().setIfAbsent(RedisCacheNamesConst.PUBLIC_OPINION_SHORT_NAME, "执行初始化旧数据修改", 30, TimeUnit.DAYS);
        //ifAbsent为空或者在redis中缓存失败的时候，则跳过旧数据补充
        if (ifAbsent == null || !ifAbsent) {
            return;
        }
        //补充提及企业历史数据
        this.updateMentionComShortName();
        //补充公告表中公告类型cate_code2字段数据
        //this.updateBulletinCateCode2();
    }

    /**
     * 补充公告表中公告类型cate_code2字段数据
     */
    private void updateBulletinCateCode2() {

    }

    /**
     * 补充历史提及企业简称
     */
    private void updateMentionComShortName() {
        QueryWrapper<PublicOpinion> queryWrapper = new QueryWrapper<>();
        queryWrapper.isNotNull(DataBaseSourceConst.COL_PUBLIC_OPINION_MENTION_COM);
        queryWrapper.ne(DataBaseSourceConst.COL_PUBLIC_OPINION_MENTION_COM, "");
        queryWrapper.eq(DataBaseSourceConst.COL_PUBLIC_OPINION_MENTION_COM_SHORT_NAME, "");
        queryWrapper.select(DataBaseSourceConst.ID, DataBaseSourceConst.COL_PUBLIC_OPINION_MENTION_COM);
        List<PublicOpinion> list = publicOpinionLogic.list(queryWrapper);
        if (CollectionUtils.isEmpty(list)) {
            return;
        }
        //一些旧数据存在空格的情况，需要将其替换
        String mentionComs = list.stream().map(PublicOpinion::getMentionCom).collect(Collectors.joining(",", "'", "'"))
                .replace(" ", "").replace(",", "','");
        int size = mentionComs.split(",").length;
        //调用api接口
        CDHRequestDTO cdhRequestDTO = new CDHRequestDTO(CHDApiNameAndDataSourceIdEnum.INSTITUTION,
                "Full_Name_C in (" + mentionComs + ")", size);
        //以mentionComs为条件查询INSTITUTION接口,再以提及单位全称分组。
        Map<String, List<InstitutionDTO>> listMap = apiDataCacheService.request(cdhRequestDTO, InstitutionDTO.class).stream().collect(Collectors.groupingBy(InstitutionDTO::getFullName));
        if (CollectionUtils.isEmpty(listMap)) {
            return;
        }
        //遍历查询结果集，设置简称
        for (PublicOpinion opinion : list) {
            String[] split = opinion.getMentionCom().split(",");
            StringJoiner stringJoiner = new StringJoiner(",");
            for (String mentionCom : split) {
                List<InstitutionDTO> institutionDTOList = listMap.get(mentionCom.replace(" ", ""));
                if (CollectionUtils.isEmpty(institutionDTOList) || StringUtils.isEmpty(institutionDTOList.get(0).getShortName().trim())) {
                    continue;
                }
                stringJoiner.add(institutionDTOList.get(0).getShortName().trim());
            }
            opinion.setMentionComShortName(stringJoiner.toString());
        }
        publicOpinionLogic.updateBatchById(list, 1000);
    }
}
