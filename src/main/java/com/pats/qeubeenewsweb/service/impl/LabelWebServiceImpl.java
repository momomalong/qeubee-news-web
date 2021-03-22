package com.pats.qeubeenewsweb.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.pats.qeubeenewsweb.consts.ClassifyConsts;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;
import com.pats.qeubeenewsweb.consts.RabbitMQPushMsgTypeConst;
import com.pats.qeubeenewsweb.entity.Label;
import com.pats.qeubeenewsweb.entity.LabelType;
import com.pats.qeubeenewsweb.entity.bo.LabelDetailBO;
import com.pats.qeubeenewsweb.entity.bo.LabelInsertBatchResponseBO;
import com.pats.qeubeenewsweb.entity.dto.apidto.BondListInfoDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelAndLabelTypeDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDetailDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelGroupDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelGroupQueryDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelInsertDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelsQueryDTO;
import com.pats.qeubeenewsweb.enums.LabelTypeEnum;
import com.pats.qeubeenewsweb.logic.impl.LabelLogicImpl;
import com.pats.qeubeenewsweb.mapper.LabelMapper;
import com.pats.qeubeenewsweb.mapper.LabelTypeMapper;
import com.pats.qeubeenewsweb.mq.provider.QeubeeNewsProvider;
import com.pats.qeubeenewsweb.service.ApiDataCacheService;
import com.pats.qeubeenewsweb.service.IQbNewsLabelBondIssuerInfoService;
import com.pats.qeubeenewsweb.service.LabelWebService;
import com.pats.qeubeenewsweb.service.transfer.LabelServiceTransfer;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * <p>
 * 标签表 服务实现类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
@Service
@Slf4j
public class LabelWebServiceImpl implements LabelWebService {

    @Autowired
    private LabelServiceTransfer transfer;

    @Autowired
    private QeubeeNewsProvider qeubeeNewsProvider;

    @Autowired
    private ApiDataCacheService apiDataCacheService;

    @Autowired
    private IQbNewsLabelBondIssuerInfoService bondIssuerInfoService;

    @Autowired
    private LabelMapper labelMapper;

    @Autowired
    private LabelLogicImpl labelLogic;

    @Autowired
    private LabelTypeMapper labelTypeMapper;

    @Override
    public List<LabelDetailBO> findAll() {
        return transfer.findAll();
    }

    @Override
    public List<LabelDetailBO> findByCondition(LabelsQueryDTO labelsQueryDTO) {
        return transfer.findByCondition(labelsQueryDTO);
    }

    @Override
    public List<LabelGroupDTO> findLabelGroup(LabelGroupQueryDTO labelGroupQueryDTO) {
        return transfer.findLabelGroup(labelGroupQueryDTO);
    }

    @Override
    public List<LabelInsertBatchResponseBO> create(LabelInsertDTO labelsInsertDTO) {
        // 标签有编辑则推送编辑消息
        pushToFront();
        return transfer.create(labelsInsertDTO);
    }

    @Override
    public List<LabelDetailBO> updateById(LabelDetailDTO labelDetailDTO) {
        return transfer.updateById(labelDetailDTO);
    }

    @Override
    public Boolean remove(LabelDeleteDTO labelsDeleteDTO) {
        // 标签有编辑则推送编辑消息
        pushToFront();
        return transfer.remove(labelsDeleteDTO);
    }

    @Override
    public List<Label> processIsInsertLabel(List<LabelDTO> list) {
        //拼接标签名
        String labelNames = list.stream().map(LabelDTO::getName).collect(Collectors.joining("','", "'", "'"));
        QueryWrapper<Label> queryWrapper = new QueryWrapper<>();
        queryWrapper.inSql("name", labelNames);
        //查询指定标签
        List<Label> labels = labelMapper.selectList(queryWrapper);
        //以标签名分组
        Map<String, List<Label>> collect = labels.stream().collect(Collectors.groupingBy(Label::getName));
        //新增标签集
        List<Label> lbs = new ArrayList<>();
        for (LabelDTO item : list) {
            //获取mq接收的标签名
            String name = item.getName();
            //判断该标签名数据库是否存在，不存在则新增
            if (collect.containsKey(name)) {
                continue;
            }
            Label addLabel = new Label();
            addLabel.setName(name);
            Integer typeId = item.getId();
            addLabel.setTypeId(typeId);
            addLabel.setScope("news");
            addLabel.setClassify(ClassifyConsts.LabelClassifyConsts.YES);
            // 模型缺陷，设置为不合规
            if (name.endsWith("有限公")){
                addLabel.setClassify(ClassifyConsts.LabelClassifyConsts.NO);
            }
            addLabel.setCreateTime(LocalDateTime.now());
            addLabel.setUpdateTime(LocalDateTime.now());
            lbs.add(addLabel);
        }
        //判断新增标签集是否为空，不为空则批量新增
        if (lbs.size() > 0) {
            String bondNames = lbs.parallelStream().filter(e -> e.getTypeId().equals(LabelTypeEnum.BOND.getTypeId())).map(Label::getName).collect(Collectors.joining("','", "'", "'"));
            Map<String, BondListInfoDTO> infosMap = new HashMap<>(16);
            if (!StringUtils.isEmpty(bondNames)) {
                // 通过债券名称查询bond_list_info的信息，拿到Listed_Market
                infosMap.putAll(apiDataCacheService.getBondInfoByShortNames(bondNames));
                // 当为债券标签时查询API判断这个标签是否真是存在
                lbs = lbs.parallelStream()
                    .filter(e -> {
                        if (e.getTypeId().equals(LabelTypeEnum.BOND.getTypeId())) {
                            return infosMap.containsKey(e.getName());
                        }
                        return true;
                    }).collect(Collectors.toList());
            }
            labelLogic.saveBatch(lbs);

            //合并集合
            labels.addAll(lbs);
            // 处理债券标签
            bondIssuerInfoService.insertByLabels(lbs);
        }
        return labels;
    }

    /**
     * 通过标签的scope属性获取所有标签与标签类型
     *
     * @param scope 标签所属范围
     * @return 所有标签结果集
     */
    @Override
    public List<LabelAndLabelTypeDTO> findByScope(String scope, int labelClassify, int labelTypeClassify, String labelName, int start, int end) {
        List<LabelAndLabelTypeDTO> reList = new ArrayList<>();
        //获取所有的标签类型
        QueryWrapper<LabelType> query = new QueryWrapper<>();
        //新闻类别不为""的情况下，添加scope条件
        if (!StringUtils.isEmpty(scope)) {
            query.eq(DataBaseSourceConst.QB_NEWS_LABEL_TYPE_SCOPE, scope);
        }
        //标签类型合规性不为0的情况下，添加标签类型合规性条件
        if (labelTypeClassify != 0) {
            query.eq(DataBaseSourceConst.QB_NEWS_LABEL_TYPE_CLASSIFY, labelTypeClassify);
        }
        query.select(DataBaseSourceConst.QB_NEWS_LABELTYPE_ID, DataBaseSourceConst.QB_NEWS_LABEL_TYPE_SCOPE
            , DataBaseSourceConst.QB_NEWS_LABELTYPE_NAME, DataBaseSourceConst.QB_NEWS_LABEL_TYPE_CLASSIFY);
        //查询标签类型表，获取所有标签信息
        List<LabelType> labelTypes = labelTypeMapper.selectList(query);
        //循环查询每种类型标签数据
        for (LabelType labelType : labelTypes) {
            QueryWrapper<Label> queryWrapper = new QueryWrapper<>();
            //标签类型id
            Integer id = labelType.getId();
            //添加标签表type_id的条件
            queryWrapper.eq(DataBaseSourceConst.QB_NEWS_LABEL_TYPE_ID, id);
            //如果标签名称不为""的情况下，添加标签名的模糊查询
            if (!StringUtils.isEmpty(labelName)) {
                queryWrapper.like(DataBaseSourceConst.QB_NEWS_LABEL_NAME, labelName);
            }
            //标签合规性不为0的情况下，添加合规性条件
            if (labelClassify != 0) {
                queryWrapper.eq(DataBaseSourceConst.QB_NEWS_LABEL_CLASSIFY, labelClassify);
            }
            //添加limit条数限制条件
            queryWrapper.last("limit " + start + "," + end + "");
            queryWrapper.select(DataBaseSourceConst.QB_NEWS_LABEL_ID, DataBaseSourceConst.QB_NEWS_LABEL_NAME, DataBaseSourceConst.QB_NEWS_LABEL_CLASSIFY);
            //获取当前类型中所有符合条件的标签数据
            List<Label> labels = labelMapper.selectList(queryWrapper);
            //创建LabelAndLabelTypeDTO对象，将查询数据返回给前端
            LabelAndLabelTypeDTO labelAndLabelTypeDTO = new LabelAndLabelTypeDTO();
            labelAndLabelTypeDTO.setId(id);
            labelAndLabelTypeDTO.setScope(labelType.getScope());
            labelAndLabelTypeDTO.setName(labelType.getName());
            labelAndLabelTypeDTO.setClassify(labelType.getClassify());
            labelAndLabelTypeDTO.setLabels(labels);
            reList.add(labelAndLabelTypeDTO);
        }
        return reList;
    }

    /**
     * 标签编辑推送
     */
    private void pushToFront() {
        log.info("label edit push message is started");
        qeubeeNewsProvider.pushToFront("updated", RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_LABEL);
    }

}
