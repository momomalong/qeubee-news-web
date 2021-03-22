package com.pats.qeubeenewsweb.entity.bo;

import com.pats.qeubeenewsweb.entity.dto.label.LabelDTO;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

/**
 * @author : qintai.ma
 * @since : 2020.8.25 18:05
 * @version :1.0.0
 */

@Data
public class BulletinDetailBO implements Serializable {

    private static final long serialVersionUID = 1L;
    /**
     * 新闻id
     */
    private Integer id;

    /**
     * 新闻标题
     */
    private String title;
    /**
     * 发布时间
     */
    private LocalDateTime createTime;
    /**
     * 新闻来源
     */
    private String source;
    /**
     * 摘要
     */
    private String summary;
    /**
     * 内容
     */
    private String content;
    /**
     * 关联债券
     */
    private String referBond;

    /**
     * 债券code
     */
    private String bondCode;
    /**
     * 债券TYPE
     */
    private String bondType;
    /**
     * 债券ID
     */
    private String bondId;
    /**
     * 发行人id
     */
    private String mainBody;
    /**
     * 关联发行人id
     */
    private String mentionCom;
    /**
     * 关联新闻
     */
    private List<RefBulletinsBO> refBulletins;
    /**
     * 标签列表
     */
    private List<LabelDTO> labels;
    /**
     * 作者
     */
    private String author;
    /**
     * 合规性
     */
    private Integer compliance;

}
