package com.pats.qeubeenewsweb.service.impl;

import com.pats.qeubeenewsweb.entity.bo.LabelTypeDetailBO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelTypeDeleteDTO;
import com.pats.qeubeenewsweb.entity.dto.label.LabelTypeDetailDTO;
import com.pats.qeubeenewsweb.service.LabelTypeWebService;
import com.pats.qeubeenewsweb.service.transfer.LabelTypeServiceTransfer;
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
public class LabelTypeWebServiceImpl implements LabelTypeWebService {

    @Autowired
    private LabelTypeServiceTransfer transfer;

    @Override
    public List<LabelTypeDetailBO> findByCondition(String scope) {
        return transfer.findByCondition(scope);
    }

    @Override
    public LabelTypeDetailBO create(LabelTypeDetailDTO labelTypeDetailDTO) {
        return transfer.create(labelTypeDetailDTO);
    }

    @Override
    public LabelTypeDetailBO modify(LabelTypeDetailDTO labelTypeDetailDTO) {
        return transfer.modify(labelTypeDetailDTO);
    }

    @Override
    public Boolean remove(LabelTypeDeleteDTO labelTypeDeleteDTO) {
        return transfer.remove(labelTypeDeleteDTO);
    }
}
