
-- 删除公告重复垃圾数据
delete from qb_news_sp_bulletin where bulletin_id is null;
delete c from
    qb_news_sp_bulletin c,
    (select * from (SELECT max(id) id,count(*) count,bulletin_id  FROM `qb_news_sp_bulletin` GROUP BY bulletin_id) a where a.count > 1) b
    where c.bulletin_id = b.bulletin_id and c.id != b.id;

-- 删除公告债券重复垃圾数据
delete b from
	qb_news_sp_bulletin_bond b,
	(select * from (SELECT max(id) id,file_id,bond_key,count(*) count FROM qb_news_sp_bulletin_bond GROUP BY file_id,bond_key) a where a.count >1 )c
where b.file_id = c.file_id and b.bond_key = c.bond_key and b.id != c.id;