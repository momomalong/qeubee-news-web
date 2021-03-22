package com.pats.qeubeenewsweb.otherservice.impl;

import com.pats.qeubeenewsweb.entity.bo.LabelTypeDetailBO;
import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelTypeDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelTypeDetailDTO;
import com.pats.qeubeenewsweb.logic.LabelTypeLogic;
import com.pats.qeubeenewsweb.otherservice.LabelTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 新闻标签分类表 服务实现类
 * </p>
 *
 * @author qintai.ma
 * @since 2020-09-01
 */
@Service
public class LabelTypeServiceImpl implements LabelTypeService {

    @Autowired
    private LabelTypeLogic logic;

    @Override
    public ResultDTO<List<LabelTypeDetailBO>> findByCondition(String scope) {
        return ResultDTO.success(logic.findByCondition(scope));
    }

    @Override
    public ResultDTO<LabelTypeDetailBO> create(LabelTypeDetailDTO labelTypeDetailDTO) {
        return ResultDTO.success(logic.create(labelTypeDetailDTO));
    }

    @Override
    public ResultDTO<LabelTypeDetailBO> modify(LabelTypeDetailDTO labelTypeDetailDTO) {
        return ResultDTO.success(logic.modify(labelTypeDetailDTO));
    }

    @Override
    public ResultDTO<Boolean> remove(LabelTypeDeleteDTO labelTypeDeleteDTO) {
        return ResultDTO.success(logic.remove(labelTypeDeleteDTO));
    }
}
