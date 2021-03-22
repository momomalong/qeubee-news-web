
-- 删除外键
alter table qb_news_label drop foreign key fk_type_id;
alter table qb_news_home_hotword drop foreign key fk_label_id;
alter table qb_news_public_opinion_label drop foreign key fk_label_id11;
alter table qb_news_public_opinion_label drop foreign key fk_public_opinion_id1;
alter table qb_news_public_opinion_ranking_list drop foreign key fk_public_opinion_id;

-- 改回INNODB引擎
ALTER TABLE qb_news_sp_bulletin ENGINE=INNODB;

-- 舆情表新增字段
ALTER TABLE qb_news_public_opinion
    ADD COLUMN `article_score` INT ( 5 ) NOT NULL DEFAULT 0 COMMENT '舆情整体评分',
    ADD COLUMN `issuer_code` VARCHAR ( 50 ) NOT NULL DEFAULT '' COMMENT '发行机构code',
    ADD COLUMN `issuer_name` VARCHAR ( 200 ) NOT NULL DEFAULT '' COMMENT '发行机构名称',
    ADD COLUMN bond_key VARCHAR ( 50 ) NOT NULL DEFAULT '' COMMENT 'bond key';


-- 新建舆情句子情绪表
CREATE TABLE `qb_news_po_sentence_mood`  (
  `id` int(11) NOT NULL auto_increment COMMENT '主键id',
  `public_opinion_id` int(11) NOT NULL DEFAULT 0 COMMENT '舆情id',
  `content` text NULL COMMENT '句子内容',
  `mood` int(4) NULL COMMENT '情绪值',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  INDEX `fk_public_opinion_id_idx`(`public_opinion_id`) USING BTREE
) ENGINE=InnoDB COMMENT='舆情句子情绪表';

-- 添加bond_code列
ALTER TABLE qb_news_sp_bulletin_bond ADD COLUMN bond_code VARCHAR(30) NOT NULL DEFAULT '' COMMENT '债卷code' AFTER bond_key;

-- 修改mention_com字段长度
alter table qb_news_public_opinion modify column mention_com varchar(1000) null comment '提及企业(逗号隔开)';

-- 公告新增发行人名称和公告类型字段
ALTER TABLE qb_news_sp_bulletin
		ADD COLUMN issuer_name VARCHAR(200) NOT NULL DEFAULT '' COMMENT '发行人名称',
		ADD COLUMN cate_code2 VARCHAR(32) NOT NULL DEFAULT '' COMMENT '公告类型';

-- 创建债券标签发行人信息表
CREATE TABLE `qb_news_label_bond_issuer_info` (
                                                  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '舆情id',
                                                  `label_id` int(11) NOT NULL DEFAULT '0' COMMENT 'type为债券（62）的标签id',
                                                  `bond_key` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '债券code',
                                                  `listed_market` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '发行市场',
                                                  `issuer_code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '发行机构code',
                                                  `issuer_name` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '发行机构名称',
                                                  `issuer_province` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '发行机构所在省份',
                                                  `issuer_sector` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '发行机构所属行业',
                                                  `issuer_subsector` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '发行机构子行业',
                                                  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
                                                  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                                                  PRIMARY KEY (`id`) USING BTREE,
                                                  UNIQUE KEY `label_id_index` (`label_id`) USING BTREE,
                                                  KEY `bond_key_index` (`bond_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='债券标签发行人信息表';