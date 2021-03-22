-- 新增发行人全称类型
INSERT INTO `qb_news_label_type` ( `id`, `scope`, `name`, `classify` )
VALUES
( 68, 'bulletin', '发行人全称', 1 ),
( 69, 'news', '发行人全称', 1 );

-- 将旧标签移动到risk类型下
update qb_news_label set type_id = 64 where scope = 'news' and type_id not in (62,63,64,66,69) and `name` not in ('债券发行','付息兑付'
,'提前赎回','评级下调','违约','债务逾期','黑名单','业绩下滑','不良资产','经营业绩','战略合作','利润分配','资产重组','战略重组','牌照'
,'自然灾害','诉讼','担保','股价波动','大宗交易','关联交易','市场禁入','澄清公告','摘牌公告','股权质押','股权冻结','资产上市','增资扩股'
,'再融资','增持','减持','股权激励','员工持股','银行授信','银行借款','长期投资','投融资','转让','年报','财务报表','季报','审计报告'
,'补充披露','警示','责令改正','通报批评','公开谴责','罚款','立案调查','监管谈话','持有人会议','股东大会');

-- 删除无用的标签类型
delete from qb_news_label_type where scope = 'news' and id not in (62,63,64,66,69);

-- 插入新的标签类型
INSERT INTO qb_news_label_type ( `id`, `scope`, `name`, `classify`, `create_time`, `update_time` )
VALUES
	(1,'news','行权付息',2,now( 6 ),now( 6 )),
	(2,'news','信用风险',2,now( 6 ),now( 6 )),
	(3,'news','经营风险',2,now( 6 ),now( 6 )),
	(4,'news','法律风险',2,now( 6 ),now( 6 )),
	(5,'news','市场风险',2,now( 6 ),now( 6 )),
	(6,'news','股权变动',2,now( 6 ),now( 6 )),
	(7,'news','融资',2,now( 6 ),now( 6 )),
	(8,'news','财务',2,now( 6 ),now( 6 )),
	(9,'news','监管',2,now( 6 ),now( 6 )),
	(10,'news','会议',2,now( 6 ),now( 6 ));

-- 新增债券发行标签
INSERT INTO qb_news_label ( `name`, `type_id`, `scope`, `classify`, `create_time`, `update_time`)
VALUES
('债券发行', 1, 'news', 2, now( 6 ),now( 6 ));

-- update 已存在标签的type_id
UPDATE qb_news_label
SET type_id = (
	CASE
			`name`
			WHEN '付息兑付' THEN
			1
			WHEN '提前赎回' THEN
			1
			WHEN '评级下调' THEN
			2
			WHEN '违约' THEN
			2
			WHEN '债务逾期' THEN
			2
			WHEN '黑名单' THEN
			2
			WHEN '业绩下滑' THEN
			3
			WHEN '不良资产' THEN
			3
			WHEN '经营业绩' THEN
			3
			WHEN '战略合作' THEN
			3
			WHEN '利润分配' THEN
			3
			WHEN '资产重组' THEN
			3
			WHEN '战略重组' THEN
			3
			WHEN '牌照' THEN
			3
			WHEN '自然灾害' THEN
			3
			WHEN '诉讼' THEN
			4
			WHEN '担保' THEN
			4
			WHEN '股价波动' THEN
			5
			WHEN '大宗交易' THEN
			5
			WHEN '关联交易' THEN
			5
			WHEN '市场禁入' THEN
			5
			WHEN '澄清公告' THEN
			5
			WHEN '摘牌公告' THEN
			5
			WHEN '股权质押' THEN
			6
			WHEN '股权冻结' THEN
			6
			WHEN '资产上市' THEN
			6
			WHEN '增资扩股' THEN
			6
			WHEN '再融资' THEN
			6
			WHEN '增持' THEN
			6
			WHEN '减持' THEN
			6
			WHEN '股权激励' THEN
			6
			WHEN '员工持股' THEN
			6
			WHEN '银行授信' THEN
			7
			WHEN '银行借款' THEN
			7
			WHEN '长期投资' THEN
			7
			WHEN '投融资' THEN
			7
			WHEN '转让' THEN
			7
			WHEN '年报' THEN
			8
			WHEN '财务报表' THEN
			8
			WHEN '季报' THEN
			8
			WHEN '审计报告' THEN
			8
			WHEN '补充披露' THEN
			8
			WHEN '警示' THEN
			9
			WHEN '责令改正' THEN
			9
			WHEN '通报批评' THEN
			9
			WHEN '公开谴责' THEN
			9
			WHEN '罚款' THEN
			9
			WHEN '立案调查' THEN
			9
			WHEN '监管谈话' THEN
			9
			WHEN '持有人会议' THEN
			10
			WHEN '股东大会' THEN
			10 ELSE type_id
		END
		);