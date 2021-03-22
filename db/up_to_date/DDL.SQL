
-- 添加唯一索引 删除公告垃圾数据（保证执行成功，先删除垃圾数据）
DELETE a
FROM
	qb_news_sp_bulletin a,
	(SELECT min( c.id ) id, c.bulletin_id FROM `qb_news_sp_bulletin` c GROUP BY c.bulletin_id HAVING count( c.bulletin_id ) > 1 ) b
WHERE
	a.bulletin_id = b.bulletin_id
	AND a.id != b.id;
ALTER TABLE qb_news_sp_bulletin ADD UNIQUE KEY `index_bulletin_id` ( bulletin_id );

-- 舆情表新增字段
ALTER TABLE qb_news_public_opinion
    ADD COLUMN `mention_com_short_name` VARCHAR ( 1000 ) NOT NULL DEFAULT '' COMMENT '提及企业简称',
    ADD COLUMN `short_name` VARCHAR ( 200 ) NOT NULL DEFAULT '' COMMENT '发行人简称';

-- 修改公告类型字段,并清空历史数据
alter table qb_news_sp_bulletin modify column cate_code2 varchar(100) null default '' comment '公告类型';
update qb_news_sp_bulletin set cate_code2 = '';