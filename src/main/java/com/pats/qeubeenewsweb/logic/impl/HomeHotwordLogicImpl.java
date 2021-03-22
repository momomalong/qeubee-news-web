package com.pats.qeubeenewsweb.logic.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.util.StringUtil;
import com.pats.qeubeenewsweb.consts.ClassifyConsts;
import com.pats.qeubeenewsweb.entity.bo.HotWordDetailBO;
import com.pats.qeubeenews.common.exception.BaseKnownException;
import com.pats.qeubeenews.common.utils.BeansMapper;
import com.pats.qeubeenewsweb.consts.DataBaseSourceConst;
import com.pats.qeubeenewsweb.entity.dto.hotword.HotWordDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.HotWordInsertDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelDetailDTO;
import com.pats.qeubeenewsweb.entity.HomeHotword;
import com.pats.qeubeenewsweb.entity.Label;
import com.pats.qeubeenewsweb.logic.HomeHotwordLogic;
import com.pats.qeubeenewsweb.logic.LabelLogic;
import com.pats.qeubeenewsweb.mapper.HomeHotwordMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

/**
 * <p>
 * 首页热词 服务实现类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
@Service
@RequiredArgsConstructor
public class HomeHotwordLogicImpl extends ServiceImpl<HomeHotwordMapper, HomeHotword> implements HomeHotwordLogic {

    private final HomeHotwordMapper hotwordMapper;

    private final LabelLogic labelLogic;

    /**
     * 获取首页热词列表
     *
     * @param scope 新闻类别
     * @return 热词列表
     */
    @Override
    public List<HotWordDetailBO> findAll(String scope, Integer limit) {
        QueryWrapper<HomeHotword> query = new QueryWrapper<>();
        // 构建 新闻类别动态条件
        if (Objects.nonNull(scope)) {
            query.eq(DataBaseSourceConst.COL_HOME_HOTWORD_SCOPE, scope);
            query.orderByDesc("order_num");
        }
        if (limit != null && limit != 0) {
            query.last("limit " + limit);
        }
        // 获取首页热词列表
        List<HomeHotword> homeHotwords = hotwordMapper.findAllWithLabelName(query);
        return BeansMapper.convertList(homeHotwords, HotWordDetailBO.class);
    }

    @Override
    public List<HotWordDetailBO> create(HotWordInsertDTO hotWordInsertDTO) {
        List<Label> insertLabel = new ArrayList<>();
        List<String> labelNames = new ArrayList<>();
        int yes = ClassifyConsts.LabelClassifyConsts.YES;
        List<LabelDetailDTO> dtoList = hotWordInsertDTO.getHotWords().stream().filter(e -> {
            if (e.getId() == null) {
                Label label = BeansMapper.convert(e, Label.class);
                labelNames.add(label.getName());
                label.setClassify(yes);
                // 标签类型（用户类型）
                label.setTypeId(66);
                label.setCreateTime(LocalDateTime.now());
                label.setUpdateTime(LocalDateTime.now());
                insertLabel.add(label);
                return false;
            }
            return true;
        }).collect(Collectors.toList());
        // 查询需要新增的标签是否已存在，存在则不新增
        QueryWrapper<Label> wrapper = new QueryWrapper<>();
        wrapper.in("name", labelNames);
        Map<String, Label> labels = labelLogic.list(wrapper).stream().collect(Collectors.toMap(Label::getName, e -> e));
        Iterator<Label> iterator = insertLabel.iterator();
        while (iterator.hasNext()) {
            Label next = iterator.next();
            Label label = labels.get(next.getName());
            if (label != null) {
                iterator.remove();
                dtoList.add(BeansMapper.convert(label, LabelDetailDTO.class));
            }
        }
        // 新增id为null的标签
        labelLogic.saveBatch(insertLabel);

        // 新增完后重新添加进入集合
        dtoList.addAll(BeansMapper.convertList(insertLabel, LabelDetailDTO.class));
        hotWordInsertDTO.setHotWords(dtoList);
        // 新增热词
        List<HomeHotword> list = hotWordInsertDTO.ofHomeHotwordBuilder();
        list.forEach(e -> {
            e.setType(1);
            e.setOrderNum(11);
            e.setCreateTime(LocalDateTime.now());
            e.setUpdateTime(LocalDateTime.now());
        });
        if (this.saveBatch(list)) {
            return BeansMapper.convertList(list, HotWordDetailBO.class);
        }
        throw new BaseKnownException(10001, "热词新增失败");
    }

    @Override
    public Boolean remove(HotWordDeleteDTO hotWordInsertDTO) {
        UpdateWrapper<HomeHotword> wrapper = new UpdateWrapper<>();
        List<Integer> hotWords = hotWordInsertDTO.getHotWords();
        // 为null 直接返回
        if (CollectionUtils.isEmpty(hotWords)) {
            return false;
        }
        // 开始条件构造
        wrapper.in("label_id", hotWords);
        String scope = hotWordInsertDTO.getScope();
        if (StringUtil.isNotEmpty(scope)) {
            wrapper.eq("scope", scope);
        }
        if (this.remove(wrapper)) {
            return true;
        }
        throw new BaseKnownException(10003, "标签删除失败");
    }

    @Override
    public Boolean statisticsNewHotWords() {
        return hotwordMapper.statisticsNewHotWords();
    }

}
