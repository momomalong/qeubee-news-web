package com.pats.qeubeenewsweb.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pats.qeubeenewsweb.entity.Label;
import com.pats.qeubeenewsweb.entity.QbNewsLabelBondIssuerInfo;
import com.pats.qeubeenewsweb.entity.dto.label.LabelBondsDTO;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 债券标签发行人信息表 服务类
 * </p>
 *
 * @author mqt
 * @since 2021-01-13
 */
public interface IQbNewsLabelBondIssuerInfoService extends IService<QbNewsLabelBondIssuerInfo> {


    /**
     * 根据债券标签保存债券的相关信息
     *
     * @param lbs 标签
     */
    void insertByLabels(List<Label> lbs);


    /**
     * 获取所有省份
     *
     * @return 结果
     */
    List<String> findAllProvinces();

    /**
     * 获取所有行业分类
     *
     * @return 结果
     */
    List<Map<String, Object>> findAllSectors();

    /**
     * 获取所有主行业
     *
     * @return 结果
     */
    List<String> mainSectors();

    /**
     * 查询所有的BOND标签并调用API查询流动性、中债估值等，最后保存到Redis（KEY:id   value:bond标签）
     */
    void processDetailBonds();

    /**
     * 将债券标签缓存到redis中
     *
     * @param labelBonds 标签集
     */
    void processDetailBond(List<LabelBondsDTO> labelBonds);
}
