package com.pats.qeubeenewsweb.service.transfer;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.entity.bo.BulletinDetailBO;
import com.pats.qeubeenewsweb.entity.bo.BulletinPageBO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinDetailDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindSetDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindSetWebDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDTO;
import com.pats.qeubeenewsweb.otherservice.BulletinService;
import com.pats.qeubeenewsweb.service.ApiDataCacheService;
import com.pats.qeubeenewsweb.utils.ApiResultDealUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.StringJoiner;
import java.util.stream.Collectors;

/**
 * @Author: qintai.ma
 * @Description:
 * @Date: create in 2020/8/25 11:26
 * @Version :1.0.0
 */
@Component
public class BulletinServiceTransfer {

    @Autowired
    private BulletinService bulletinService;

    @Autowired
    private LabelServiceTransfer labelServiceTransfer;

    @Autowired
    private ApiDataCacheService apiRequestService;

    /**
     * 检索分页公告列表 by condition
     *
     * @param pageQuery 公告检索条件
     * @return 当前也公告列表
     */
    public IPage<BulletinDTO> findByPage(BulletinPageQueryDTO pageQuery) {
        Page<BulletinPageBO> byPage = ApiResultDealUtils.dealResult(bulletinService.findByPage(pageQuery));

        // 需要查询的标签集合
        List<LabelDTO> selectLabelList = new ArrayList<>();
        // 发行人ID
        StringJoiner ids = new StringJoiner(",");
        IPage<BulletinDTO> convert = byPage.convert(e -> {
            BulletinDTO bulletinDTO = BeansMapper.convert(e, BulletinDTO.class);
            bulletinDTO.setCreateTime(e.getCreateTime() + "");
            bulletinDTO.setPublishTime(e.getPublishTime() + "");

            selectLabelList.addAll(e.getLabels());
            // 翻译标签名称

            return bulletinDTO;
        });
        // 查询标签
        Map<Integer, LabelDTO> allLabel = labelServiceTransfer.translationNameById(selectLabelList).stream().distinct().collect(Collectors.toMap(LabelDTO::getId, e -> e));

        List<BulletinDTO> records = convert.getRecords();
        //查询发行人
        Map<String, Map<String, Object>> publisherByIds = apiRequestService.getPublisherByIds(ids.toString());

        // 所有关联发行人
        StringJoiner mentionComs = new StringJoiner(",");
        // 遍历设置主体发行人详细信息
        for (BulletinDTO dto : records) {
            // 遍历设置标签信息
            dto.getLabels().forEach(e -> e.setName(Optional.ofNullable(allLabel.get(e.getId())).orElse(new LabelDTO()).getName()));

            String mentionCom = dto.getMentionCom();
            Map<String, Object> mainBodyDetail = publisherByIds.get(dto.getMainBody());
            if (mainBodyDetail == null) {
                if (StringUtils.isNotBlank(mentionCom)) {
                    mentionComs.add(mentionCom);
                }
                continue;
            }
            String issuerName = (mainBodyDetail.get("issuer_name") + "").replace("'", "");
            dto.setMainBodyDetail(issuerName);
            // 不为null，从关联发行人中去除主题发行人
            if (StringUtils.isNotBlank(mentionCom)) {
                // 发行人名称
                // 所有关联发行人名称(去掉主体发行人)
                mentionCom = Arrays.stream(mentionCom.replace("'", "").split(",")).map(String::trim)
                    .filter(e -> !issuerName.contains(e)).collect(Collectors.joining(","));
                dto.setMentionCom(mentionCom);
            }
            if (StringUtils.isNotBlank(mentionCom)) {
                mentionComs.add(mentionCom);
            }
        }
        // 查询关联发行人
        if (StringUtils.isNotBlank(mentionComs.toString())) {
            Map<String, Map<String, Object>> publisherByNameMap = apiRequestService.getPublisherByField(mentionComs.toString(), "issuer_name in")
                .values()
                .stream()
                .collect(Collectors.toMap(e -> e.get("issuer_name") + "", e -> e));
            // 设置关联发行人
            for (BulletinDTO dto : records) {
                String mentionCom = dto.getMentionCom();
                List<Map<String, Object>> mentionComDetail = new ArrayList<>();
                for (String s : mentionCom.split(",")) {
                    mentionComDetail.add(publisherByNameMap.get(s));
                }
                dto.setMentionComDetail(mentionComDetail);
            }
        }
        return convert;
    }

    /**
     * 检索公告详情 by id
     *
     * @param id 公告id
     * @return 公告详情
     */
    public BulletinDetailDTO findById(Integer id) {
        // 转换需要的实体
        BulletinDetailBO result = ApiResultDealUtils.dealResult(bulletinService.findById(id));
        BulletinDetailDTO convert = BeansMapper.convert(result, BulletinDetailDTO.class);
        convert.setCreateTime(result.getCreateTime() + "");
        // 翻译发行人字段
        // 发行人id
        String mainBody = convert.getMainBody();
        if (StringUtils.isEmpty(mainBody.trim())) {
            return convert;
        }
        // 翻译标签
        convert.setLabels(labelServiceTransfer.translationNameById(convert.getLabels()));
        return convert;
    }

    /**
     * 公告合规设置
     *
     * @param bulletinOpinionSetDTO 合规设置参数
     * @return 公告id
     */
    public Boolean modifyCompliance(BulletinSetDTO bulletinOpinionSetDTO) {
        return ApiResultDealUtils.dealResult(bulletinService.modifyCompliance(bulletinOpinionSetDTO));
    }

    /**
     * 公告标签绑定
     *
     * @param labelBindSetDTO 绑定标签参数
     * @return 公告id
     */
    public Boolean addLabels(BulletinLabelBindSetWebDTO labelBindSetDTO) {
        return ApiResultDealUtils.dealResult(bulletinService.addLabels(BeansMapper.convert(labelBindSetDTO, BulletinLabelBindSetDTO.class)));
    }

    /**
     * 公告标签移除
     *
     * @param labelBindSetDTO 公告标签移除
     */
    public Boolean removeLabels(BulletinLabelBindSetWebDTO labelBindSetDTO) {
        return ApiResultDealUtils.dealResult(bulletinService.removeLabels(BeansMapper.convert(labelBindSetDTO, BulletinLabelBindDeleteDTO.class)));
    }

}
