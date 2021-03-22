package com.pats.qeubeenewsweb.entity.bo;

import com.pats.qeubeenewsweb.entity.QbNewsSpBulletin;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@EqualsAndHashCode(callSuper = true)
@AllArgsConstructor
@NoArgsConstructor
public class QbNewsSpBulletinBO extends QbNewsSpBulletin {

    private static final long serialVersionUID = 1L;

    /**
     * 相关债券
     */
    private List<NewsSpBulletinBondBO> bonds;
}


