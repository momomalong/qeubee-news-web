package com.pats.qeubeenewsweb.mq.consumer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.pats.qeubeenewsweb.consts.ApiDtoConsts;
import com.pats.qeubeenewsweb.consts.ApiTypeConst;
import com.pats.qeubeenewsweb.consts.ClassifyConsts;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;
import com.pats.qeubeenewsweb.consts.ListedMarketConst;
import com.pats.qeubeenewsweb.consts.RabbitMQPushMsgTypeConst;
import com.pats.qeubeenewsweb.consts.TreadExecutorConfigConst;
import com.pats.qeubeenewsweb.entity.HonganArticleNews;
import com.pats.qeubeenewsweb.entity.HonganArticleStockRelation;
import com.pats.qeubeenewsweb.entity.HonganBmSecurityRelation;
import com.pats.qeubeenewsweb.entity.Label;
import com.pats.qeubeenewsweb.entity.PublicOpinion;
import com.pats.qeubeenewsweb.entity.QbNewsPoSentenceMood;
import com.pats.qeubeenewsweb.entity.QbNewsSpBulletin;
import com.pats.qeubeenewsweb.entity.QbNewsSpBulletinBond;
import com.pats.qeubeenewsweb.entity.dto.apidto.Bond2DTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.CDHRequestDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.InstitutionDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.IssuerInfoDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.PBondListInfoDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBondsDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.LabelBackDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.LabelMQDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionDetailsDTO;
import com.pats.qeubeenewsweb.entity.dto.publicopinion.PublicOpinionSentenceDTO;
import com.pats.qeubeenewsweb.enums.CHDApiNameAndDataSourceIdEnum;
import com.pats.qeubeenewsweb.enums.LabelTypeEnum;
import com.pats.qeubeenewsweb.enums.PoOrBtLabelEnum;
import com.pats.qeubeenewsweb.logic.IQbNewsSpBulletinBondLogic;
import com.pats.qeubeenewsweb.logic.PublicOpinionLogic;
import com.pats.qeubeenewsweb.logic.QbNewsSpBulletinLogic;
import com.pats.qeubeenewsweb.mapper.LabelMapper;
import com.pats.qeubeenewsweb.mq.provider.QeubeeNewsProvider;
import com.pats.qeubeenewsweb.service.ApiDataCacheService;
import com.pats.qeubeenewsweb.service.IHonganArticleNewsService;
import com.pats.qeubeenewsweb.service.IHonganArticleStockRelationService;
import com.pats.qeubeenewsweb.service.IHonganBmSecurityRelationService;
import com.pats.qeubeenewsweb.service.IQbNewsLabelBondIssuerInfoService;
import com.pats.qeubeenewsweb.service.IQbNewsPoSentenceMoodService;
import com.pats.qeubeenewsweb.service.LabelWebService;
import com.pats.qeubeenewsweb.service.PublicOpinionWebService;
import com.pats.qeubeenewsweb.utils.LocalDateTimeUtils;
import com.pats.qeubeenewsweb.utils.PrintJsonUtils;
import com.pats.qeubeenewsweb.utils.StringUtilsX;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.StringJoiner;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.stream.Collectors;


/**
 * 消息消费类
 *
 * @author mqt
 * @date 2020/11/27 17:03
 */
@Component
@Slf4j
public class QeubeeNewsReceiver {

    /**
     * 存储最近两百条新闻，用于短时间内的去重
     */
    private final static LinkedBlockingQueue<String> NEWS_IDEMPOTENCE_QUEUE = new LinkedBlockingQueue<>(400);

    /**
     * 类型为BD的才是需要的新闻
     */
    private final static String BD = "BD";

    @Autowired
    private QeubeeNewsProvider qeubeeNewsProvider;

    @Autowired
    private PublicOpinionLogic publicOpinionService;

    @Autowired
    private IQbNewsSpBulletinBondLogic bulletinBondLogic;

    @Autowired
    private QbNewsSpBulletinLogic bulletinService;

    @Autowired
    private IHonganArticleNewsService honganArticleNewsService;

    @Autowired
    private IHonganArticleStockRelationService honganArticleStockRelationService;

    @Autowired
    private IHonganBmSecurityRelationService securityRelationService;

    @Autowired
    private ApiDataCacheService apiDataCacheService;

    @Autowired
    private RabbitTemplate rabbitTemplate;

    @Autowired
    private LabelWebService labelWebService;

    @Autowired
    private PublicOpinionWebService publicOpinionWebService;

    @Autowired
    private IQbNewsPoSentenceMoodService iQbNewsPoSentenceMoodService;

    @Autowired
    private IQbNewsLabelBondIssuerInfoService bondIssuerInfoService;


    @Autowired
    private LabelMapper labelMapper;

    @Value("${rabbit.qeubee.exchange.newsTopicExchange}")
    private String topicExchange;

    @Value("${rabbit.qeubee.routingkey.labelRoutingKey}")
    private String labelRoutingKey;

    /**
     * 舆情message消费 舆情message tag: publicOpinion
     *
     * @param message 舆情message
     */
    @RabbitListener(queues = "${rabbit.qeubee.queue.poNewsQueue}", executor = TreadExecutorConfigConst.THREAD_POOL_NAME_PUBLIC_OPINION)
    public void receivePublicOpinion(String message) {
        try {
            JSONObject data = JSONObject.parseObject(message);
            JSONObject ackMsgHead = data.getJSONObject("AckMsgHead");
            String msgType = ackMsgHead.getString("ope");
            Object o = data.get("AckMsgBody");
            if (o == null) {
                return;
            }
            JSONObject body = JSONObject.parseObject(o.toString());
            Object type = body.get("type");
            // 不为BD不是新闻,直接返回
            if (!BD.equals(type)) {
                return;
            }
            // 因为后续查询使用的是从库，同步时间有延迟
            Thread.sleep(3000);
            String newsId = StringUtilsX.objectToString(body.get("news_id"));
            String relatedId = StringUtilsX.objectToString(body.get("related_id"));
            String bondId = StringUtils.leftPad(relatedId, 6, "0");
            // 查询这条新闻
            QueryWrapper<HonganArticleNews> wrapper = new QueryWrapper<>();
            wrapper.eq("news_id", newsId);
            wrapper.last("limit 1");
            HonganArticleNews news = honganArticleNewsService.getOne(wrapper);
            if (news == null) {
                return;
            }
            log.info("consumer 舆情：{}", message);
            if (ApiTypeConst.DELETE.equals(msgType)) {
                QueryWrapper<PublicOpinion> updateWrapper = new QueryWrapper<>();
                updateWrapper.eq(DataBaseSourceConst.COL_PUBLIC_OPINION_NEWS_ID, newsId);
                List<PublicOpinion> list = publicOpinionService.list(updateWrapper);
                if (!CollectionUtils.isEmpty(list)) {
                    publicOpinionService.removeByIds(list.stream().map(PublicOpinion::getId).collect(Collectors.toSet()));
                    //原版存在的代码，新版去除
                    /*PublicOpinion opinion = list.get(0);
                    opinion.setCompliance(ClassifyConsts.NO);
                    qeubeeNewsProvider.pushToFront(opinion, RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_PUBLIC_OPINION);*/
                }
            } else if (ApiTypeConst.INSERT.equals(msgType)) {
                if (NEWS_IDEMPOTENCE_QUEUE.contains(newsId)
                    || NEWS_IDEMPOTENCE_QUEUE.contains(StringUtilsX.replaceAllSpecialCharacters(news.getTitle()))) {
                    log.info("This news already exists，news_id: {} ", newsId);
                    return;
                }
                // 添加这条新闻到去重队列
                while (!NEWS_IDEMPOTENCE_QUEUE.offer(newsId)) {
                    NEWS_IDEMPOTENCE_QUEUE.poll();
                }
                while (!NEWS_IDEMPOTENCE_QUEUE.offer(StringUtilsX.replaceAllSpecialCharacters(news.getTitle()))) {
                    NEWS_IDEMPOTENCE_QUEUE.poll();
                }
                // set值
                PublicOpinion publicOpinion = new PublicOpinion();
                BeanUtils.copyProperties(news, publicOpinion);
                publicOpinion.setNewsId(newsId);
                // 查询涉及主体
                QueryWrapper<HonganArticleStockRelation> stockRelationQueryWrapper = new QueryWrapper<>();
                stockRelationQueryWrapper.eq("news_id", newsId);
                stockRelationQueryWrapper.eq("type", "CP");
                stockRelationQueryWrapper.select("related_name relatedName");
                String mentionCom = String.join(",", honganArticleStockRelationService.listObjs(stockRelationQueryWrapper, Object::toString));
                // 查询bond_code 和 listedMarket
                QueryWrapper<HonganBmSecurityRelation> securityRelationQueryWrapper = new QueryWrapper<>();
                securityRelationQueryWrapper.eq("bond_id", bondId);
                securityRelationQueryWrapper.in("exchange_cd", ListedMarketConst.XIBE, ListedMarketConst.XSHG, ListedMarketConst.XSHE);
                securityRelationQueryWrapper.orderByDesc("id");
                securityRelationQueryWrapper.last("limit 1");
                // 使用case转换listed_market
                securityRelationQueryWrapper.select("ticker_symbol bondId, CASE exchange_cd WHEN 'XIBE' THEN 'CIB'WHEN 'XSHG' THEN 'SSE'WHEN 'XSHE' THEN 'SZE'ELSE exchange_cd END listedMarket");
                Map<String, Object> map = securityRelationService.getMap(securityRelationQueryWrapper);
                bondId = StringUtilsX.objectToString(map.get("bondId"));
                publicOpinion.setBondId(bondId);
                String listedMarket = StringUtilsX.objectToString(map.get("listedMarket"));
                // 这里是bond_id其实是bond_code,之所以用等值，因为使用的是本地缓存，
                // 模拟API接口做的sql查询，没办法使用mysql 的函数，后续程序会split判断
                String conditions = String.format("bond_id = '%s' and listed_market = '%s'", bondId, listedMarket);
                CDHRequestDTO requestDTO = new CDHRequestDTO(CHDApiNameAndDataSourceIdEnum.P_BOND_LIST_INFO, conditions, 1);
                List<PBondListInfoDTO> pBondListInfoDtoS = apiDataCacheService.request(requestDTO, PBondListInfoDTO.class);
                if (!CollectionUtils.isEmpty(pBondListInfoDtoS)) {
                    PBondListInfoDTO bondListInfo = pBondListInfoDtoS.get(0);
                    publicOpinion.setBondCode(bondListInfo.getBondId());
                    publicOpinion.setBondKey(bondListInfo.getBondKey());
                    publicOpinion.setReferBond(bondListInfo.getShortName());
                    // 查询主体发行人
                    requestDTO.setApiName(CHDApiNameAndDataSourceIdEnum.BOND2_CACHED_FOR_QBNEWS.getApiName());
                    requestDTO.setDataSourceId(CHDApiNameAndDataSourceIdEnum.BOND2_CACHED_FOR_QBNEWS.getDataSourceId());
                    requestDTO.setConditions(String.format("Bond_Key = '%s'", bondListInfo.getBondKey()));
                    List<Bond2DTO> bond2DtoList = apiDataCacheService.request(requestDTO, Bond2DTO.class);
                    if (!CollectionUtils.isEmpty(bond2DtoList)) {
                        Bond2DTO bond = bond2DtoList.get(0);
                        // bondType(bondSubtype 有值则添加bondType,然后在判断entCor)
                        StringJoiner bondType = new StringJoiner("_");
                        String bondSubtype = bond.getBondSubtype();
                        if (StringUtils.isNotBlank(bondSubtype)) {
                            bondType.add(bondSubtype);
                            String entCor = bond.getEntCor();
                            if (StringUtils.isNotBlank(entCor)) {
                                bondType.add(entCor + "");
                            }
                        }
                        publicOpinion.setBondType(bondType.toString());
                        // mainBody
                        requestDTO.setApiName(CHDApiNameAndDataSourceIdEnum.P_ISSUER_INFO.getApiName());
                        requestDTO.setDataSourceId(CHDApiNameAndDataSourceIdEnum.P_ISSUER_INFO.getDataSourceId());
                        requestDTO.setConditions(String.format("institution_code = '%s'", bond.getIssuerCode()));
                        List<IssuerInfoDTO> mainBodyRequest = apiDataCacheService.request(requestDTO, IssuerInfoDTO.class);
                        if (!CollectionUtils.isEmpty(mainBodyRequest)) {
                            IssuerInfoDTO objectMap = mainBodyRequest.get(0);
                            // 发行人名称
                            String issuerName = objectMap.getIssuerName();
                            // 在涉及发行人中去除主题发行人
                            mentionCom = mentionCom.replace(" ", "").replace(issuerName + ",", "").replace(issuerName, "");
                            publicOpinion.setMentionCom(mentionCom);
                            publicOpinion.setMainBody(objectMap.getId());
                            publicOpinion.setIssuerName(issuerName);
                            String issuerCode = objectMap.getIssuerCode();
                            publicOpinion.setIssuerCode(issuerCode);

                            //查询发行人简称
                            requestDTO.setApiName(CHDApiNameAndDataSourceIdEnum.INSTITUTION.getApiName());
                            requestDTO.setDataSourceId(CHDApiNameAndDataSourceIdEnum.INSTITUTION.getDataSourceId());
                            requestDTO.setConditions(String.format("Institution_Code = '%s'", issuerCode));
                            List<InstitutionDTO> list = apiDataCacheService.request(requestDTO, InstitutionDTO.class);
                            if (!CollectionUtils.isEmpty(list)) {
                                String[] split = mentionCom.split(",");
                                //提及企业简称
                                requestDTO.setApiName(CHDApiNameAndDataSourceIdEnum.INSTITUTION.getApiName());
                                requestDTO.setDataSourceId(CHDApiNameAndDataSourceIdEnum.INSTITUTION.getDataSourceId());
                                requestDTO.setConditions(String.format("Full_Name_C in (%s)", mentionCom));
                                requestDTO.setPageSize(split.length);
                                String mentionComShortName = apiDataCacheService.request(requestDTO, InstitutionDTO.class).stream()
                                        .filter(e ->!StringUtils.isEmpty(e.getShortName())).map(InstitutionDTO::getShortName)
                                        .collect(Collectors.joining(","));
                                InstitutionDTO institutionDTO = list.get(0);
                                // 发行人简称
                                String shortName = institutionDTO.getShortName();
                                // 在涉及发行人中去除主题发行人
                                mentionComShortName = mentionComShortName.replaceAll(" ", "").replaceAll(shortName + ",", "").replaceAll(shortName, "");
                                publicOpinion.setShortName(shortName);
                                publicOpinion.setMentionComShortName(mentionComShortName);
                            }
                        }
                    }
                }
                // 设置为不合规（处理玩标签、情绪再设置为合格）
                publicOpinion.setCompliance(ClassifyConsts.NO);
                // 保存新闻
                publicOpinion.setUpdateTime(news.getModifiedTime().toString());
                publicOpinion.setCreateTime(news.getCreateTime().toString());
                publicOpinionService.save(publicOpinion);
                LabelMQDTO labelMqDTO = new LabelMQDTO(publicOpinion.getId().toString(), news.getTitle(), news.getSummary(), news.getContent(), PoOrBtLabelEnum.publicOpinion);
                // 推送给PY服务
                String s = JSONObject.toJSONString(labelMqDTO);
                log.info("rabbit public opinion label produce message : {}", s);
                rabbitTemplate.convertAndSend(topicExchange, labelRoutingKey, s);
            }
        } catch (Exception e) {
            JSONObject jsonObject = PrintJsonUtils.ofJson(e.getMessage(), e.getStackTrace());
            log.error(" param is {}, error message :{}", message, jsonObject);
        }
    }

    /**
     * 处理新闻变动，上游可能会处理敏感词文章
     *
     * @param map message
     */
    @JmsListener(destination = "${qpid.queue.qb_public_opinion}")
    public void receiveNewsUpdateConsumer(Map<String, Object> map) {
        if(CollectionUtils.isEmpty(map)){
            return;
        }
        log.info("receiveNewsUpdateConsumer：{}", map);
        try {
            JSONObject data = new JSONObject(map);
            JSONObject ackMsgHead = data.getJSONObject("AckMsgHead");
            String msgType = ackMsgHead.getString("ope");
            JSONObject body = data.getJSONObject("AckMsgBody");
            String newsIdConst = DataBaseSourceConst.COL_PUBLIC_OPINION_NEWS_ID;
            String newsId = body.getString(newsIdConst);
            UpdateWrapper<PublicOpinion> wrapper = new UpdateWrapper<>();
            wrapper.eq(newsIdConst, newsId);
            if (ApiTypeConst.DELETE.equals(msgType)) {
                List<PublicOpinion> list = publicOpinionService.list(wrapper);
                if (!CollectionUtils.isEmpty(list)) {
                    publicOpinionService.remove(wrapper);
                    list.forEach(e -> qeubeeNewsProvider.pushToFront(e.getId(), RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_PUBLIC_OPINION_COMPLIANCE));
                }
            } else if (ApiTypeConst.UPDATE.equals(msgType)) {
                PublicOpinion publicOpinion = body.toJavaObject(PublicOpinion.class);
                publicOpinion.setId(null);
                publicOpinionService.update(publicOpinion, wrapper);
            }
        } catch (Exception e) {
            log.error("process news change error:{}", PrintJsonUtils.ofJson(e.getMessage(), e.getStackTrace()));
        }
    }

    /**
     * 处理PY服务处理好的数据
     *
     * @param message message
     */
    @RabbitListener(queues = "${rabbit.qeubee.queue.labelBackQueue}", executor = TreadExecutorConfigConst.THREAD_POOL_NAME_PUBLIC_OPINION)
    public void receiveLabelConsumer(String message) {
        try {
            log.info("处理label和情绪：{}", message);
            LabelBackDTO labelBackDTO = JSONObject.parseObject(message, LabelBackDTO.class);
            if (null == labelBackDTO) {
                return;
            }
            if (PoOrBtLabelEnum.publicOpinion.equals(labelBackDTO.getType())) {
                this.processPoLabel(labelBackDTO);
            } else if (PoOrBtLabelEnum.bulletin.equals(labelBackDTO.getType())) {
                this.processBulletinLabel(labelBackDTO);
            }
        } catch (Exception e) {
            log.info("process label or mood error：{}", PrintJsonUtils.ofJson(e.getMessage(), e.getStackTrace()));
        }
    }

    /**
     * 暂时只修改名称 不保存标签
     * 处理公告标签(修改发行人后推送给前端)
     * 拿到跑出的标签名称，查询发行人code
     *
     * @param labelBackDTO 数据
     */
    private void processBulletinLabel(LabelBackDTO labelBackDTO) {
        Integer id = labelBackDTO.getId();
        if (id == null) {
            return;
        }
        QbNewsSpBulletin byId = bulletinService.getById(id);
        byId.setCompliance(ClassifyConsts.YES);
        // 当发行人名称为null 时才修改，因为可能已存在发行人不需要跑标签,
        // 先查询全称拿到code，否则查询简称拿到code和全称
        if (StringUtils.isBlank(byId.getIssuerName())) {
            Map<Integer, List<LabelDTO>> map = labelBackDTO.getLabels().stream().collect(Collectors.groupingBy(LabelDTO::getId));
            String name = null, institutionCode = null;
            Integer fullIssuerTypeId = LabelTypeEnum.B_FULL_ISSUER.getTypeId();
            Integer bIssuerTypeId = LabelTypeEnum.B_ISSUER.getTypeId();
            if (!CollectionUtils.isEmpty(map.get(fullIssuerTypeId)) && StringUtils.isNotBlank(map.get(fullIssuerTypeId).get(0).getName())) {
                name = map.get(fullIssuerTypeId).get(0).getName();
                institutionCode = getIssuerCodeByName(ApiDtoConsts.FULL_NAME_C, name).getInstitutionCode();
            } else if (!CollectionUtils.isEmpty(map.get(bIssuerTypeId)) && StringUtils.isNotBlank(map.get(bIssuerTypeId).get(0).getName())) {
                InstitutionDTO dto = getIssuerCodeByName(ApiDtoConsts.SHORT_NAME_C, map.get(bIssuerTypeId).get(0).getName());
                institutionCode = dto.getInstitutionCode();
                name = dto.getFullName();
            }
            // 设置值
            if (StringUtils.isNotBlank(institutionCode)) {
                byId.setIssuerName(name);
                byId.setInstitutionCode(institutionCode);
            }
        }
        bulletinService.updateById(byId);
        // 推送到前端 todo 前端没做完，这期暂时不推送
//        qeubeeNewsProvider.pushToFront(JSONObject.parseObject(JSONObject.toJSONString(byId)), RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_BULLETIN);
    }

    private InstitutionDTO getIssuerCodeByName(String nameColumn, String name) {
        String conditions = nameColumn + " = '" + name + "'";
        List<InstitutionDTO> list = apiDataCacheService.request(new CDHRequestDTO(CHDApiNameAndDataSourceIdEnum.INSTITUTION, conditions, 1), InstitutionDTO.class);
        if (!CollectionUtils.isEmpty(list)) {
            return list.get(0);
        }
        return new InstitutionDTO();
    }

    /**
     * 处理舆情标签
     *
     * @param labelBackDTO 数据
     */
    private void processPoLabel(LabelBackDTO labelBackDTO) {
        Integer id = labelBackDTO.getId();
        // 整体评分
        String articleScore = labelBackDTO.getArticleScore();
        // 处理标签
        String risk = this.processLabels(id, labelBackDTO.getLabels());
        // 处理句子评分
        this.processSentenceScore(id, labelBackDTO.getSentiment());
        //修改新闻状态
        PublicOpinion opinion = new PublicOpinion();
        opinion.setId(id);
        //设置风险类型
        opinion.setRisk(risk);
        // 设置为合规
        opinion.setCompliance(ClassifyConsts.YES);
        if (StringUtils.isNotBlank(articleScore)) {
            opinion.setArticleScore((int) Double.parseDouble(articleScore));
        }
        publicOpinionService.updateById(opinion);

        //通过新闻id查询舆情详情
        PublicOpinionDetailsDTO byId = publicOpinionWebService.findById(id);
        //将其转化为JSON对象
        JSONObject jsonObject = JSON.parseObject(JSONObject.toJSONString(byId));
        //推送json数据给前端
        log.info("rabbit mq pushToFront 舆情，{}", jsonObject);
        qeubeeNewsProvider.pushToFront(jsonObject, RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_PUBLIC_OPINION);
    }


    /**
     * 处理舆情情绪句子
     *
     * @param id        id
     * @param sentiment 情绪
     */
    private void processSentenceScore(Integer id, List<PublicOpinionSentenceDTO> sentiment) {
        //获取情绪对象集合
        List<QbNewsPoSentenceMood> list = new ArrayList<>();
        // 不保存评分为50的情绪句子
        sentiment.forEach(item -> {
            if (item.getScore() != 50) {
                QbNewsPoSentenceMood sentence = new QbNewsPoSentenceMood();
                sentence.setPublicOpinionId(id);
                sentence.setContent(StringUtilsX.subStr(item.getSentence()));
                sentence.setMood(item.getScore());
                sentence.setCreateTime(LocalDateTime.now());
                sentence.setUpdateTime(LocalDateTime.now());
                list.add(sentence);
            }
        });
        //保存
        iQbNewsPoSentenceMoodService.saveBatch(list);
    }


    /**
     * 处理舆情标签
     *
     * @param id     id
     * @param labels 标签
     * @return String 风险类型标签名
     */
    public String processLabels(Integer id, List<LabelDTO> labels) {
        //标签集
        List<Label> label = labelWebService.processIsInsertLabel(labels);
        //添加新闻关联
        publicOpinionWebService.publicOpinionJoinLabel(id, label);
        // 缓存债券标签详细信息到redis
        List<LabelBondsDTO> bonds = labelMapper.findBonds(id);
        bondIssuerInfoService.processDetailBond(bonds);
        //获取第一个风险类型标签
        String risk = "";
        for (Label label1 : label) {
            //获取标签的typeid
            Integer typeId = label1.getTypeId();
            //当标签的typeid不等于62，63，66,69时，取合规性为2的第一个标签
            if (!typeId.equals(LabelTypeEnum.USER_CREATE.getTypeId()) &&
                !typeId.equals(LabelTypeEnum.BOND.getTypeId()) &&
                !typeId.equals(LabelTypeEnum.ISSUER.getTypeId()) &&
                !typeId.equals(LabelTypeEnum.PO_FULL_ISSUER.getTypeId())) {
                //判断标签合规性
                if (label1.getClassify() != ClassifyConsts.LabelClassifyConsts.YES) {
                    continue;
                }
                risk = label1.getName();
                break;
            }
        }
        return risk;
    }


    /**
     * 处理公告债券
     *
     * @param msg 数据
     */
    @JmsListener(destination = "${qpid.queue.spider_files_bond}")
    public void processBulletinBond(Map<String, Object> msg) {
        if (CollectionUtils.isEmpty(msg)) {
            return;
        }
        JSONObject jsonObject = new JSONObject(msg);
        log.info("processBulletinBond msg:{}", jsonObject.toJSONString());

        // 首先转换为能使用的对象
        QbNewsSpBulletinBond bulletinBond = new QbNewsSpBulletinBond();
        JSONObject ackMsgBody = jsonObject.getJSONObject("AckMsgBody");
        bulletinBond.setFileId(ackMsgBody.getString("file_id"));
        bulletinBond.setBondKey(ackMsgBody.getString("bond_key") + "");
        bulletinBond.setShortName(ackMsgBody.getString("short_name") + "");
        bulletinBond.setCreateTime(LocalDateTimeUtils.objectToLocalDateTime(ackMsgBody.getString("create_time")));

        JSONObject ackMsgHead = jsonObject.getJSONObject("AckMsgHead");
        String type = ackMsgHead.getString("ope");

        UpdateWrapper<QbNewsSpBulletinBond> wrapper = new UpdateWrapper<>();
        switch (type) {
            // 拿到当前新增债券与已有债券的差集再新增
            case ApiTypeConst.INSERT:
                QueryWrapper<QbNewsSpBulletinBond> queryWrapper = new QueryWrapper<>();
                queryWrapper.eq(DataBaseSourceConst.QB_NEWS_SP_BULLETIN_BOND_FILE_ID, bulletinBond.getFileId());
                queryWrapper.eq(DataBaseSourceConst.QB_NEWS_SP_BULLETIN_BOND_BOND_KEY, bulletinBond.getBondKey());
                int count = bulletinBondLogic.count(queryWrapper);
                if (count > 0) {
                    return;
                }
                //查询api添加bondCode值
                List<QbNewsSpBulletinBond> list = new ArrayList<>();
                list.add(bulletinBond);
                list = addBondCode(list);
                // 保存
                bulletinBondLogic.save(list.get(0));
                break;
            case ApiTypeConst.UPDATE:
                wrapper.clear();
                wrapper.eq("file_id", bulletinBond.getFileId());
                wrapper.eq("bond_key", bulletinBond.getBondKey());
                bulletinBondLogic.update(bulletinBond, wrapper);
                break;
            case ApiTypeConst.DELETE:
                wrapper.clear();
                wrapper.eq("file_id", bulletinBond.getFileId());
                wrapper.eq("bond_key", bulletinBond.getBondKey());
                bulletinBondLogic.remove(wrapper);
                break;
            default:
                break;
        }
    }

    /**
     * @param list 需要添加bondCode值数据集
     * @return 添加后数据集
     */
    public List<QbNewsSpBulletinBond> addBondCode(List<QbNewsSpBulletinBond> list) {
        //获取bond_code(因为bond会出现多个市场，所以需要先判断bond_key然后再判断名称)
        StringJoiner bondKeys = new StringJoiner("','", "'", "'");
        StringJoiner shortNames = new StringJoiner("','", "'", "'");
        for (QbNewsSpBulletinBond qbNewsSpBulletinBond : list) {
            bondKeys.add(qbNewsSpBulletinBond.getBondKey());
            shortNames.add(qbNewsSpBulletinBond.getShortName());
        }
        String conditions = ApiDtoConsts.BOND_KEY + " in (" + bondKeys + ") and " + ApiDtoConsts.SHORT_NAME + " in (" + shortNames + ")";
        CDHRequestDTO cdhRequestDTO = new CDHRequestDTO(CHDApiNameAndDataSourceIdEnum.P_BOND_LIST_INFO, conditions, list.size());
        List<PBondListInfoDTO> request = apiDataCacheService.request(cdhRequestDTO, PBondListInfoDTO.class);
        Map<String, List<PBondListInfoDTO>> bondListInfoByBondKey = request.stream().collect(Collectors.groupingBy(PBondListInfoDTO::getBondKey));
        list.forEach(e -> {
            List<PBondListInfoDTO> bondList = Optional.ofNullable(bondListInfoByBondKey.get(e.getBondKey())).orElse(new ArrayList<>());
            for (PBondListInfoDTO bondListInfoDTO : bondList) {
                if (bondListInfoDTO.getShortName().equals(e.getShortName())) {
                    e.setBondCode(StringUtilsX.objectToString(bondListInfoDTO.getBondId()));
                    break;
                }
            }
        });
        return list;
    }

    /**
     * 处理公告
     *
     * @param msg 数据
     */
    @JmsListener(destination = "${qpid.queue.spider_files}")
    public void processBulletin(Map<String, Object> msg) {
        if (CollectionUtils.isEmpty(msg)) {
            return;
        }
        JSONObject data = new JSONObject(msg);
        log.info("processBulletin msg:{}", data.toJSONString());
        JSONObject ackMsgHead = data.getJSONObject("AckMsgHead");
        String type = ackMsgHead.getString("ope");
        UpdateWrapper<QbNewsSpBulletin> wrapper = new UpdateWrapper<>();
        String bulletinIdConst = DataBaseSourceConst.COL_BULLETIN_BULLETIN_ID;
        if (ApiTypeConst.INSERT.equals(type)) {
            // 拿到差集然后保存并推送
            QbNewsSpBulletin bulletin = this.conversionBulletin(data.getJSONObject("AckMsgBody"));
            QueryWrapper<QbNewsSpBulletin> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("bulletin_id", bulletin.getBulletinId());
            int count = bulletinService.count(queryWrapper);
            // 如果库已存在则过滤掉
            if (count > 0) {
                return;
            }
            // 先设置为不合规，跑完标签在修改
            bulletin.setCompliance(ClassifyConsts.NO);
            bulletin.setIssuerName(this.getIssuerNameByIssuerCode(bulletin.getInstitutionCode()));
            // 保存 并推送消息给前端
            try {
                bulletinService.save(bulletin);
            } catch (DuplicateKeyException ignored) {
                return;
            }
            // 推送
            LabelMQDTO labelMqDTO = new LabelMQDTO(bulletin.getId().toString(), bulletin.getTitle(), "", "", PoOrBtLabelEnum.bulletin);
            String s = JSONObject.toJSONString(labelMqDTO);
            log.info("rabbit public opinion label produce message : {}", s);
            rabbitTemplate.convertAndSend(topicExchange, labelRoutingKey, s);
        } else if (ApiTypeConst.UPDATE.equals(type)) {
            QbNewsSpBulletin bulletin = this.conversionBulletin(data.getJSONObject("AckMsgBody"));
            wrapper.clear();
            wrapper.eq(bulletinIdConst, bulletin.getBulletinId());
            bulletin.setIssuerName(this.getIssuerNameByIssuerCode(bulletin.getInstitutionCode()));
            bulletinService.updateByBulletinId(bulletin, wrapper);
        } else if (ApiTypeConst.DELETE.equals(type)) {
            String bulletinId = data.getJSONObject("AckMsgBody").getString(bulletinIdConst);
            wrapper.eq(bulletinIdConst, bulletinId);
            List<QbNewsSpBulletin> list = bulletinService.list(wrapper);
            /*原版,下方是新版
            bulletinService.remove(wrapper);
            if (!CollectionUtils.isEmpty(list)) {
                QbNewsSpBulletin bulletin = list.get(0);
                bulletin.setCompliance(ClassifyConsts.NO);
                qeubeeNewsProvider.pushToFront(bulletin, RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_BULLETIN);
            }*/
            if (!CollectionUtils.isEmpty(list)) {
                bulletinService.remove(wrapper);
                list.forEach(e -> qeubeeNewsProvider.pushToFront(e.getId(), RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_BULLETIN_COMPLIANCE));
            }
        }
    }

    /**
     * 转为公告数据库实体
     *
     * @param jsonObject 数据
     * @return 结果
     */
    private QbNewsSpBulletin conversionBulletin(JSONObject jsonObject) {
        if (jsonObject == null) {
            return null;
        }
        String id = jsonObject.getString(DataBaseSourceConst.ID);
        // 数据id过长时LONG型，所以删除
        jsonObject.remove(DataBaseSourceConst.ID);
        QbNewsSpBulletin bulletin = jsonObject.toJavaObject(QbNewsSpBulletin.class);
        bulletin.setBulletinId(id);
        bulletin.setId(null);
        //获取cate_code值
        Object cateCode = jsonObject.get("cate_code");
        bulletin.setCateCode2(StringUtilsX.objectToString(cateCode));
        Object modifyTime = jsonObject.get("modify_time");
        LocalDateTime time = LocalDateTimeUtils.objectToLocalDateTime(modifyTime);
        bulletin.setUpdateTime(time);
        bulletin.setContent(jsonObject.getString("d"));
        return bulletin;
    }

    /**
     * 根据发行人code获取名称
     *
     * @param institutionCode code
     * @return 名称
     */
    private String getIssuerNameByIssuerCode(String institutionCode) {
        if (StringUtils.isNotBlank(institutionCode)) {
            String conditions = ApiDtoConsts.INSTITUTION_CODE + " = '" + institutionCode + "'";
            List<IssuerInfoDTO> request = apiDataCacheService.request(new CDHRequestDTO(CHDApiNameAndDataSourceIdEnum.P_ISSUER_INFO, conditions, 1), IssuerInfoDTO.class);
            if (!CollectionUtils.isEmpty(request)) {
                return request.get(0).getIssuerName();
            }
        }
        return null;
    }

}