package com.pats.qeubeenewsweb.service.transfer;

import com.pats.qeubeenewsweb.entity.bo.LabelTypeDetailBO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelTypeDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelTypeDetailDTO;
import com.pats.qeubeenewsweb.otherservice.LabelTypeService;
import com.pats.qeubeenewsweb.utils.ApiResultDealUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

/**
 * @Author: qintai.ma
 * @Description:
 * @Date: create in 2020/9/2 10:45
 * @Version :1.0.0
 */
@Service
public class LabelTypeServiceTransfer {
    @Autowired
    private LabelTypeService service;

    /**
     * @param scope 标签所属范围 可选项：news: 舆情 bulletin：公告 null: 全查
     * @return 获取标签类型列表
     */
    public List<LabelTypeDetailBO> findByCondition(String scope) {
        return ApiResultDealUtils.dealResult(service.findByCondition(scope));
    }

    /**
     * @return 新建分类
     */
    public LabelTypeDetailBO create(@RequestBody LabelTypeDetailDTO labelTypeDetailDTO) {
        return ApiResultDealUtils.dealResult(service.create(labelTypeDetailDTO));
    }

    /**
     * @return 修改分类
     */
    public LabelTypeDetailBO modify(@RequestBody LabelTypeDetailDTO labelTypeDetailDTO) {
        return ApiResultDealUtils.dealResult(service.modify(labelTypeDetailDTO));
    }

    /**
     * 删除分类
     */
    public Boolean remove(@RequestBody LabelTypeDeleteDTO labelTypeDeleteDTO) {
        return ApiResultDealUtils.dealResult(service.remove(labelTypeDeleteDTO));
    }
}
