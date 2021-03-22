package com.pats.qeubeenewsweb.otherservice;

import com.pats.qeubeenewsweb.entity.bo.NewsSpBulletinBondBO;
import com.pats.qeubeenews.common.dto.ResultDTO;
import com.pats.qeubeenewsweb.entity.QbNewsSpBulletinBond;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author mqt
 * @since 2020-09-24
 */
public interface IQbNewsSpBulletinBondService {
    ResultDTO<List<NewsSpBulletinBondBO>> selectByFileIds(Collection<?> fileIds);

    default ResultDTO<QbNewsSpBulletinBond> selectByFileId(String id) {
        if (StringUtils.isEmpty(id)) {
            return null;
        }
        ArrayList<String> list = new ArrayList<>();
        list.add(id);
        return ResultDTO.success(this.selectByFileIds(list).getData().get(0));
    }
}
