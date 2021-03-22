package com.pats.qeubeenewsweb.service.transfer;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.consts.ApiDtoConsts;
import com.pats.qeubeenewsweb.consts.ClassifyConsts;
import com.pats.qeubeenewsweb.consts.MoodConst;
import com.pats.qeubeenewsweb.consts.RedisCacheNamesConst;
import com.pats.qeubeenewsweb.entity.PublicOpinion;
import com.pats.qeubeenewsweb.entity.QbNewsPoSentenceMood;
import com.pats.qeubeenewsweb.entity.bo.LabelDetailBO;
import com.pats.qeubeenewsweb.entity.bo.PublicOpinionDetailsBO;
import com.pats.qeubeenewsweb.entity.bo.PublicOpinionLabelBindBO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBindDeleteServDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBindSetDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBindSetServDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBondsDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDetailDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionDetailsDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionPageQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionPageQueryServDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionSetDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionSetServDTO;
import com.pats.qeubeenewsweb.enums.BondClassificationEnum;
import com.pats.qeubeenewsweb.enums.CHDApiNameAndDataSourceIdEnum;
import com.pats.qeubeenewsweb.enums.IssuerTypeEnum;
import com.pats.qeubeenewsweb.enums.MoodEnum;
import com.pats.qeubeenewsweb.mapper.LabelMapper;
import com.pats.qeubeenewsweb.mapper.QbNewsPoSentenceMoodMapper;
import com.pats.qeubeenewsweb.otherservice.LabelService;
import com.pats.qeubeenewsweb.otherservice.PublicOpinionLabelService;
import com.pats.qeubeenewsweb.otherservice.PublicOpinionService;
import com.pats.qeubeenewsweb.service.ApiDataCacheService;
import com.pats.qeubeenewsweb.service.CDHRestfulApiRequestService;
import com.pats.qeubeenewsweb.service.impl.PublicOpinionServiceWebImpl;
import com.pats.qeubeenewsweb.utils.ApiResultDealUtils;
import com.pats.qeubeenewsweb.utils.StringUtilsX;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.StringJoiner;
import java.util.stream.Collectors;

/**
 * <p>Title: PublicOpinionServiceTransfer</p>
 * <p>Description: PublicOpinionService 调用数据转换类</p>
 *
 * @author :wenjie.pei
 * @version :1.0.0
 * @since :2020.08.20
 */
@Component
public class PublicOpinionServiceTransfer {

    @Autowired
    private PublicOpinionService publicOpinionService;

    @Autowired
    private PublicOpinionLabelService publicOpinionLabelService;

    @Autowired
    private LabelService labelService;

    @Autowired
    private LabelServiceTransfer labelServiceTransfer;

    @Autowired
    private ApiDataCacheService apiRequestService;

    @Autowired
    private CDHRestfulApiRequestService restfulApiRequestService;

    @Autowired
    private LabelMapper labelMapper;

    @Autowired
    private QbNewsPoSentenceMoodMapper qbNewsPoSentenceMoodMapper;

    @Autowired
    private PublicOpinionServiceWebImpl publicOpinionServiceWeb;

    /**
     * 舆情分页接口调用转换处理
     *
     * @param pageQuery 分页检索条件
     * @return 当前页舆情数据
     */
    public IPage<PublicOpinionDTO> findByPage(PublicOpinionPageQueryDTO pageQuery) {
        // 参数转换为DTO
        PublicOpinionPageQueryServDTO ser = BeansMapper.convert(pageQuery, PublicOpinionPageQueryServDTO.class);
        // 调用api并转换结果
        IPage<PublicOpinion> result = ApiResultDealUtils.dealResult(publicOpinionService.findByPage(ser));
        //Map<Integer, List<PublicOpinionLabel>> map = result.getRecords().stream().collect(Collectors.toMap(PublicOpinion::getId, PublicOpinion::getLabels));
        IPage<PublicOpinionDTO> page = BeansMapper.convertPage(result, PublicOpinionDTO.class);
        List<PublicOpinionDTO> records = page.getRecords();
        if (CollectionUtils.isEmpty(records)) {
            return page;
        }
        // 发行人ID
        StringJoiner mainBodyIds = new StringJoiner(",");
        // 需要查询的标签集合
        List<String> bondIds = new ArrayList<>();
        for (PublicOpinionDTO dto : records) {
            // 现有的bond_id字段是财联社的id   所以需要split
            if (StringUtils.isNotBlank(dto.getBondCode())) {
                bondIds.add(dto.getBondCode().split("\\.")[0]);
            }
            // 翻译标签名称
            /*List<LabelDTO> collect = map.get(dto.getId()).stream().map(e -> {
                LabelDTO labelDTO = new LabelDTO();
                labelDTO.setId(e.getLabelId());
                return labelDTO;
            }).collect(Collectors.toList());
            selectLabelList.addAll(collect);
            // 设置标签名称
            dto.setLabels(collect);*/
            //设置翻译好的债券类型
            dto.setBondTypeList(BondClassificationEnum.translation(dto.getBondType()));
            mainBodyIds.add(dto.getMainBody());
        }
        // 查询标签
        //Map<Integer, LabelDTO> allLabel = labelServiceTransfer.translationNameById(selectLabelList).stream().distinct().collect(Collectors.toMap(LabelDTO::getId, e -> e));
        // 查询发行人
        Map<String, Map<String, Object>> publisherByIds = apiRequestService.getPublisherByIds(mainBodyIds.toString());

        // 查询Bond_Key和Listed_Market
        Map<String, List<Map<String, Object>>> allBondListInfoMap = new HashMap<>(0);
        if (bondIds.size() > 0) {
            String conditions = bondIds.stream().collect(Collectors.joining("','", ApiDtoConsts.BOND_ID + " IN ('", "')"));
            allBondListInfoMap = apiRequestService.requestApi(CHDApiNameAndDataSourceIdEnum.BOND_LIST_INFO,
                conditions,
                bondIds.size(),
                ApiDtoConsts.BOND_ID, ApiDtoConsts.BOND_KEY, ApiDtoConsts.LISTED_MARKET).stream().collect(Collectors.groupingBy(e -> e.get(ApiDtoConsts.BOND_ID) + ""));
        }
        // 所有关联发行人
        for (PublicOpinionDTO dto : records) {
            if (StringUtils.isNotBlank(dto.getBondCode())) {
                // 设置Bond_Key和Listed_Market
                List<Map<String, Object>> objectMap = allBondListInfoMap.get(dto.getBondCode().split("\\.")[0]);
                if (objectMap != null && objectMap.size() > 0) {
                    // 因为根据bond_id查询有多个，按名字在比较一下
                    for (Map<String, Object> stringObjectMap : objectMap) {
                        if (dto.getReferBond().equals(stringObjectMap.get(ApiDtoConsts.SHORT_NAME))) {
                            dto.setReferBondKey(stringObjectMap.get(ApiDtoConsts.BOND_KEY) + "");
                            dto.setReferBondlistedmarket(stringObjectMap.get(ApiDtoConsts.LISTED_MARKET) + "");
                            break;
                        }
                    }
                }
            }
            // 遍历设置标签信息
            //dto.getLabels().forEach(e -> e.setName(Optional.ofNullable(allLabel.get(e.getId())).orElse(new LabelDTO()).getName()));

            // 设置主体发行人详细信息
            String mentionCom = dto.getMentionCom();
            Map<String, Object> mainBodyDetail = publisherByIds.get(dto.getMainBody());
            if (mainBodyDetail == null) {
                continue;
            }
            dto.setMainBodyDetail(mainBodyDetail.get(ApiDtoConsts.ISSUER_NAME_KEY) + "");
            // 不为null，从关联发行人中去除主题发行人
            if (StringUtils.isNotBlank(mentionCom)) {
                // 发行人名称
                String issuerName = (mainBodyDetail.get(ApiDtoConsts.ISSUER_NAME_KEY) + "").replace("'", "");
                // 所有关联发行人名称(去掉主体发行人)
                mentionCom = Arrays.stream(mentionCom.replace("'", "").split(",")).map(String::trim)
                    .filter(e -> !issuerName.contains(e)).collect(Collectors.joining(","));
                dto.setMentionCom(mentionCom);
            }
        }
        return page;
    }

    /**
     * 舆情详情接口调用转换处理
     *
     * @param id 舆情id
     * @return 舆情详情
     */
    @Cacheable(value = RedisCacheNamesConst.PUBLIC_OPINION_FIND_BY_ID, key = "#id")
    public PublicOpinionDetailsDTO findById(Integer id) {
        PublicOpinionDetailsBO detail = ApiResultDealUtils.dealResult(publicOpinionService.findById(id));

        if (detail.getId() == null) {
            return new PublicOpinionDetailsDTO();
        }
        //获取内容和摘要
        String summary = detail.getSummary();
        String content = detail.getContent();
        //情绪句子
        QueryWrapper<QbNewsPoSentenceMood> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("public_opinion_id", id);
        queryWrapper.select("content", "mood");
        List<QbNewsPoSentenceMood> qbNewsPoSentenceMoods = Optional.ofNullable(qbNewsPoSentenceMoodMapper.selectList(queryWrapper)).orElse(new ArrayList<>());
        //修改结果集中情绪句子颜色
        for (QbNewsPoSentenceMood qbNewsPoSentenceMood : qbNewsPoSentenceMoods) {
            //情绪级别
            Integer rank = MoodEnum.getRank(qbNewsPoSentenceMood.getMood());
            //情绪值级别为1时,变成红色
            if (rank.equals(MoodEnum.LEVEL1.getRank())) {
                //情绪句子内容
                String moodContent = qbNewsPoSentenceMood.getContent();
                //去掉特殊字符
                moodContent = StringUtilsX.subStr(moodContent);
                content = content.replace(moodContent, String.format(MoodConst.SENTENCE, MoodEnum.LEVEL1.getColor(), MoodEnum.LEVEL1.getRGB(), moodContent));
            }
        }
        //高亮标签,先查询出所有标签
        List<LabelBondsDTO> bonds = labelMapper.findBonds(id);
        //获取修改后的内容和摘要
        List<Map<String, Object>> prioritization = publicOpinionServiceWeb.prioritization(bonds, summary, content, false);
        //如果prioritization不为空，则获取修改标签样赛后的摘要和内容
        if (!CollectionUtils.isEmpty(prioritization)) {
            summary = StringUtilsX.objectToString(prioritization.get(0).get("summary"));
            content = StringUtilsX.objectToString(prioritization.get(0).get("content"));
        }
        //设置修改后的摘要
        detail.setSummary(summary);
        //设置为更改后的内容
        detail.setContent(content);
        PublicOpinionDetailsDTO dto = BeansMapper.convert(detail, PublicOpinionDetailsDTO.class);
        if (StringUtils.isNotBlank(dto.getMentionCom())) {
            dto.setMentionCom(dto.getMentionCom().replace("'", ""));
        }
        // 翻译发行人相关字段
        if (StringUtils.isNotBlank(dto.getIssuerName())) {
            String issuerName = dto.getIssuerName();
            // 不为null，从关联发行人中去除主题发行人
            String mentionCom = dto.getMentionCom();
            if (StringUtils.isNotBlank(mentionCom)) {
                // 发行人名称
                // 所有关联发行人名称(去掉主体发行人)
                mentionCom = Arrays.stream(mentionCom.split(",")).map(String::trim)
                    .filter(e -> !issuerName.contains(e)).collect(Collectors.joining(","));
                dto.setMentionCom(mentionCom);
            }
            dto.setMainBodyDetail(issuerName);
        }
        //设置翻译好的债券类型
        dto.setBondTypeList(BondClassificationEnum.translation(dto.getBondType()));
        // 设置标签名称
        List<LabelDTO> dtoList = detail.getLabels().stream().map(e -> {
            LabelDTO labelDTO = new LabelDTO();
            labelDTO.setId(e.getLabelId());
            return labelDTO;
        }).collect(Collectors.toList());
        dto.setLabels(labelServiceTransfer.translationNameById(dtoList));

        if (StringUtils.isBlank(dto.getMentionCom())) {
            return dto;
        }
        // 查询issuer_type字段
        Map<String, Map<String, Object>> publisherByNameMap = apiRequestService.getPublisherByField(dto.getMentionCom(), ApiDtoConsts.ISSUER_NAME_KEY + " in")
            .values()
            .stream()
            .collect(Collectors.toMap(e -> e.get(ApiDtoConsts.INSTITUTION_CODE) + "", e -> {
                Map<String, Object> hashMap = new HashMap<>(16);
                // 发行人性质
                hashMap.put("issuerType", IssuerTypeEnum.translation(e.get(ApiDtoConsts.ISSUER_TYPE) + ""));
                // 发行人名称
                hashMap.put("issuerName", e.get(ApiDtoConsts.ISSUER_NAME_KEY));
                hashMap.put(ApiDtoConsts.ISSUERCODE, e.get(ApiDtoConsts.INSTITUTION_CODE));
                return hashMap;
            }));
        // 处理流动性评级
        publisherByNameMap = this.processFluidity(publisherByNameMap);
        // 查询判断是否发行过债券  和  发行人主体评级
        String conditions = publisherByNameMap.keySet().stream().collect(Collectors.joining("','", ApiDtoConsts.ISSUER_CODE + " in ('", "')"));
        Map<String, List<Map<String, Object>>> bondMap = apiRequestService.requestApi(CHDApiNameAndDataSourceIdEnum.BOND2
            , conditions, publisherByNameMap.keySet().size(), "Issuer_Rating_Current", ApiDtoConsts.ISSUER_CODE)
            .stream().collect(Collectors.groupingBy(e -> e.get(ApiDtoConsts.ISSUER_CODE) + ""));
        // 遍历设置相关值
        for (Map.Entry<String, Map<String, Object>> entry : publisherByNameMap.entrySet()) {
            String key = entry.getKey();
            Map<String, Object> value = entry.getValue();
            // 判断是否发行过
            List<Map<String, Object>> maps = bondMap.get(key);
            boolean b = maps != null && maps.size() > 0;
            value.put("isIssueBonds", b);
            value.put("issuerRatingCurrent", "");
            if (b) {
                // 主体评级
                value.put("issuerRatingCurrent", maps.get(0).get("Issuer_Rating_Current"));
            }
        }
        dto.setMentionComDetail(new ArrayList<>(publisherByNameMap.values()));
        // 设置listmarket
        String bondIdWhere = "bond_id = '" + (dto.getBondCode().split("\\.")[0]) + "'";
        List<Map<String, Object>> maps = apiRequestService.requestApi(CHDApiNameAndDataSourceIdEnum.BOND_LIST_INFO,
            bondIdWhere,
            10,
            ApiDtoConsts.BOND_ID, ApiDtoConsts.BOND_KEY, ApiDtoConsts.LISTED_MARKET);
        // 因为根据bond_id查询有多个，按名字在比较一下
        for (Map<String, Object> map : maps) {
            if (dto.getReferBond().equals(map.get(ApiDtoConsts.SHORT_NAME))) {
                dto.setReferBondKey(map.get(ApiDtoConsts.BOND_KEY) + "");
                dto.setReferBondlistedmarket(map.get(ApiDtoConsts.LISTED_MARKET) + "");
                break;
            }
        }
        return dto;
    }

    /**
     * 处理流动性评级
     *
     * @param data 数据
     * @return 结果
     */
    public Map<String, Map<String, Object>> processFluidity(Map<String, Map<String, Object>> data) {
        // 查询发行人评分score   和   评分等级scoreLevel（因issuerCode查询会有多条记录，取时间最近一条，是请求API，无法修改SQL，故只能循环查询）
        String condition = data.keySet().stream().collect(Collectors.joining("','", ApiDtoConsts.ISSUERCODE + " in ('", "')"));
        Map<String, List<Map<String, Object>>> issuerScore = apiRequestService.requestApi(CHDApiNameAndDataSourceIdEnum.QBWEB_LIQUDITY_STATISTIC_ISSUER_SCORE,
            condition, data.keySet().size(), ApiDtoConsts.ISSUERCODE, ApiDtoConsts.SCORE, ApiDtoConsts.SCORELEVEL)
            .stream().collect(Collectors.groupingBy(e -> e.get(ApiDtoConsts.ISSUERCODE) + ""));
        // 循环设置评分，当缓存没有，就会去请求API（因为可能会出现缺数据的情况）
        for (Map.Entry<String, Map<String, Object>> entry : data.entrySet()) {
            // 一天的评级可能会出现多个，默认取issuerType为1的（信用债），没有取2（CDN债）
            List<Map<String, Object>> list = Optional.ofNullable(issuerScore.get(entry.getKey())).orElse(new ArrayList<>());
            Map<String, Object> map = null;
            for (Map<String, Object> e : list) {
                String issuerType = e.get("issuerType") + "";
                if ("1".equals(issuerType)) {
                    map = e;
                }
            }
            // 为null，设置默认值
            if (map == null && list.size() > 0) {
                map = list.get(0);
            }
            // 相关企业MAP
            Map<String, Object> map1 = entry.getValue();
            map1.put(ApiDtoConsts.SCORE, "");
            map1.put(ApiDtoConsts.SCORELEVEL, "");
            if (map == null) {
                condition = String.format(ApiDtoConsts.ISSUERCODE + " = '%s' order by statisticDate desc", entry.getKey());
                List<Map<String, Object>> maps = restfulApiRequestService.requestApi(CHDApiNameAndDataSourceIdEnum.QBWEB_LIQUDITY_STATISTIC_ISSUER_SCORE
                    , condition, 1, 1, ApiDtoConsts.ISSUERCODE, ApiDtoConsts.SCORE, ApiDtoConsts.SCORELEVEL);
                if (maps != null && maps.size() > 0) {
                    map = maps.get(0);
                } else {
                    continue;
                }
            }
            // 发行人评分score   和   评分等级scoreLevel
            map1.put(ApiDtoConsts.SCORE, map.get(ApiDtoConsts.SCORE));
            map1.put(ApiDtoConsts.SCORELEVEL, map.get(ApiDtoConsts.SCORELEVEL));
        }
        return data;
    }

    /**
     * 合规设置接口调用转换处理
     *
     * @param setParam 合规设置参数
     * @return 舆情id
     */
    public Integer modifyCompliance(PublicOpinionSetDTO setParam) {
        PublicOpinionSetServDTO paramDTO = BeansMapper.convert(setParam, PublicOpinionSetServDTO.class);
        return ApiResultDealUtils.dealResult(publicOpinionService.modifyCompliance(paramDTO));
    }


    /**
     * 舆情标签绑定接口调用转换处理
     *
     * @param labelBindSetDTO 绑定标签参数
     * @return 舆情id
     */
    public boolean addLabels(LabelBindSetDTO labelBindSetDTO) {
        LabelBindSetServDTO dto = BeansMapper.convert(labelBindSetDTO, LabelBindSetServDTO.class);
        int yes = ClassifyConsts.LabelClassifyConsts.YES;
        for (PublicOpinionLabelBindBO bo : dto.getLabelBind()) {
            // 绑定标签集合
            List<LabelDetailBO> labels = bo.getLabels();
            Iterator<LabelDetailBO> iterator = labels.iterator();
            // 需要新增的标签
            List<LabelDetailBO> labelInsertS = new ArrayList<>();
            while (iterator.hasNext()) {
                LabelDetailBO next = iterator.next();
                //  当id为null时先新增标签
                if (next.getId() == null) {
                    // 标签显示状态为2
                    next.setClassify(yes);
                    // 手动添加标签
                    next.setTypeId(66);
                    labelInsertS.add(next);
                    iterator.remove();
                }
            }
            // 新增集合大于0，新增
            if (labelInsertS.size() > 0) {
                List<LabelDetailDTO> dtoList = BeansMapper.convertList(labelInsertS, LabelDetailDTO.class);
                List<LabelDetailBO> list = ApiResultDealUtils.dealResult(labelService.saveOrUpdateBatch(dtoList));
                // 将新增好的标签重新放入绑定标签集合
                labels.addAll(list);
            }
        }
        ApiResultDealUtils.dealResult(publicOpinionLabelService.addLabels(dto));
        return true;
    }

    /**
     * 删除舆情标签接口 调用转换处理
     *
     * @param labelBindSetDTO 绑定标签参数
     * @return 舆情id
     */
    public boolean removeLabels(LabelBindDeleteServDTO labelBindSetDTO) {
        ApiResultDealUtils.dealResult(publicOpinionLabelService.removeLabels(labelBindSetDTO));
        return true;
    }

}