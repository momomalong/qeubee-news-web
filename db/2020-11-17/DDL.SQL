
-- 换为MyISAM
ALTER TABLE qb_news_sp_bulletin ENGINE=MyISAM;

-- 添加索引
ALTER TABLE qb_news_sp_bulletin_bond ADD KEY index_bond_key(bond_key);
ALTER table qb_news_sp_bulletin add key index_create_time(`create_time`);