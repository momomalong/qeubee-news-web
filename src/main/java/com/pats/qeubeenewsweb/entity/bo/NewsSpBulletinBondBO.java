package com.pats.qeubeenewsweb.entity.bo;

import com.pats.qeubeenewsweb.entity.QbNewsSpBulletinBond;
import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@EqualsAndHashCode(callSuper = true)
@ApiModel(value="QbNewsSpBulletinBond对象", description="")
@AllArgsConstructor
@NoArgsConstructor
public class NewsSpBulletinBondBO extends QbNewsSpBulletinBond {
    private static final long serialVersionUID = 1L;

    /**
     * 市场
     */
    private String listedMarket;
}
