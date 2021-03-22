-- 修改qb_news_public_opinion中short_name字段，将其改为发行人简称
-- sql1
UPDATE qb_news_public_opinion
SET short_name = (
	CASE
			issuer_code
			WHEN 'S006135' THEN
			'欣贺股份'
			WHEN 'S006142' THEN
			'中咨集团'
			WHEN 'R000059' THEN
			'乳山国资'
			WHEN 'S000966' THEN
			'茌平农商行'
			WHEN 'X000488' THEN
			'林芝汇福'
			WHEN 'S000622' THEN
			'佳捷'
			WHEN 'M000029' THEN
			'华宏水利水电工程'
			WHEN 'D000230' THEN
			'定远城乡发投'
			WHEN 'X000404' THEN
			'先锋太盟'
			WHEN 'Q000142' THEN
			'黄发集团'
			WHEN 'Z000655' THEN
			'中广核风电'
			WHEN 'H000298' THEN
			'湖北社资管理'
			WHEN 'H000299' THEN
			'华夏银行武汉分行'
			WHEN 'Z000656' THEN
			'郑州交投'
			WHEN 'S001013' THEN
			'夏津农商行'
			WHEN 'S001014' THEN
			'汶上农商行'
			WHEN 'S001251' THEN
			'眉县农商行'
			WHEN 'S001015' THEN
			'梁山农商行'
			WHEN 'S001016' THEN
			'垦利农商行'
			WHEN 'S001252' THEN
			'广朔实业'
			WHEN 'B000334' THEN
			'安控科技'
			WHEN 'Y000192' THEN
			'烟台打捞局'
			WHEN 'Z000976' THEN
			'招商地产'
			WHEN 'S001017' THEN
			'正威集团'
			WHEN 'B000335' THEN
			'渤海钢铁天津融资'
			WHEN 'W000232' THEN
			'武汉商务区集团'
			WHEN 'C000289' THEN
			'长发集团'
			WHEN 'H000965' THEN
			'星帅尔'
			WHEN 'H000966' THEN
			'星帅尔投资'
			WHEN 'Y000193' THEN
			'义乌国资'
			WHEN 'T000316' THEN
			'滨海水业'
			WHEN 'Z001303' THEN
			'致达集团'
			WHEN 'M000079' THEN
			'麻城城发'
			WHEN 'N000296' THEN
			'六合经开'
			WHEN 'D000135' THEN
			'科力化工'
			WHEN 'H000828' THEN
			'金鑫投资'
			WHEN 'M000080' THEN
			'宏顺停车管理服务'
			WHEN 'Y000300' THEN
			'扬中经贸'
			WHEN 'S001018' THEN
			'曹县农商行'
			WHEN 'S007271' THEN
			'新南方'
			WHEN 'P000095' THEN
			'平湖国资'
			WHEN 'S007272' THEN
			'之江生物'
			WHEN 'N000120' THEN
			'宁夏银行'
			WHEN 'W000096' THEN
			'吴忠城建'
			WHEN 'L000090' THEN
			'乐山电力'
			WHEN 'B000140' THEN
			'华利能源'
			WHEN 'F000070' THEN
			'福建六建集团'
			WHEN 'T000130' THEN
			'曹妃甸发投'
			WHEN 'S001147' THEN
			'丽鹏股份'
			WHEN 'Z001410' THEN
			'众信旅游'
			WHEN 'S001148' THEN
			'前海一方'
			WHEN 'P000031' THEN
			'郫县国投'
			WHEN 'S006162' THEN
			'德勤华永'
			WHEN 'S006163' THEN
			'重光所'
			WHEN 'B000445' THEN
			'世园投资'
			WHEN 'Q000079' THEN
			'青岛能源'
			WHEN 'J000750' THEN
			'玖龙环球'
			WHEN 'G000575' THEN
			'光华科技'
			WHEN 'Q000150' THEN
			'奇精机械'
			WHEN 'S000650' THEN
			'申万宏源'
			WHEN 'N000359' THEN
			'奇精控股'
			WHEN 'L000318' THEN
			'领益科技'
			WHEN 'Z001482' THEN
			'富浙资产'
			WHEN 'S000967' THEN
			'通海绒业'
			WHEN 'T000207' THEN
			'唐曹高速'
			WHEN 'Y000349' THEN
			'合和集团'
			WHEN 'J000751' THEN
			'先行建设'
			WHEN 'L000264' THEN
			'利欧股份'
			WHEN 'L000265' THEN
			'兰州交建'
			WHEN 'G000546' THEN
			'高密水业'
			WHEN 'Z001483' THEN
			'正太集团'
			WHEN 'N000176' THEN
			'江海公路工程'
			WHEN 'X000225' THEN
			'新沂交通投'
			WHEN 'T000192' THEN
			'萧县水泥'
			WHEN 'L000281' THEN
			'利津城投'
			WHEN 'Z000977' THEN
			'建行新沂支行'
			WHEN 'H001012' THEN
			'哈创投集团'
			WHEN 'Y000374' THEN
			'仪征众鑫建设'
			WHEN 'Y000375' THEN
			'宜春发投集团'
			WHEN 'G000525' THEN
			'信邦制药'
			WHEN 'S001371' THEN
			'光线控股'
			WHEN 'H000873' THEN
			'荆州农商行'
			WHEN 'P000053' THEN
			'平安国际租赁'
			WHEN 'T000215' THEN
			'冀东混凝土'
			WHEN 'Q000179' THEN
			'向阳湖'
			WHEN 'L000269' THEN
			'灵璧交投'
			WHEN 'G000466' THEN
			'国银租赁'
			WHEN 'B000240' THEN
			'金泰集团'
			WHEN 'H000694' THEN
			'登封农商行'
			WHEN 'H000695' THEN
			'西平农商行'
			WHEN 'G000467' THEN
			'临桂农商行'
			WHEN 'B000336' THEN
			'清新环境'
			WHEN 'N000169' THEN
			'汤山建投'
			WHEN 'N000170' THEN
			'宁波银行南京分行'
			WHEN 'S007273' THEN
			'诺熙资本'
			WHEN 'S007274' THEN
			'钱塘江投开'
			WHEN 'S007275' THEN
			'新华日报资管'
			WHEN 'S007276' THEN
			'中交润致'
			WHEN 'G000382' THEN
			'合景控股'
			WHEN 'H000554' THEN
			'合景泰富'
			WHEN 'S007277' THEN
			'神通科技'
			WHEN 'S007278' THEN
			'合兴股份'
			WHEN 'X000146' THEN
			'新沂城投'
			WHEN 'Z000657' THEN
			'远达环保'
			WHEN 'Z000658' THEN
			'中国水电八局'
			WHEN 'Z001411' THEN
			'亚太股份'
			WHEN 'Z001484' THEN
			'台华新材'
			WHEN 'Z000918' THEN
			'邮储银行鞍山市分行'
			WHEN 'Z001412' THEN
			'中远海运租赁'
			WHEN 'X000430' THEN
			'萧县交投'
			WHEN 'Z000891' THEN
			'富阳农商行'
			WHEN 'S001456' THEN
			'今天国际'
			WHEN 'A000233' THEN
			'楚江新材'
			WHEN 'Y000163' THEN
			'远东租赁'
			WHEN 'H000482' THEN
			'华鑫置业'
			WHEN 'M000033' THEN
			'穆迪'
			WHEN 'B000446' THEN
			'中银所'
			WHEN 'Z001627' THEN
			'泽商所'
			WHEN 'Z001628' THEN
			'中瑞唯斯达'
			WHEN 'S001253' THEN
			'丰泰电商资管'
			WHEN 'G000576' THEN
			'三特梵净山'
			WHEN 'T000306' THEN
			'桃源投资'
			WHEN 'J000695' THEN
			'修水城投'
			WHEN 'X000431' THEN
			'新大陆集团'
			WHEN 'G000324' THEN
			'贵阳农商行'
			WHEN 'Z000940' THEN
			'中科招商'
			WHEN 'H000448' THEN
			'河北融投担保'
			WHEN 'Z001629' THEN
			'中国结算深圳分公司'
			WHEN 'B000451' THEN
			'德恒(深圳)'
			WHEN 'L000128' THEN
			'纳兴实业'
			WHEN 'R000083' THEN
			'瑞华'
			WHEN 'W000311' THEN
			'恒建集团'
			WHEN 'B000452' THEN
			'北金所'
			WHEN 'B000453' THEN
			'大成(广州)'
			WHEN 'Z001630' THEN
			'南航财务'
			WHEN 'B000454' THEN
			'毕马威华振深圳分所'
			WHEN 'S001149' THEN
			'逸锟理保'
			WHEN 'T000366' THEN
			'天职国际'
			WHEN 'X000489' THEN
			'希格玛'
			WHEN 'B000455' THEN
			'观韬(西安)'
			WHEN 'C000330' THEN
			'蚂蚁小微贷款'
			WHEN 'S001457' THEN
			'晋阳保理'
			WHEN 'H001013' THEN
			'河钢保理'
			WHEN 'B000503' THEN
			'大成(石家庄)'
			WHEN 'Z001714' THEN
			'中喜'
			WHEN 'J000816' THEN
			'豫章所'
			WHEN 'B000456' THEN
			'高朋所'
			WHEN 'B000457' THEN
			'德恒所'
			WHEN 'T000367' THEN
			'天衡'
			WHEN 'J000817' THEN
			'永衡昭辉'
			WHEN 'Z001631' THEN
			'中兴华'
			WHEN 'J000818' THEN
			'中坚汇'
			WHEN 'J000819' THEN
			'世纪同仁'
			WHEN 'X000490' THEN
			'信永中和'
			WHEN 'B000458' THEN
			'大成(南京)'
			WHEN 'B000459' THEN
			'金诚同达(深圳)'
			WHEN 'T000193' THEN
			'百利装备'
			WHEN 'Z001632' THEN
			'致同'
			WHEN 'Z001633' THEN
			'非可'
			WHEN 'D000275' THEN
			'大华'
			WHEN 'B000460' THEN
			'观韬中茂(上海)'
			WHEN 'B000461' THEN
			'毕马威华振上海分所'
			WHEN 'B000462' THEN
			'金杜上海分所'
			WHEN 'S001458' THEN
			'浦发银行合肥分行'
			WHEN 'G000648' THEN
			'国新投资'
			WHEN 'Y000429' THEN
			'仪征建发'
			WHEN 'S001326' THEN
			'绍兴金融控股'
			WHEN 'S007279' THEN
			'华骐环保'
			WHEN 'S007280' THEN
			'南网能源'
			WHEN 'C000204' THEN
			'协信远创'
			WHEN 'G000383' THEN
			'柳州建投'
			WHEN 'J000339' THEN
			'昌盛城投'
			WHEN 'L000252' THEN
			'郎溪国投'
			WHEN 'S000773' THEN
			'临猗农商行'
			WHEN 'J000494' THEN
			'建湖农商行'
			WHEN 'Z001116' THEN
			'滨海新区开投'
			WHEN 'X000269' THEN
			'兴业银行绍兴支行'
			WHEN 'Q000151' THEN
			'海尔智家'
			WHEN 'N000247' THEN
			'内江建工'
			WHEN 'W000312' THEN
			'宝通科技'
			WHEN 'Z001715' THEN
			'飞鹿股份'
			WHEN 'J000858' THEN
			'家家悦'
			WHEN 'X000204' THEN
			'厦门港务'
			WHEN 'Z000892' THEN
			'郑州银行新密支行'
			WHEN 'X000205' THEN
			'新密财源投资'
			WHEN 'H000483' THEN
			'龙蟒佰利'
			WHEN 'L000319' THEN
			'朗诗地产'
			WHEN 'S001501' THEN
			'中铁财务'
			WHEN 'N000305' THEN
			'奉化农商行'
			WHEN 'S001019' THEN
			'莱芜农商行'
			WHEN 'S001020' THEN
			'四川商业投资'
			WHEN 'X000412' THEN
			'新疆交建投'
			WHEN 'X000371' THEN
			'维泰股份'
			WHEN 'S001021' THEN
			'鑫海科技'
			WHEN 'J000639' THEN
			'力源热电'
			WHEN 'L000226' THEN
			'鑫海新材'
			WHEN 'S001502' THEN
			'金湖水投'
			WHEN 'Y000347' THEN
			'榆林水务集团'
			WHEN 'X000432' THEN
			'新疆交建'
			WHEN 'C000290' THEN
			'曹妃甸港集团'
			WHEN 'H000723' THEN
			'衡东县城乡建投'
			WHEN 'D000208' THEN
			'德清建投'
			WHEN 'S000774' THEN
			'中环集团'
			WHEN 'Z001117' THEN
			'水电十一局'
			WHEN 'S007281' THEN
			'通用电梯'
			WHEN 'S007282' THEN
			'屹通新材'
			WHEN 'S007283' THEN
			'荣万家'
			WHEN 'X000270' THEN
			'响水灌江控股集团'
			WHEN 'S000775' THEN
			'石家庄滹沱投资'
			WHEN 'S007284' THEN
			'云华乡文旅'
			WHEN 'Q000172' THEN
			'丁字湾投资发展'
			WHEN 'S007285' THEN
			'融臻工程管理'
			WHEN 'S007286' THEN
			'济阳国投控'
			WHEN 'S007287' THEN
			'南京新居建集'
			WHEN 'Z001118' THEN
			'浙商财险'
			WHEN 'Y000228' THEN
			'阳江核电'
			WHEN 'S007288' THEN
			'海润天睿'
			WHEN 'H000555' THEN
			'唐山农商行'
			WHEN 'C000205' THEN
			'苍山农信社'
			WHEN 'J000259' THEN
			'交行许昌分行'
			WHEN 'T000131' THEN
			'塔城国资投'
			WHEN 'S001503' THEN
			'中电建基金'
			WHEN 'J000260' THEN
			'交行泰州分行'
			WHEN 'Z000659' THEN
			'碚城建设'
			WHEN 'Z000660' THEN
			'重庆农商行北碚支行'
			WHEN 'S001504' THEN
			'光大银行深圳分行'
			WHEN 'Y000312' THEN
			'亭湖区城投'
			WHEN 'J000616' THEN
			'双星新材'
			WHEN 'J000364' THEN
			'望涛投资'
			WHEN 'X000360' THEN
			'香驰控股'
			WHEN 'Z001331' THEN
			'恒信农商行'
			WHEN 'K000071' THEN
			'官渡农合行'
			WHEN 'P000085' THEN
			'蓬溪农商行'
			WHEN 'L000215' THEN
			'浪潮信息'
			WHEN 'Z001332' THEN
			'工银亚洲'
			WHEN 'T000194' THEN
			'天津银行济南分行'
			WHEN 'Y000313' THEN
			'永隆银行'
			WHEN 'S001182' THEN
			'山东金融资管'
			WHEN 'S001183' THEN
			'苏州园林发展'
			WHEN 'C000291' THEN
			'银海融资租赁'
			WHEN 'T000317' THEN
			'金地建投'
			WHEN 'Z001333' THEN
			'肇东东盛城投'
			WHEN 'G000477' THEN
			'乌当农商行'
			WHEN 'S000968' THEN
			'富宇化工'
			WHEN 'B000337' THEN
			'颖泰生物'
			WHEN 'F000092' THEN
			'晋江开发建设'
			WHEN 'W000167' THEN
			'北塘投资'
			WHEN 'F000071' THEN
			'丰田金融'
			WHEN 'T000132' THEN
			'宝星工贸'
			WHEN 'H000804' THEN
			'河南化工财务'
			WHEN 'Z000661' THEN
			'紫金矿业'
			WHEN 'B000272' THEN
			'北京建工环境'
			WHEN 'N000248' THEN
			'新城股份'
			WHEN 'K000049' THEN
			'滇池水务'
			WHEN 'N000249' THEN
			'海城投资开发'
			WHEN 'X000271' THEN
			'华新新能源'
			WHEN 'S000776' THEN
			'市北高新'
			WHEN 'J000495' THEN
			'沭阳农商行'
			WHEN 'J000496' THEN
			'高邮农商行'
			WHEN 'S001505' THEN
			'永兴材料'
			WHEN 'S001506' THEN
			'寿仙谷'
			WHEN 'S001507' THEN
			'上机数控'
			WHEN 'S001508' THEN
			'寿仙谷投资'
			WHEN 'Y000314' THEN
			'永泰农信社'
			WHEN 'J000640' THEN
			'佳兆业集团'
			WHEN 'X000361' THEN
			'亚洲电视控股'
			WHEN 'S001022' THEN
			'上海沃金'
			WHEN 'T000277' THEN
			'天广中茂'
			WHEN 'G000289' THEN
			'强强碳素'
			WHEN 'Z000978' THEN
			'浙江沪杭甬'
			WHEN 'Y000301' THEN
			'江都住房开发'
			WHEN 'S001509' THEN
			'兴兰农投'
			WHEN 'H000696' THEN
			'华晨电力'
			WHEN 'G000290' THEN
			'高安城投'
			WHEN 'S001510' THEN
			'汇能物流'
			WHEN 'S001511' THEN
			'禾泽城建'
			WHEN 'S001512' THEN
			'金堂发展'
			WHEN 'S001513' THEN
			'光大绿色环保'
			WHEN 'S001514' THEN
			'天盈投资'
			WHEN 'Z001634' THEN
			'周口农商行'
			WHEN 'J000406' THEN
			'邗建集团'
			WHEN 'J000407' THEN
			'茅山湖旅游'
			WHEN 'Z001334' THEN
			'温岭村镇行'
			WHEN 'H000697' THEN
			'菏泽农商行'
			WHEN 'G000468' THEN
			'漓江农合行'
			WHEN 'N000297' THEN
			'南宁农信社'
			WHEN 'A000150' THEN
			'怀远农商行'
			WHEN 'S001023' THEN
			'射洪农商行'
			WHEN 'S000938' THEN
			'永济农商行'
			WHEN 'F000157' THEN
			'颍淮农商行'
			WHEN 'Z000854' THEN
			'中铁交通'
			WHEN 'Y000293' THEN
			'垣曲农商行'
			WHEN 'X000272' THEN
			'信达投资'
			WHEN 'B000273' THEN
			'首钢股份'
			WHEN 'N000250' THEN
			'内蒙古能源发电'
			WHEN 'L000172' THEN
			'泸州基建'
			WHEN 'H000300' THEN
			'河南日报'
			WHEN 'X000273' THEN
			'新余惠民'
			WHEN 'Z000662' THEN
			'古纤道新材料'
			WHEN 'C000206' THEN
			'万盛水务资管'
			WHEN 'K000032' THEN
			'昆山交发'
			WHEN 'S000570' THEN
			'陕西保障性住房建设工程'
			WHEN 'S000421' THEN
			'寿光城建投'
			WHEN 'T000240' THEN
			'高教投资'
			WHEN 'D000167' THEN
			'花园口投资'
			WHEN 'G000279' THEN
			'国电东北电力'
			WHEN 'Z001119' THEN
			'中房成都'
			WHEN 'W000133' THEN
			'金滩投资'
			WHEN 'T000307' THEN
			'特一药业'
			WHEN 'J000752' THEN
			'佳都科技'
			WHEN 'D000168' THEN
			'都匀国资'
			WHEN 'D000241' THEN
			'大荔城市开发'
			WHEN 'S001254' THEN
			'鼎益融资租赁'
			WHEN 'L000091' THEN
			'龙岩汇金'
			WHEN 'Z000663' THEN
			'中信银行龙岩分行'
			WHEN 'L000253' THEN
			'丽水南城投资'
			WHEN 'B000233' THEN
			'本钢板材'
			WHEN 'D000089' THEN
			'顺兴投资'
			WHEN 'B000234' THEN
			'本钢集团'
			WHEN 'Z000664' THEN
			'宜兴环保科技'
			WHEN 'H000724' THEN
			'侨兴电讯'
			WHEN 'H000725' THEN
			'侨兴电信'
			WHEN 'Z001635' THEN
			'中化商业保理'
			WHEN 'F000158' THEN
			'飞马控股'
			WHEN 'H000698' THEN
			'华讯方舟'
			WHEN 'Z001437' THEN
			'资中农信社'
			WHEN 'J000696' THEN
			'珲春农商行'
			WHEN 'C000331' THEN
			'红山农信社'
			WHEN 'C000332' THEN
			'长顺农信社'
			WHEN 'B000338' THEN
			'新东安'
			WHEN 'S000651' THEN
			'襄矿集团'
			WHEN 'J000617' THEN
			'扬子江国际冶金'
			WHEN 'T000208' THEN
			'鑫海投资'
			WHEN 'S001372' THEN
			'漕湖产业'
			WHEN 'D000113' THEN
			'当阳鑫源投资'
			WHEN 'J000641' THEN
			'东北袜业园'
			WHEN 'L000115' THEN
			'渌江集团'
			WHEN 'Z001564' THEN
			'中兵融资租赁'
			WHEN 'Z000665' THEN
			'重庆国际物流'
			WHEN 'S000422' THEN
			'任城融鑫'
			WHEN 'H000301' THEN
			'葫芦岛银行'
			WHEN 'S001255' THEN
			'天健集团'
			WHEN 'G000577' THEN
			'溢多利'
			WHEN 'Z000666' THEN
			'湛江基建'
			WHEN 'D000242' THEN
			'大唐发电'
			WHEN 'C000333' THEN
			'松山农商行'
			WHEN 'H000789' THEN
			'卢氏农商行'
			WHEN 'C000334' THEN
			'虞山建设'
			WHEN 'S001150' THEN
			'双鸽集团'
			WHEN 'B000348' THEN
			'包头农商行'
			WHEN 'N000298' THEN
			'邕宁农信社'
			WHEN 'X000372' THEN
			'淮海农商行'
			WHEN 'T000278' THEN
			'天泽信息'
			WHEN 'A000188' THEN
			'繁昌农商行'
			WHEN 'N000201' THEN
			'均胜电子'
			WHEN 'A000189' THEN
			'铜陵铜源村镇行'
			WHEN 'X000418' THEN
			'项城农商行'
			WHEN 'C000094' THEN
			'郴州产投'
			WHEN 'Z000667' THEN
			'资阳水务投资'
			WHEN 'G000325' THEN
			'国测集团'
			WHEN 'Z000979' THEN
			'邮储银行长治分行'
			WHEN 'T000318' THEN
			'娄城高新'
			WHEN 'J000753' THEN
			'环城农商行'
			WHEN 'S000969' THEN
			'申迪集团'
			WHEN 'Y000376' THEN
			'杨凌城投公司'
			WHEN 'P000050' THEN
			'平临高速'
			WHEN 'Y000182' THEN
			'扬州鑫域建设'
			WHEN 'Y000183' THEN
			'余姚高铁建设'
			WHEN 'J000754' THEN
			'江油星乙停车场管理'
			WHEN 'S001184' THEN
			'北信瑞丰'
			WHEN 'X000491' THEN
			'白鹭'
			WHEN 'T000216' THEN
			'华诚医学集团'
			WHEN 'A000096' THEN
			'安吉国控'
			WHEN 'C000155' THEN
			'香城城市发展'
			WHEN 'M000034' THEN
			'湄潭工业园投资'
			WHEN 'C000156' THEN
			'麻柳沿江投资'
			WHEN 'C000275' THEN
			'渝富集团'
			WHEN 'X000186' THEN
			'徐州交通集团'
			WHEN 'H000699' THEN
			'河池国投'
			WHEN 'Z000829' THEN
			'招行徐州分行'
			WHEN 'Z001304' THEN
			'中金期货'
			WHEN 'Q000180' THEN
			'前海租赁'
			WHEN 'S001024' THEN
			'遂州农信社'
			WHEN 'Y000430' THEN
			'元石保理'
			WHEN 'G000226' THEN
			'丝纺集团'
			WHEN 'T000133' THEN
			'天汽集团'
			WHEN 'S000423' THEN
			'顺灏股份'
			WHEN 'L000254' THEN
			'蓝思科技'
			WHEN 'S001151' THEN
			'恒融保理'
			WHEN 'Y000377' THEN
			'昌宁农商行'
			WHEN 'H000874' THEN
			'凯龙股份'
			WHEN 'M000064' THEN
			'摩根大通'
			WHEN 'B000403' THEN
			'比亚迪汽车金融'
			WHEN 'S001515' THEN
			'思特奇'
			WHEN 'B000241' THEN
			'金一文化'
			WHEN 'S000674' THEN
			'昊元集团'
			WHEN 'S000675' THEN
			'百业源投资'
			WHEN 'Z001438' THEN
			'肇源祥生建设'
			WHEN 'S001516' THEN
			'于都农商行'
			WHEN 'Y000357' THEN
			'弋阳建投'
			WHEN 'B000386' THEN
			'鑫大禹'
			WHEN 'X000413' THEN
			'新凤祥'
			WHEN 'X000492' THEN
			'东南城建'
			WHEN 'J000755' THEN
			'建德城投'
			WHEN 'S001152' THEN
			'射洪国资'
			WHEN 'S001517' THEN
			'兴航城乡建设'
			WHEN 'S001518' THEN
			'播州交建'
			WHEN 'W000265' THEN
			'当代科技'
			WHEN 'W000266' THEN
			'无锡国家工业设计园'
			WHEN 'N000360' THEN
			'北仑建投'
			WHEN 'T000333' THEN
			'通联数据'
			WHEN 'B000404' THEN
			'宝丰发展投资'
			WHEN 'Y000378' THEN
			'云南能投'
			WHEN 'X000433' THEN
			'厦门天地公司'
			WHEN 'L000149' THEN
			'溧阳城东农业科技'
			WHEN 'S001519' THEN
			'甘李药业'
			WHEN 'S001520' THEN
			'农科集团'
			WHEN 'T000217' THEN
			'西青经发'
			WHEN 'S001521' THEN
			'亚投行'
			WHEN 'B000387' THEN
			'北大科技园'
			WHEN 'J000618' THEN
			'加拿大银行'
			WHEN 'T000368' THEN
			'芦茨慢'
			WHEN 'A000185' THEN
			'铁路发展基金'
			WHEN 'C000343' THEN
			'南州建设'
			WHEN 'S001522' THEN
			'金杜(深圳)'
			WHEN 'Z001428' THEN
			'舟山海城建投'
			WHEN 'S001523' THEN
			'三井住友银行'
			WHEN 'S001185' THEN
			'山东农信社'
			WHEN 'C000396' THEN
			'晋陵集团'
			WHEN 'S007289' THEN
			'颍上农商银行'
			WHEN 'S007290' THEN
			'六盘水旅投'
			WHEN 'S007291' THEN
			'聚石化学'
			WHEN 'S007292' THEN
			'三友联众'
			WHEN 'S007293' THEN
			'海优新材'
			WHEN 'S007294' THEN
			'银河微电'
			WHEN 'S007295' THEN
			'中辰股份'
			WHEN 'J000497' THEN
			'筑富实业'
			WHEN 'S007296' THEN
			'南湖城建投'
			WHEN 'S007297' THEN
			'前海巨晟商保'
			WHEN 'S007298' THEN
			'怡海易诺投管'
			WHEN 'S007299' THEN
			'西北院'
			WHEN 'C000335' THEN
			'小米小额贷款'
			WHEN 'G000578' THEN
			'航新科技'
			WHEN 'S001524' THEN
			'中矿资源'
			WHEN 'B000405' THEN
			'万邦达'
			WHEN 'X000206' THEN
			'西安水务'
			WHEN 'J000697' THEN
			'江苏软件园'
			WHEN 'J000724' THEN
			'新泉股份'
			WHEN 'Z000893' THEN
			'建行三峡分行'
			WHEN 'Z000894' THEN
			'中信银行天水支行'
			WHEN 'G000326' THEN
			'贵州交建集团'
			WHEN 'W000162' THEN
			'梁溪经发'
			WHEN 'Y000164' THEN
			'宜都国通'
			WHEN 'H000427' THEN
			'杭州地铁'
			WHEN 'W000146' THEN
			'黄陂城投'
			WHEN 'S001525' THEN
			'福鞍控股'
			WHEN 'S001526' THEN
			'商投集团'
			WHEN 'S001527' THEN
			'中证融担'
			WHEN 'S000598' THEN
			'安康集团'
			WHEN 'H000461' THEN
			'华夏资本管理'
			WHEN 'H000875' THEN
			'嘉康建工'
			WHEN 'J000408' THEN
			'大丰农商行'
			WHEN 'S001528' THEN
			'华夏银行深圳分行'
			WHEN 'S001529' THEN
			'天达共和'
			WHEN 'S000676' THEN
			'山东钢铁'
			WHEN 'T000241' THEN
			'天安人寿'
			WHEN 'A000111' THEN
			'大家人寿'
			WHEN 'Z001120' THEN
			'武义农商行'
			WHEN 'J000498' THEN
			'邳州农商行'
			WHEN 'S007300' THEN
			'盈建科'
			WHEN 'S007301' THEN
			'安联公司'
			WHEN 'S007302' THEN
			'中诺保理深圳'
			WHEN 'J000499' THEN
			'惠金建投'
			WHEN 'S007303' THEN
			'诚锋实业'
			WHEN 'S007304' THEN
			'丰城新城投建'
			WHEN 'X000274' THEN
			'幸福人寿'
			WHEN 'H000790' THEN
			'鹤岗城投'
			WHEN 'M000039' THEN
			'梅县伟业基建'
			WHEN 'J000365' THEN
			'凤凰股份'
			WHEN 'Y000165' THEN
			'云南地矿'
			WHEN 'S001530' THEN
			'世纪互联'
			WHEN 'X000232' THEN
			'新疆政府'
			WHEN 'K000043' THEN
			'昆仑银行'
			WHEN 'X000233' THEN
			'天山农商行'
			WHEN 'S001256' THEN
			'爱建集团'
			WHEN 'Z001485' THEN
			'中国化学'
			WHEN 'R000070' THEN
			'顺兴投资'
			WHEN 'B000406' THEN
			'北京一方'
			WHEN 'H000829' THEN
			'汴京农商行'
			WHEN 'S000677' THEN
			'铁骑力士集团'
			WHEN 'D000144' THEN
			'东旭光电'
			WHEN 'H000484' THEN
			'华东医药'
			WHEN 'Z001000' THEN
			'中国远大集团'
			WHEN 'J000366' THEN
			'中联物流'
			WHEN 'Q000080' THEN
			'胶州湾发展集团'
			WHEN 'H000876' THEN
			'临江投资'
			WHEN 'X000434' THEN
			'兴业资管'
			WHEN 'S001257' THEN
			'中曼控股'
			WHEN 'C000365' THEN
			'曹妃甸国控投资'
			WHEN 'S001258' THEN
			'苏州高新有轨电车'
			WHEN 'S001531' THEN
			'皖仪科技'
			WHEN 'S001532' THEN
			'胜蓝股份'
			WHEN 'S001533' THEN
			'首都在线'
			WHEN 'S001534' THEN
			'秦川物联'
			WHEN 'S001535' THEN
			'国盛智科'
			WHEN 'B000391' THEN
			'久其科技'
			WHEN 'A000151' THEN
			'固镇农商行'
			WHEN 'S001025' THEN
			'成武农商行'
			WHEN 'L000227' THEN
			'乐至农商行'
			WHEN 'Z001121' THEN
			'中江国际'
			WHEN 'S007305' THEN
			'中英科技'
			WHEN 'S007306' THEN
			'新炬网络'
			WHEN 'C000207' THEN
			'潼南城建'
			WHEN 'Z001122' THEN
			'中荷人寿'
			WHEN 'F000072' THEN
			'平天湖控股'
			WHEN 'S007307' THEN
			'遂昌经投发'
			WHEN 'S007308' THEN
			'遂昌建投发'
			WHEN 'S007309' THEN
			'遂昌两山投资'
			WHEN 'S007310' THEN
			'易生活智慧'
			WHEN 'S007311' THEN
			'遂昌城建发'
			WHEN 'S007312' THEN
			'长沙临空产投'
			WHEN 'T000242' THEN
			'泰安银行'
			WHEN 'H000556' THEN
			'华融天泽'
			WHEN 'J000500' THEN
			'泗洪农商行'
			WHEN 'Z000895' THEN
			'苍南农商行'
			WHEN 'S001536' THEN
			'泛微网络'
			WHEN 'S001537' THEN
			'比音勒芬'
			WHEN 'S001538' THEN
			'捷安高科'
			WHEN 'S001539' THEN
			'津联控股'
			WHEN 'S001540' THEN
			'柳州轨交'
			WHEN 'H000302' THEN
			'河北广电网络集团'
			WHEN 'Z000668' THEN
			'重庆双福建设'
			WHEN 'W000097' THEN
			'光谷联合'
			WHEN 'S001026' THEN
			'原龙投资'
			WHEN 'S000970' THEN
			'宇顺电子'
			WHEN 'X000362' THEN
			'新城发展'
			WHEN 'X000373' THEN
			'塔城国际'
			WHEN 'S000971' THEN
			'上银瑞金资管'
			WHEN 'G000535' THEN
			'龙里农商行'
			WHEN 'S001541' THEN
			'泉港国投'
			WHEN 'B000339' THEN
			'宜居开发'
			WHEN 'B000340' THEN
			'金地建投'
			WHEN 'S001542' THEN
			'路桥金投'
			WHEN 'S001543' THEN
			'恒金实业'
			WHEN 'S001544' THEN
			'苏高科'
			WHEN 'S001545' THEN
			'鞍山农商行'
			WHEN 'S001546' THEN
			'启东沿海集团'
			WHEN 'Y000315' THEN
			'沂南城建'
			WHEN 'S001547' THEN
			'瑞华上海分所'
			WHEN 'G000478' THEN
			'福达控股集团'
			WHEN 'S001548' THEN
			'浦发银行石家庄分行'
			WHEN 'S001549' THEN
			'白云山'
			WHEN 'H000817' THEN
			'晋商资产'
			WHEN 'C000276' THEN
			'皖东农商行'
			WHEN 'S007313' THEN
			'荆州投资'
			WHEN 'S007314' THEN
			'温州欧飞'
			WHEN 'S007315' THEN
			'四川银行'
			WHEN 'S007316' THEN
			'宜宾农商行'
			WHEN 'S007317' THEN
			'遂昌农商行'
			WHEN 'Y000229' THEN
			'云南城乡投'
			WHEN 'S007318' THEN
			'药易购'
			WHEN 'S007319' THEN
			'明珠保理'
			WHEN 'S007320' THEN
			'工行广东分行'
			WHEN 'J000501' THEN
			'宝应农商行'
			WHEN 'Z001123' THEN
			'中信信诚'
			WHEN 'B000274' THEN
			'毕节碧海建投'
			WHEN 'Z001124' THEN
			'张家港城投'
			WHEN 'Z001125' THEN
			'中冶置业集团'
			WHEN 'K000050' THEN
			'卡特彼勒'
			WHEN 'C000208' THEN
			'鼎力投资'
			WHEN 'S007321' THEN
			'中铁金控'
			WHEN 'C000131' THEN
			'兴蓉环境'
			WHEN 'S001550' THEN
			'西安工投'
			WHEN 'S001551' THEN
			'华兴源创'
			WHEN 'S001552' THEN
			'睿创微纳'
			WHEN 'S001553' THEN
			'天准科技'
			WHEN 'S001554' THEN
			'容百科技'
			WHEN 'S001555' THEN
			'杭可科技'
			WHEN 'S001556' THEN
			'光峰科技'
			WHEN 'S001557' THEN
			'澜起科技'
			WHEN 'S001558' THEN
			'中国通号'
			WHEN 'S001559' THEN
			'福光股份'
			WHEN 'S001560' THEN
			'新光光电'
			WHEN 'S001561' THEN
			'中微公司'
			WHEN 'S001562' THEN
			'交控科技'
			WHEN 'S001563' THEN
			'心脉医疗'
			WHEN 'S001564' THEN
			'乐鑫科技'
			WHEN 'S001565' THEN
			'安集科技'
			WHEN 'S001566' THEN
			'方邦股份'
			WHEN 'S001567' THEN
			'奥福环保'
			WHEN 'S001568' THEN
			'瀚川智能'
			WHEN 'S001569' THEN
			'安恒信息'
			WHEN 'S001570' THEN
			'杰普特'
			WHEN 'S001571' THEN
			'洁特生物'
			WHEN 'S001572' THEN
			'沃尔德'
			WHEN 'S001573' THEN
			'南微医学'
			WHEN 'S001574' THEN
			'山石网科'
			WHEN 'S001575' THEN
			'天宜上佳'
			WHEN 'S001576' THEN
			'传音控股'
			WHEN 'S001577' THEN
			'芯源微'
			WHEN 'S001578' THEN
			'当虹科技'
			WHEN 'S001579' THEN
			'佳华科技'
			WHEN 'S001580' THEN
			'宝兰德'
			WHEN 'S001581' THEN
			'航天宏图'
			WHEN 'S001582' THEN
			'热景生物'
			WHEN 'S001583' THEN
			'龙软科技'
			WHEN 'S001584' THEN
			'映翰通'
			WHEN 'S001585' THEN
			'兴图新科'
			WHEN 'S001586' THEN
			'三友医疗'
			WHEN 'S001587' THEN
			'紫晶存储'
			WHEN 'S001588' THEN
			'虹软科技'
			WHEN 'S001589' THEN
			'嘉必优'
			WHEN 'S001590' THEN
			'瑞松科技'
			WHEN 'S001591' THEN
			'申联生物'
			WHEN 'S001592' THEN
			'晶晨股份'
			WHEN 'S001593' THEN
			'威胜信息'
			WHEN 'S001594' THEN
			'三达膜'
			WHEN 'S001595' THEN
			'赛诺医疗'
			WHEN 'S001596' THEN
			'金山办公'
			WHEN 'S001597' THEN
			'天奈科技'
			WHEN 'S001598' THEN
			'普元信息'
			WHEN 'S001599' THEN
			'西部超导'
			WHEN 'S001600' THEN
			'聚辰股份'
			WHEN 'S001601' THEN
			'沪硅产业'
			WHEN 'S001602' THEN
			'中国电研'
			WHEN 'S001603' THEN
			'清溢光电'
			WHEN 'S001604' THEN
			'海尔生物'
			WHEN 'S001605' THEN
			'松井股份'
			WHEN 'S001606' THEN
			'优刻得'
			WHEN 'S001607' THEN
			'有方科技'
			WHEN 'S001608' THEN
			'安博通'
			WHEN 'S001609' THEN
			'石头科技'
			WHEN 'S001610' THEN
			'百奥泰'
			WHEN 'S001611' THEN
			'万德斯'
			WHEN 'S001612' THEN
			'八亿时空'
			WHEN 'S001613' THEN
			'广大特材'
			WHEN 'S001614' THEN
			'柏楚电子'
			WHEN 'S001615' THEN
			'南新制药'
			WHEN 'S001616' THEN
			'卓越新能'
			WHEN 'S001617' THEN
			'佰仁医疗'
			WHEN 'S001618' THEN
			'久日新材'
			WHEN 'S001619' THEN
			'华峰测控'
			WHEN 'S001620' THEN
			'美迪西'
			WHEN 'S001621' THEN
			'道通科技'
			WHEN 'S001622' THEN
			'江苏北人'
			WHEN 'S001623' THEN
			'成都先导'
			WHEN 'S001624' THEN
			'开普云'
			WHEN 'S001625' THEN
			'神工股份'
			WHEN 'S001626' THEN
			'卓易信息'
			WHEN 'S001627' THEN
			'泽璟制药'
			WHEN 'S001628' THEN
			'华特气体'
			WHEN 'S001629' THEN
			'特宝生物'
			WHEN 'S001630' THEN
			'鸿泉物联'
			WHEN 'S001631' THEN
			'东方生物'
			WHEN 'S001632' THEN
			'长阳科技'
			WHEN 'S001633' THEN
			'联瑞新材'
			WHEN 'S001634' THEN
			'迈得医疗'
			WHEN 'S001635' THEN
			'燕麦科技'
			WHEN 'S001636' THEN
			'财富趋势'
			WHEN 'S001637' THEN
			'微芯生物'
			WHEN 'S001638' THEN
			'铂力特'
			WHEN 'S001639' THEN
			'建龙微纳'
			WHEN 'S001640' THEN
			'祥生医疗'
			WHEN 'S001641' THEN
			'德马科技'
			WHEN 'S001642' THEN
			'华熙生物'
			WHEN 'S001643' THEN
			'光云科技'
			WHEN 'S001644' THEN
			'昊海生科'
			WHEN 'S001645' THEN
			'晶丰明源'
			WHEN 'S001646' THEN
			'致远互联'
			WHEN 'S001647' THEN
			'嘉元科技'
			WHEN 'S001648' THEN
			'普门科技'
			WHEN 'S001649' THEN
			'华润微'
			WHEN 'S001650' THEN
			'赛特新材'
			WHEN 'S001651' THEN
			'硕世生物'
			WHEN 'S001652' THEN
			'金科环境'
			WHEN 'S001653' THEN
			'奥特维'
			WHEN 'S001654' THEN
			'吉贝尔'
			WHEN 'S001655' THEN
			'凌志软件'
			WHEN 'S001656' THEN
			'金博股份'
			WHEN 'S001657' THEN
			'中直股份'
			WHEN 'S001658' THEN
			'中国联通'
			WHEN 'S001659' THEN
			'宁波联合'
			WHEN 'S001660' THEN
			'浙江广厦'
			WHEN 'S001661' THEN
			'万东医疗'
			WHEN 'S001662' THEN
			'五矿发展'
			WHEN 'S001663' THEN
			'古越龙山'
			WHEN 'S001664' THEN
			'海信视像'
			WHEN 'S001665' THEN
			'国投资本'
			WHEN 'S001666' THEN
			'华润双鹤'
			WHEN 'S001667' THEN
			'浙江富润'
			WHEN 'S001668' THEN
			'凤凰光学'
			WHEN 'S001669' THEN
			'中船科技'
			WHEN 'S001670' THEN
			'上海梅林'
			WHEN 'S001671' THEN
			'新疆天业'
			WHEN 'S001672' THEN
			'澄星股份'
			WHEN 'S001673' THEN
			'金花股份'
			WHEN 'S001674' THEN
			'东风科技'
			WHEN 'S001675' THEN
			'博信股份'
			WHEN 'S001676' THEN
			'中视传媒'
			WHEN 'S001677' THEN
			'明天科技'
			WHEN 'S001678' THEN
			'精密股份'
			WHEN 'S001679' THEN
			'湘财股份'
			WHEN 'S001680' THEN
			'云天化'
			WHEN 'S001681' THEN
			'开创国际'
			WHEN 'S001682' THEN
			'林海股份'
			WHEN 'S001683' THEN
			'明星电力'
			WHEN 'S001684' THEN
			'青山纸业'
			WHEN 'S001685' THEN
			'美尔雅'
			WHEN 'S001686' THEN
			'浙江东日'
			WHEN 'S001687' THEN
			'东睦股份'
			WHEN 'S001688' THEN
			'中国卫星'
			WHEN 'S001689' THEN
			'长江投资'
			WHEN 'S001690' THEN
			'金健米业'
			WHEN 'S001691' THEN
			'弘业股份'
			WHEN 'S001692' THEN
			'波导股份'
			WHEN 'S001693' THEN
			'国网信通'
			WHEN 'S001694' THEN
			'重庆啤酒'
			WHEN 'S001695' THEN
			'乐凯胶片'
			WHEN 'S001696' THEN
			'浪莎股份'
			WHEN 'S001697' THEN
			'中青旅'
			WHEN 'S001698' THEN
			'国创能源'
			WHEN 'S001699' THEN
			'商赢环球'
			WHEN 'S001700' THEN
			'长春一东'
			WHEN 'S001701' THEN
			'廊坊发展'
			WHEN 'S001702' THEN
			'中国船舶'
			WHEN 'S001703' THEN
			'航天机电'
			WHEN 'S001704' THEN
			'维科技术'
			WHEN 'S001705' THEN
			'华升股份'
			WHEN 'S001706' THEN
			'中体产业'
			WHEN 'S001707' THEN
			'大龙地产'
			WHEN 'S001708' THEN
			'巨化股份'
			WHEN 'S001709' THEN
			'天坛生物'
			WHEN 'S001710' THEN
			'中闽能源'
			WHEN 'S001711' THEN
			'新日恒力'
			WHEN 'S001712' THEN
			'联美控股'
			WHEN 'S001713' THEN
			'上海贝岭'
			WHEN 'S001714' THEN
			'东安动力'
			WHEN 'S001715' THEN
			'云大科技'
			WHEN 'S001716' THEN
			'佳通轮胎'
			WHEN 'S001717' THEN
			'光电股份'
			WHEN 'S001718' THEN
			'莲花健康'
			WHEN 'S001719' THEN
			'华资实业'
			WHEN 'S001720' THEN
			'长城电工'
			WHEN 'S001721' THEN
			'创兴资源'
			WHEN 'S001722' THEN
			'大唐电信'
			WHEN 'S001723' THEN
			'金种子酒'
			WHEN 'S001724' THEN
			'生物股份'
			WHEN 'S001725' THEN
			'哈空调'
			WHEN 'S001726' THEN
			'有研新材'
			WHEN 'S001727' THEN
			'安彩高科'
			WHEN 'S001728' THEN
			'罗顿发展'
			WHEN 'S001729' THEN
			'西藏药业'
			WHEN 'S001730' THEN
			'江泉实业'
			WHEN 'S001731' THEN
			'亚星客车'
			WHEN 'S001732' THEN
			'长春经开'
			WHEN 'S001733' THEN
			'浙江医药'
			WHEN 'S001734' THEN
			'全柴动力'
			WHEN 'S001735' THEN
			'天津松江'
			WHEN 'S001736' THEN
			'昌九生化'
			WHEN 'S001737' THEN
			'城市传媒'
			WHEN 'S001738' THEN
			'沧州大化'
			WHEN 'S001739' THEN
			'金鹰股份'
			WHEN 'S001740' THEN
			'山水文化'
			WHEN 'S001741' THEN
			'民丰特纸'
			WHEN 'S001742' THEN
			'铜峰电子'
			WHEN 'S001743' THEN
			'海南椰岛'
			WHEN 'S001744' THEN
			'时代万恒'
			WHEN 'S001745' THEN
			'中昌数据'
			WHEN 'S001746' THEN
			'青海华鼎'
			WHEN 'S001747' THEN
			'成城股份'
			WHEN 'S001748' THEN
			'陕西建工'
			WHEN 'S001749' THEN
			'南纺股份'
			WHEN 'S001750' THEN
			'冠农股份'
			WHEN 'S001751' THEN
			'中恒集团'
			WHEN 'S001752' THEN
			'鑫科材料'
			WHEN 'S001753' THEN
			'大湖股份'
			WHEN 'S001754' THEN
			'首旅酒店'
			WHEN 'S001755' THEN
			'阳光照明'
			WHEN 'S001756' THEN
			'北方股份'
			WHEN 'S001757' THEN
			'景谷林业'
			WHEN 'S001758' THEN
			'开开实业'
			WHEN 'S001759' THEN
			'武昌鱼'
			WHEN 'S001760' THEN
			'恒瑞医药'
			WHEN 'S001761' THEN
			'中央商场'
			WHEN 'S001762' THEN
			'太化股份'
			WHEN 'S001763' THEN
			'羚锐制药'
			WHEN 'S001764' THEN
			'国光瓷业'
			WHEN 'S001765' THEN
			'江苏舜天'
			WHEN 'S001766' THEN
			'亿阳信通'
			WHEN 'S001767' THEN
			'西水股份'
			WHEN 'S001768' THEN
			'三峡新材'
			WHEN 'S001769' THEN
			'安迪苏'
			WHEN 'S001770' THEN
			'南化股份'
			WHEN 'S001771' THEN
			'标准股份'
			WHEN 'S001772' THEN
			'恒顺醋业'
			WHEN 'S001773' THEN
			'商业城'
			WHEN 'S001774' THEN
			'华泰股份'
			WHEN 'S001775' THEN
			'荣华实业'
			WHEN 'S001776' THEN
			'农发种业'
			WHEN 'S001777' THEN
			'上海家化'
			WHEN 'S001778' THEN
			'新力金融'
			WHEN 'S001779' THEN
			'亚星化学'
			WHEN 'S001780' THEN
			'大东方'
			WHEN 'S001781' THEN
			'中盐化工'
			WHEN 'S001782' THEN
			'中新药业'
			WHEN 'S001783' THEN
			'天通股份'
			WHEN 'S001784' THEN
			'美克家居'
			WHEN 'S001785' THEN
			'西藏珠峰'
			WHEN 'S001786' THEN
			'航天动力'
			WHEN 'S001787' THEN
			'长江通信'
			WHEN 'S001788' THEN
			'富通昭和'
			WHEN 'S001789' THEN
			'亚宝药业'
			WHEN 'S001790' THEN
			'旭光股份'
			WHEN 'S001791' THEN
			'精伦电子'
			WHEN 'S001792' THEN
			'国旅联合'
			WHEN 'S001793' THEN
			'新农开发'
			WHEN 'S001794' THEN
			'通葡股份'
			WHEN 'S001795' THEN
			'宁波韵升'
			WHEN 'S001796' THEN
			'红星发展'
			WHEN 'S001797' THEN
			'三房巷'
			WHEN 'S001798' THEN
			'万向德农'
			WHEN 'S001799' THEN
			'汉马科技'
			WHEN 'S001800' THEN
			'宝光股份'
			WHEN 'S001801' THEN
			'青海春天'
			WHEN 'S001802' THEN
			'广东明珠'
			WHEN 'S001803' THEN
			'山东金泰'
			WHEN 'S001804' THEN
			'海越能源'
			WHEN 'S001805' THEN
			'五矿资本'
			WHEN 'S001806' THEN
			'航发科技'
			WHEN 'S001807' THEN
			'盘江股份'
			WHEN 'S001808' THEN
			'退市海润'
			WHEN 'S001809' THEN
			'大有能源'
			WHEN 'S001810' THEN
			'安泰集团'
			WHEN 'S001811' THEN
			'天润乳业'
			WHEN 'S001812' THEN
			'华嵘控股'
			WHEN 'S001813' THEN
			'华鲁恒升'
			WHEN 'S001814' THEN
			'三元股份'
			WHEN 'S001815' THEN
			'冠豪高新'
			WHEN 'S001816' THEN
			'北方导航'
			WHEN 'S001817' THEN
			'国机通用'
			WHEN 'S001818' THEN
			'涪陵电力'
			WHEN 'S001819' THEN
			'贵研铂业'
			WHEN 'S001820' THEN
			'九有股份'
			WHEN 'S001821' THEN
			'百利电气'
			WHEN 'S001822' THEN
			'风神股份'
			WHEN 'S001823' THEN
			'六国化工'
			WHEN 'S001824' THEN
			'华光环能'
			WHEN 'S001825' THEN
			'湘邮科技'
			WHEN 'S001826' THEN
			'科力远'
			WHEN 'S001827' THEN
			'千金药业'
			WHEN 'S001828' THEN
			'中国动力'
			WHEN 'S001829' THEN
			'扬农化工'
			WHEN 'S001830' THEN
			'天药股份'
			WHEN 'S001831' THEN
			'凤竹纺织'
			WHEN 'S001832' THEN
			'晋西车轴'
			WHEN 'S001833' THEN
			'航天晨光'
			WHEN 'S001834' THEN
			'华丽家族'
			WHEN 'S001835' THEN
			'西昌电力'
			WHEN 'S001836' THEN
			'香梨股份'
			WHEN 'S001837' THEN
			'方大特钢'
			WHEN 'S001838' THEN
			'国药股份'
			WHEN 'S001839' THEN
			'联环药业'
			WHEN 'S001840' THEN
			'国网英大'
			WHEN 'S001841' THEN
			'贵州茅台'
			WHEN 'S001842' THEN
			'文一科技'
			WHEN 'S001843' THEN
			'江南高纤'
			WHEN 'S001844' THEN
			'山东药玻'
			WHEN 'S001845' THEN
			'交大昂立'
			WHEN 'S001846' THEN
			'豫光金铅'
			WHEN 'S001847' THEN
			'未来股份'
			WHEN 'S001848' THEN
			'中国软件'
			WHEN 'S001849' THEN
			'亿晶光电'
			WHEN 'S001850' THEN
			'国发股份'
			WHEN 'S001851' THEN
			'狮头股份'
			WHEN 'S001852' THEN
			'新赛股份'
			WHEN 'S001853' THEN
			'莫高股份'
			WHEN 'S001854' THEN
			'时代出版'
			WHEN 'S001855' THEN
			'海航创新'
			WHEN 'S001856' THEN
			'天下秀'
			WHEN 'S001857' THEN
			'大西洋'
			WHEN 'S001858' THEN
			'老白干酒'
			WHEN 'S001859' THEN
			'金自天正'
			WHEN 'S001860' THEN
			'国睿科技'
			WHEN 'S001861' THEN
			'法拉电子'
			WHEN 'S001862' THEN
			'中珠医疗'
			WHEN 'S001863' THEN
			'恒生电子'
			WHEN 'S001864' THEN
			'信雅达'
			WHEN 'S001865' THEN
			'惠泉啤酒'
			WHEN 'S001866' THEN
			'祥源文化'
			WHEN 'S001867' THEN
			'克劳斯'
			WHEN 'S001868' THEN
			'大连圣亚'
			WHEN 'S001869' THEN
			'新安股份'
			WHEN 'S001870' THEN
			'光明乳业'
			WHEN 'S001871' THEN
			'熊猫金控'
			WHEN 'S001872' THEN
			'云赛智联'
			WHEN 'S001873' THEN
			'广汇物流'
			WHEN 'S001874' THEN
			'汇通能源'
			WHEN 'S001875' THEN
			'上海科技'
			WHEN 'S001876' THEN
			'中毅达'
			WHEN 'S001877' THEN
			'老凤祥'
			WHEN 'S001878' THEN
			'神奇制药'
			WHEN 'S001879' THEN
			'鹏起科技'
			WHEN 'S001880' THEN
			'丰华股份'
			WHEN 'S001881' THEN
			'金枫酒业'
			WHEN 'S001882' THEN
			'国新能源'
			WHEN 'S001883' THEN
			'氯碱化工'
			WHEN 'S001884' THEN
			'天宸股份'
			WHEN 'S001885' THEN
			'华谊集团'
			WHEN 'S001886' THEN
			'复旦复华'
			WHEN 'S001887' THEN
			'水仙电器'
			WHEN 'S001888' THEN
			'申达股份'
			WHEN 'S001889' THEN
			'新世界'
			WHEN 'S001890' THEN
			'华建集团'
			WHEN 'S001891' THEN
			'龙头股份'
			WHEN 'S001892' THEN
			'华联商厦'
			WHEN 'S001893' THEN
			'浙数文化'
			WHEN 'S001894' THEN
			'国新文化'
			WHEN 'S001895' THEN
			'号百控股'
			WHEN 'S001896' THEN
			'国嘉实业'
			WHEN 'S001897' THEN
			'同达创业'
			WHEN 'S001898' THEN
			'锦江投资'
			WHEN 'S001899' THEN
			'游久游戏'
			WHEN 'S001900' THEN
			'退市博元'
			WHEN 'S001901' THEN
			'闽越花雕'
			WHEN 'S001902' THEN
			'昂立教育'
			WHEN 'S001903' THEN
			'哈药股份'
			WHEN 'S001904' THEN
			'奥瑞德'
			WHEN 'S001905' THEN
			'鞍山合成'
			WHEN 'S001906' THEN
			'高斯达'
			WHEN 'S001907' THEN
			'华圣股份'
			WHEN 'S001908' THEN
			'航天通信'
			WHEN 'S001909' THEN
			'上海凤凰'
			WHEN 'S001910' THEN
			'上海普天'
			WHEN 'S001911' THEN
			'百川能源'
			WHEN 'S001912' THEN
			'中船防务'
			WHEN 'S001913' THEN
			'上海石化'
			WHEN 'S001914' THEN
			'上海三毛'
			WHEN 'S001915' THEN
			'亚通股份'
			WHEN 'S001916' THEN
			'大商股份'
			WHEN 'S001917' THEN
			'绿庭投资'
			WHEN 'S001918' THEN
			'匹凸匹'
			WHEN 'S001919' THEN
			'湖南天雁'
			WHEN 'S001920' THEN
			'数码测绘'
			WHEN 'S001921' THEN
			'工大高新'
			WHEN 'S001922' THEN
			'舍得酒业'
			WHEN 'S001923' THEN
			'三安光电'
			WHEN 'S001924' THEN
			'曲江文旅'
			WHEN 'S001925' THEN
			'生态农业'
			WHEN 'S001926' THEN
			'苏美达'
			WHEN 'S001927' THEN
			'南宁百货'
			WHEN 'S001928' THEN
			'大连热电'
			WHEN 'S001929' THEN
			'百花村'
			WHEN 'S001930' THEN
			'金牛化工'
			WHEN 'S001931' THEN
			'首商股份'
			WHEN 'S001932' THEN
			'鲁北化工'
			WHEN 'S001933' THEN
			'重庆百货'
			WHEN 'S001934' THEN
			'湖南海利'
			WHEN 'S001935' THEN
			'爱旭股份'
			WHEN 'S001936' THEN
			'北汽蓝谷'
			WHEN 'S001937' THEN
			'新华锦'
			WHEN 'S001938' THEN
			'兰州民百'
			WHEN 'S001939' THEN
			'一汽富维'
			WHEN 'S001940' THEN
			'闻泰科技'
			WHEN 'S001941' THEN
			'西藏旅游'
			WHEN 'S001942' THEN
			'哈慈股份'
			WHEN 'S001943' THEN
			'东方银星'
			WHEN 'S001944' THEN
			'锦江酒店'
			WHEN 'S001945' THEN
			'浪潮软件'
			WHEN 'S001946' THEN
			'长江传媒'
			WHEN 'S001947' THEN
			'中航沈飞'
			WHEN 'S001948' THEN
			'安徽合力'
			WHEN 'S001949' THEN
			'金荔科技'
			WHEN 'S001950' THEN
			'通策医疗'
			WHEN 'S001951' THEN
			'中国海防'
			WHEN 'S001952' THEN
			'园城黄金'
			WHEN 'S001953' THEN
			'运盛医疗'
			WHEN 'S001954' THEN
			'祥龙电业'
			WHEN 'S001955' THEN
			'广誉远'
			WHEN 'S001956' THEN
			'石油龙昌'
			WHEN 'S001957' THEN
			'汉商集团'
			WHEN 'S001958' THEN
			'南京熊猫'
			WHEN 'S001959' THEN
			'东方通信'
			WHEN 'S001960' THEN
			'水井坊'
			WHEN 'S001961' THEN
			'通宝能源'
			WHEN 'S001962' THEN
			'鲁银投资'
			WHEN 'S001963' THEN
			'新华百货'
			WHEN 'S001964' THEN
			'东方锅炉'
			WHEN 'S001965' THEN
			'达尔曼'
			WHEN 'S001966' THEN
			'宜宾纸业'
			WHEN 'S001967' THEN
			'钱江生化'
			WHEN 'S001968' THEN
			'科利华'
			WHEN 'S001969' THEN
			'渤海化学'
			WHEN 'S001970' THEN
			'福建水泥'
			WHEN 'S001971' THEN
			'悦达投资'
			WHEN 'S001972' THEN
			'退市昆机'
			WHEN 'S001973' THEN
			'济南高新'
			WHEN 'S001974' THEN
			'山西汾酒'
			WHEN 'S001975' THEN
			'神马股份'
			WHEN 'S001976' THEN
			'华夏大地'
			WHEN 'S001977' THEN
			'杭州解百'
			WHEN 'S001978' THEN
			'宏盛科技'
			WHEN 'S001979' THEN
			'中路股份'
			WHEN 'S001980' THEN
			'益民集团'
			WHEN 'S001981' THEN
			'兰生股份'
			WHEN 'S001982' THEN
			'人民同泰'
			WHEN 'S001983' THEN
			'香溢融通'
			WHEN 'S001984' THEN
			'第一医药'
			WHEN 'S001985' THEN
			'上海机电'
			WHEN 'S001986' THEN
			'易连实业'
			WHEN 'S001987' THEN
			'上海九百'
			WHEN 'S001988' THEN
			'上柴股份'
			WHEN 'S001989' THEN
			'上工申贝'
			WHEN 'S001990' THEN
			'丹化科技'
			WHEN 'S001991' THEN
			'同济科技'
			WHEN 'S001992' THEN
			'万里股份'
			WHEN 'S001993' THEN
			'华东电脑'
			WHEN 'S001994' THEN
			'海欣股份'
			WHEN 'S001995' THEN
			'中川国际'
			WHEN 'S001996' THEN
			'龙建股份'
			WHEN 'S001997' THEN
			'春兰股份'
			WHEN 'S001998' THEN
			'航天长峰'
			WHEN 'S001999' THEN
			'中天能源'
			WHEN 'S002000' THEN
			'宁波中百'
			WHEN 'S002001' THEN
			'中航高科'
			WHEN 'S002002' THEN
			'哈投股份'
			WHEN 'S002003' THEN
			'百大集团'
			WHEN 'S002004' THEN
			'通化东宝'
			WHEN 'S002005' THEN
			'梅雁吉祥'
			WHEN 'S002006' THEN
			'厦华电子'
			WHEN 'S002007' THEN
			'石化油服'
			WHEN 'S002008' THEN
			'洛阳玻璃'
			WHEN 'S002009' THEN
			'电科能源'
			WHEN 'S002010' THEN
			'北大科技'
			WHEN 'S002011' THEN
			'妙可蓝多'
			WHEN 'S002012' THEN
			'博闻科技'
			WHEN 'S002013' THEN
			'宏发股份'
			WHEN 'S002014' THEN
			'南京化纤'
			WHEN 'S002015' THEN
			'中房股份'
			WHEN 'S002016' THEN
			'大晟文化'
			WHEN 'S002017' THEN
			'航发动力'
			WHEN 'S002018' THEN
			'览海医疗'
			WHEN 'S002019' THEN
			'厦门空港'
			WHEN 'S002020' THEN
			'国美通讯'
			WHEN 'S002021' THEN
			'信联股份'
			WHEN 'S002022' THEN
			'雪天盐业'
			WHEN 'S002023' THEN
			'爱柯迪'
			WHEN 'S002024' THEN
			'广西广电'
			WHEN 'S002025' THEN
			'株冶集团'
			WHEN 'S002026' THEN
			'福成股份'
			WHEN 'S002027' THEN
			'内蒙一机'
			WHEN 'S002028' THEN
			'海油发展'
			WHEN 'S002029' THEN
			'郴电国际'
			WHEN 'S002030' THEN
			'恒源煤电'
			WHEN 'S002031' THEN
			'新五丰'
			WHEN 'S002032' THEN
			'健民集团'
			WHEN 'S002033' THEN
			'中国电影'
			WHEN 'S002034' THEN
			'北矿科技'
			WHEN 'S002035' THEN
			'惠而浦'
			WHEN 'S002036' THEN
			'建设机械'
			WHEN 'S002037' THEN
			'浙文互联'
			WHEN 'S002038' THEN
			'四创电子'
			WHEN 'S002039' THEN
			'广汽长丰'
			WHEN 'S002040' THEN
			'贵绳股份'
			WHEN 'S002041' THEN
			'马应龙'
			WHEN 'S002042' THEN
			'文山电力'
			WHEN 'S002043' THEN
			'晋亿实业'
			WHEN 'S002044' THEN
			'金陵饭店'
			WHEN 'S002045' THEN
			'文峰股份'
			WHEN 'S002046' THEN
			'陕西黑猫'
			WHEN 'S002047' THEN
			'山东出版'
			WHEN 'S002048' THEN
			'玉龙股份'
			WHEN 'S002049' THEN
			'西部黄金'
			WHEN 'S002050' THEN
			'国芳集团'
			WHEN 'S002051' THEN
			'中南传媒'
			WHEN 'S002052' THEN
			'恒立液压'
			WHEN 'S002053' THEN
			'华鼎股份'
			WHEN 'S002054' THEN
			'三江购物'
			WHEN 'S002055' THEN
			'海南橡胶'
			WHEN 'S002056' THEN
			'工业富联'
			WHEN 'S002057' THEN
			'龙江交通'
			WHEN 'S002058' THEN
			'海尔施'
			WHEN 'S002059' THEN
			'东材科技'
			WHEN 'S002060' THEN
			'吉鑫科技'
			WHEN 'S002061' THEN
			'华电重工'
			WHEN 'S002062' THEN
			'环旭电子'
			WHEN 'S002063' THEN
			'中国北车'
			WHEN 'S002064' THEN
			'秦港股份'
			WHEN 'S002065' THEN
			'绿色动力'
			WHEN 'S002066' THEN
			'三六零'
			WHEN 'S002067' THEN
			'陕鼓动力'
			WHEN 'S002068' THEN
			'怡球资源'
			WHEN 'S002069' THEN
			'通用股份'
			WHEN 'S002070' THEN
			'中新集团'
			WHEN 'S002071' THEN
			'大智慧'
			WHEN 'S002072' THEN
			'三星医疗'
			WHEN 'S002073' THEN
			'会稽山'
			WHEN 'S002074' THEN
			'上海电影'
			WHEN 'S002075' THEN
			'中国太保'
			WHEN 'S002076' THEN
			'长城军工'
			WHEN 'S002077' THEN
			'金田铜业'
			WHEN 'S002078' THEN
			'广电电气'
			WHEN 'S002079' THEN
			'嘉泽新能'
			WHEN 'S002080' THEN
			'旗滨集团'
			WHEN 'S002081' THEN
			'拓普集团'
			WHEN 'S002082' THEN
			'中国卫通'
			WHEN 'S002083' THEN
			'郑煤机'
			WHEN 'S002084' THEN
			'蓝科高新'
			WHEN 'S002085' THEN
			'新华文轩'
			WHEN 'S002086' THEN
			'京沪高铁'
			WHEN 'S002087' THEN
			'三峰环境'
			WHEN 'S002088' THEN
			'中国科传'
			WHEN 'S002089' THEN
			'长飞光纤'
			WHEN 'S002090' THEN
			'招商轮船'
			WHEN 'S002091' THEN
			'海天精工'
			WHEN 'S002092' THEN
			'亚星锚链'
			WHEN 'S002093' THEN
			'南方传媒'
			WHEN 'S002094' THEN
			'凤凰传媒'
			WHEN 'S002095' THEN
			'中国出版'
			WHEN 'S002096' THEN
			'苏垦农发'
			WHEN 'S002097' THEN
			'金钼股份'
			WHEN 'S002098' THEN
			'中国汽研'
			WHEN 'S002099' THEN
			'丰林集团'
			WHEN 'S002100' THEN
			'出版传媒'
			WHEN 'S002101' THEN
			'人民网'
			WHEN 'S002102' THEN
			'奥康国际'
			WHEN 'S002103' THEN
			'宏昌电子'
			WHEN 'S002104' THEN
			'龙宇燃油'
			WHEN 'S002105' THEN
			'晶方科技'
			WHEN 'S002106' THEN
			'联明股份'
			WHEN 'S002107' THEN
			'北特科技'
			WHEN 'S002108' THEN
			'万盛股份'
			WHEN 'S002109' THEN
			'合锻智能'
			WHEN 'S002110' THEN
			'创力集团'
			WHEN 'S002111' THEN
			'亚普股份'
			WHEN 'S002112' THEN
			'弘讯科技'
			WHEN 'S002113' THEN
			'新宏泰'
			WHEN 'S002114' THEN
			'中衡设计'
			WHEN 'S002115' THEN
			'中设集团'
			WHEN 'S002116' THEN
			'爱普股份'
			WHEN 'S002117' THEN
			'山东华鹏'
			WHEN 'S002118' THEN
			'新通联'
			WHEN 'S002119' THEN
			'大豪科技'
			WHEN 'S002120' THEN
			'赛福天'
			WHEN 'S002121' THEN
			'天鹅股份'
			WHEN 'S002122' THEN
			'安德利'
			WHEN 'S002123' THEN
			'德新交运'
			WHEN 'S002124' THEN
			'三维股份'
			WHEN 'S002125' THEN
			'如通股份'
			WHEN 'S002126' THEN
			'凯众股份'
			WHEN 'S002127' THEN
			'华立股份'
			WHEN 'S002128' THEN
			'泛微网络'
			WHEN 'S002129' THEN
			'新坐标'
			WHEN 'S002130' THEN
			'美思德'
			WHEN 'S002131' THEN
			'华脉科技'
			WHEN 'S002132' THEN
			'广州酒家'
			WHEN 'S002133' THEN
			'福达合金'
			WHEN 'S002134' THEN
			'科林电气'
			WHEN 'S002135' THEN
			'成都燃气'
			WHEN 'S002136' THEN
			'德邦股份'
			WHEN 'S002137' THEN
			'永吉股份'
			WHEN 'S002138' THEN
			'倍加洁'
			WHEN 'S002139' THEN
			'国检集团'
			WHEN 'S002140' THEN
			'禾望电气'
			WHEN 'S002141' THEN
			'音飞储存'
			WHEN 'S002142' THEN
			'振华股份'
			WHEN 'S002143' THEN
			'博通集成'
			WHEN 'S002144' THEN
			'海汽集团'
			WHEN 'S002145' THEN
			'乐惠国际'
			WHEN 'S002146' THEN
			'江化微'
			WHEN 'S002147' THEN
			'新疆火炬'
			WHEN 'S002148' THEN
			'剑桥科技'
			WHEN 'S002149' THEN
			'天成自控'
			WHEN 'S002150' THEN
			'先达股份'
			WHEN 'S002151' THEN
			'宁波精达'
			WHEN 'S002152' THEN
			'宏盛股份'
			WHEN 'S002153' THEN
			'越剑智能'
			WHEN 'S002154' THEN
			'新经典'
			WHEN 'S002155' THEN
			'长白山'
			WHEN 'S002156' THEN
			'川仪股份'
			WHEN 'S002157' THEN
			'汇嘉时代'
			WHEN 'S002158' THEN
			'横店影视'
			WHEN 'S002159' THEN
			'芯能科技'
			WHEN 'S002160' THEN
			'恒银科技'
			WHEN 'S002161' THEN
			'神驰机电'
			WHEN 'S002162' THEN
			'东方材料'
			WHEN 'S002163' THEN
			'康尼机电'
			WHEN 'S002164' THEN
			'海星股份'
			WHEN 'S002165' THEN
			'红蜻蜓'
			WHEN 'S002166' THEN
			'万林物流'
			WHEN 'S002167' THEN
			'共进股份'
			WHEN 'S002168' THEN
			'华培动力'
			WHEN 'S002169' THEN
			'中材节能'
			WHEN 'S002170' THEN
			'昭衍新药'
			WHEN 'S002171' THEN
			'华贸物流'
			WHEN 'S002172' THEN
			'春风动力'
			WHEN 'S002173' THEN
			'上海沪工'
			WHEN 'S002174' THEN
			'碳元科技'
			WHEN 'S002175' THEN
			'海量数据'
			WHEN 'S002176' THEN
			'康惠制药'
			WHEN 'S002177' THEN
			'养元饮品'
			WHEN 'S002178' THEN
			'拉夏贝尔'
			WHEN 'S002179' THEN
			'腾龙股份'
			WHEN 'S002180' THEN
			'上海亚虹'
			WHEN 'S002181' THEN
			'汇顶科技'
			WHEN 'S002182' THEN
			'科华控股'
			WHEN 'S002183' THEN
			'福达股份'
			WHEN 'S002184' THEN
			'渤海轮渡'
			WHEN 'S002185' THEN
			'莎普爱思'
			WHEN 'S002186' THEN
			'兰石重装'
			WHEN 'S002187' THEN
			'德创环保'
			WHEN 'S002188' THEN
			'圣龙股份'
			WHEN 'S002189' THEN
			'皇马科技'
			WHEN 'S002190' THEN
			'建研院'
			WHEN 'S002191' THEN
			'上机数控'
			WHEN 'S002192' THEN
			'华正新材'
			WHEN 'S002193' THEN
			'海容冷链'
			WHEN 'S002194' THEN
			'网达软件'
			WHEN 'S002195' THEN
			'汇得科技'
			WHEN 'S002196' THEN
			'公牛集团'
			WHEN 'S002197' THEN
			'日播时尚'
			WHEN 'S002198' THEN
			'保隆科技'
			WHEN 'S002199' THEN
			'迎驾贡酒'
			WHEN 'S002200' THEN
			'九华旅游'
			WHEN 'S002201' THEN
			'上海洗霸'
			WHEN 'S002202' THEN
			'快克股份'
			WHEN 'S002203' THEN
			'江山欧派'
			WHEN 'S002204' THEN
			'赛伍技术'
			WHEN 'S002205' THEN
			'爱婴室'
			WHEN 'S002206' THEN
			'元利科技'
			WHEN 'S002207' THEN
			'中贝通信'
			WHEN 'S002208' THEN
			'爱丽家居'
			WHEN 'S002209' THEN
			'济民制药'
			WHEN 'S002210' THEN
			'恒通股份'
			WHEN 'S002211' THEN
			'菲林格尔'
			WHEN 'S002212' THEN
			'雪峰科技'
			WHEN 'S002213' THEN
			'奥翔药业'
			WHEN 'S002214' THEN
			'格尔软件'
			WHEN 'S002215' THEN
			'移远通信'
			WHEN 'S002216' THEN
			'诺邦股份'
			WHEN 'S002217' THEN
			'浙江仙通'
			WHEN 'S002218' THEN
			'宏和科技'
			WHEN 'S002219' THEN
			'电魂网络'
			WHEN 'S002220' THEN
			'天龙股份'
			WHEN 'S002221' THEN
			'鸿远电子'
			WHEN 'S002222' THEN
			'松发股份'
			WHEN 'S002223' THEN
			'海鸥股份'
			WHEN 'S002224' THEN
			'银都股份'
			WHEN 'S002225' THEN
			'景津环保'
			WHEN 'S002226' THEN
			'赛腾股份'
			WHEN 'S002227' THEN
			'日盈电子'
			WHEN 'S002228' THEN
			'海天味业'
			WHEN 'S002229' THEN
			'泰瑞机器'
			WHEN 'S002230' THEN
			'斯达半导'
			WHEN 'S002231' THEN
			'永新光学'
			WHEN 'S002232' THEN
			'杭叉集团'
			WHEN 'S002233' THEN
			'华铁应急'
			WHEN 'S002234' THEN
			'鑫广绿环'
			WHEN 'S002235' THEN
			'得邦照明'
			WHEN 'S002236' THEN
			'华懋科技'
			WHEN 'S002237' THEN
			'维力医疗'
			WHEN 'S002238' THEN
			'金海高科'
			WHEN 'S002239' THEN
			'福鞍股份'
			WHEN 'S002240' THEN
			'诚邦股份'
			WHEN 'S002241' THEN
			'天味食品'
			WHEN 'S002242' THEN
			'派思股份'
			WHEN 'S002243' THEN
			'湘油泵'
			WHEN 'S002244' THEN
			'梅轮电梯'
			WHEN 'S002245' THEN
			'超讯通信'
			WHEN 'S002246' THEN
			'我乐家居'
			WHEN 'S002247' THEN
			'福蓉科技'
			WHEN 'S002248' THEN
			'依顿电子'
			WHEN 'S002249' THEN
			'上海雅仕'
			WHEN 'S002250' THEN
			'上海天洋'
			WHEN 'S002251' THEN
			'苏州龙杰'
			WHEN 'S002252' THEN
			'迪生力'
			WHEN 'S002253' THEN
			'杰克股份'
			WHEN 'S002254' THEN
			'浙江鼎力'
			WHEN 'S002255' THEN
			'四方科技'
			WHEN 'S002256' THEN
			'威尔药业'
			WHEN 'S002257' THEN
			'和顺石油'
			WHEN 'S002258' THEN
			'莱克电气'
			WHEN 'S002259' THEN
			'华菱精工'
			WHEN 'S002260' THEN
			'设计总院'
			WHEN 'S002261' THEN
			'华达科技'
			WHEN 'S002262' THEN
			'东珠生态'
			WHEN 'S002263' THEN
			'百傲化学'
			WHEN 'S002264' THEN
			'傲农生物'
			WHEN 'S002265' THEN
			'水星家纺'
			WHEN 'S002266' THEN
			'日出东方'
			WHEN 'S002267' THEN
			'辰欣药业'
			WHEN 'S002268' THEN
			'今世缘'
			WHEN 'S002269' THEN
			'亚士创能'
			WHEN 'S002270' THEN
			'三美股份'
			WHEN 'S002271' THEN
			'易德龙'
			WHEN 'S002272' THEN
			'顶点软件'
			WHEN 'S002273' THEN
			'惠达卫浴'
			WHEN 'S002274' THEN
			'广东骏亚'
			WHEN 'S002275' THEN
			'基蛋生物'
			WHEN 'S002276' THEN
			'元成股份'
			WHEN 'S002277' THEN
			'亚振家居'
			WHEN 'S002278' THEN
			'通达电气'
			WHEN 'S002279' THEN
			'万泰生物'
			WHEN 'S002280' THEN
			'新天然气'
			WHEN 'S002281' THEN
			'金辰股份'
			WHEN 'S002282' THEN
			'邦宝益智'
			WHEN 'S002283' THEN
			'信捷电气'
			WHEN 'S002284' THEN
			'集友股份'
			WHEN 'S002285' THEN
			'贵州三力'
			WHEN 'S002286' THEN
			'吉比特'
			WHEN 'S002287' THEN
			'九洲药业'
			WHEN 'S002288' THEN
			'勘设股份'
			WHEN 'S002289' THEN
			'风语筑'
			WHEN 'S002290' THEN
			'巨星农牧'
			WHEN 'S002291' THEN
			'科沃斯'
			WHEN 'S002292' THEN
			'展鹏科技'
			WHEN 'S002293' THEN
			'八方股份'
			WHEN 'S002294' THEN
			'恒为科技'
			WHEN 'S002295' THEN
			'祥和实业'
			WHEN 'S002296' THEN
			'韦尔股份'
			WHEN 'S002297' THEN
			'金石资源'
			WHEN 'S002298' THEN
			'南都物业'
			WHEN 'S002299' THEN
			'振江股份'
			WHEN 'S002300' THEN
			'思维列控'
			WHEN 'S002301' THEN
			'欧普照明'
			WHEN 'S002302' THEN
			'淳中科技'
			WHEN 'S002303' THEN
			'立霸股份'
			WHEN 'S002304' THEN
			'司太立'
			WHEN 'S002305' THEN
			'众源新材'
			WHEN 'S002306' THEN
			'多伦科技'
			WHEN 'S002307' THEN
			'神马电力'
			WHEN 'S002308' THEN
			'掌阅科技'
			WHEN 'S002309' THEN
			'嘉诚国际'
			WHEN 'S002310' THEN
			'惠发食品'
			WHEN 'S002311' THEN
			'美诺华'
			WHEN 'S002312' THEN
			'奥普家居'
			WHEN 'S002313' THEN
			'海兴电力'
			WHEN 'S002314' THEN
			'健盛集团'
			WHEN 'S002315' THEN
			'中通国脉'
			WHEN 'S002316' THEN
			'普莱柯'
			WHEN 'S002317' THEN
			'珍宝岛'
			WHEN 'S002318' THEN
			'汇金通'
			WHEN 'S002319' THEN
			'荣泰健康'
			WHEN 'S002320' THEN
			'艾艾精工'
			WHEN 'S002321' THEN
			'捷昌驱动'
			WHEN 'S002322' THEN
			'苏利股份'
			WHEN 'S002323' THEN
			'金麒麟'
			WHEN 'S002324' THEN
			'地素时尚'
			WHEN 'S002325' THEN
			'口子窖'
			WHEN 'S002326' THEN
			'康辰药业'
			WHEN 'S002327' THEN
			'东尼电子'
			WHEN 'S002328' THEN
			'伯特利'
			WHEN 'S002329' THEN
			'引力传媒'
			WHEN 'S002330' THEN
			'广信股份'
			WHEN 'S002331' THEN
			'永艺股份'
			WHEN 'S002332' THEN
			'珀莱雅'
			WHEN 'S002333' THEN
			'东方电缆'
			WHEN 'S002334' THEN
			'京华激光'
			WHEN 'S002335' THEN
			'天创时尚'
			WHEN 'S002336' THEN
			'禾丰牧业'
			WHEN 'S002337' THEN
			'麒盛科技'
			WHEN 'S002338' THEN
			'诺力股份'
			WHEN 'S002339' THEN
			'国联股份'
			WHEN 'S002340' THEN
			'茶花股份'
			WHEN 'S002341' THEN
			'韩建河山'
			WHEN 'S002342' THEN
			'中曼石油'
			WHEN 'S002343' THEN
			'清源股份'
			WHEN 'S002344' THEN
			'利通电子'
			WHEN 'S002345' THEN
			'拉芳家化'
			WHEN 'S002346' THEN
			'徕木股份'
			WHEN 'S002347' THEN
			'镇海股份'
			WHEN 'S002348' THEN
			'艾迪精密'
			WHEN 'S002349' THEN
			'海利尔'
			WHEN 'S002350' THEN
			'畅联股份'
			WHEN 'S002351' THEN
			'彤程新材'
			WHEN 'S002352' THEN
			'朗博科技'
			WHEN 'S002353' THEN
			'泰禾智能'
			WHEN 'S002354' THEN
			'春光科技'
			WHEN 'S002355' THEN
			'恒林股份'
			WHEN 'S002356' THEN
			'柯力传感'
			WHEN 'S002357' THEN
			'亿嘉和'
			WHEN 'S002358' THEN
			'灵康药业'
			WHEN 'S002359' THEN
			'卫信康'
			WHEN 'S002360' THEN
			'今创集团'
			WHEN 'S002361' THEN
			'永冠新材'
			WHEN 'S002362' THEN
			'锦和商业'
			WHEN 'S002363' THEN
			'晶华新材'
			WHEN 'S002364' THEN
			'晨丰科技'
			WHEN 'S002365' THEN
			'龙马环卫'
			WHEN 'S002366' THEN
			'大胜达'
			WHEN 'S002367' THEN
			'皖天然气'
			WHEN 'S002368' THEN
			'江苏新能'
			WHEN 'S002369' THEN
			'安记食品'
			WHEN 'S002370' THEN
			'有友食品'
			WHEN 'S002371' THEN
			'航天工程'
			WHEN 'S002372' THEN
			'纽威股份'
			WHEN 'S002373' THEN
			'宁水集团'
			WHEN 'S002374' THEN
			'德宏股份'
			WHEN 'S002375' THEN
			'盛洋科技'
			WHEN 'S002376' THEN
			'东方环宇'
			WHEN 'S002377' THEN
			'家家悦'
			WHEN 'S002378' THEN
			'中源家居'
			WHEN 'S002379' THEN
			'香飘飘'
			WHEN 'S002380' THEN
			'七一二'
			WHEN 'S002381' THEN
			'密尔克卫'
			WHEN 'S002382' THEN
			'塞力医疗'
			WHEN 'S002383' THEN
			'海利生物'
			WHEN 'S002384' THEN
			'良品铺子'
			WHEN 'S002385' THEN
			'中广天择'
			WHEN 'S002386' THEN
			'阿科力'
			WHEN 'S002387' THEN
			'朗迪集团'
			WHEN 'S002388' THEN
			'博迈科'
			WHEN 'S002389' THEN
			'鸣志电器'
			WHEN 'S002390' THEN
			'龙韵股份'
			WHEN 'S002391' THEN
			'岱美股份'
			WHEN 'S002392' THEN
			'三棵树'
			WHEN 'S002393' THEN
			'蔚蓝生物'
			WHEN 'S002394' THEN
			'日辰股份'
			WHEN 'S002395' THEN
			'大元泵业'
			WHEN 'S002396' THEN
			'秦安股份'
			WHEN 'S002397' THEN
			'隆鑫通用'
			WHEN 'S002398' THEN
			'中马传动'
			WHEN 'S002399' THEN
			'常青股份'
			WHEN 'S002400' THEN
			'永安行'
			WHEN 'S002401' THEN
			'来伊份'
			WHEN 'S002402' THEN
			'乾景园林'
			WHEN 'S002403' THEN
			'威龙股份'
			WHEN 'S002404' THEN
			'科博达'
			WHEN 'S002405' THEN
			'新日股份'
			WHEN 'S002406' THEN
			'宁波高发'
			WHEN 'S002407' THEN
			'星光农机'
			WHEN 'S002408' THEN
			'雅运股份'
			WHEN 'S002409' THEN
			'康普顿'
			WHEN 'S002410' THEN
			'道森股份'
			WHEN 'S002411' THEN
			'志邦家居'
			WHEN 'S002412' THEN
			'瑞斯康达'
			WHEN 'S002413' THEN
			'歌力思'
			WHEN 'S002414' THEN
			'豪能股份'
			WHEN 'S002415' THEN
			'丰山集团'
			WHEN 'S002416' THEN
			'诚意药业'
			WHEN 'S002417' THEN
			'原尚股份'
			WHEN 'S002418' THEN
			'交建股份'
			WHEN 'S002419' THEN
			'曲美家居'
			WHEN 'S002420' THEN
			'神力股份'
			WHEN 'S002421' THEN
			'百合花'
			WHEN 'S002422' THEN
			'华扬联众'
			WHEN 'S002423' THEN
			'坤彩科技'
			WHEN 'S002424' THEN
			'柯利达'
			WHEN 'S002425' THEN
			'洛凯股份'
			WHEN 'S002426' THEN
			'四通股份'
			WHEN 'S002427' THEN
			'安正时尚'
			WHEN 'S002428' THEN
			'正平股份'
			WHEN 'S002429' THEN
			'好太太'
			WHEN 'S002430' THEN
			'华荣股份'
			WHEN 'S002431' THEN
			'东宏股份'
			WHEN 'S002432' THEN
			'步长制药'
			WHEN 'S002433' THEN
			'能科股份'
			WHEN 'S002434' THEN
			'中公高科'
			WHEN 'S002435' THEN
			'松炀资源'
			WHEN 'S002436' THEN
			'新化股份'
			WHEN 'S002437' THEN
			'飞科电器'
			WHEN 'S002438' THEN
			'嘉友国际'
			WHEN 'S002439' THEN
			'太平鸟'
			WHEN 'S002440' THEN
			'武进不锈'
			WHEN 'S002441' THEN
			'永悦科技'
			WHEN 'S002442' THEN
			'南卫股份'
			WHEN 'S002443' THEN
			'数据港'
			WHEN 'S002444' THEN
			'金域医学'
			WHEN 'S002445' THEN
			'吉祥航空'
			WHEN 'S002446' THEN
			'元祖股份'
			WHEN 'S002447' THEN
			'城地香江'
			WHEN 'S002448' THEN
			'新华网'
			WHEN 'S002449' THEN
			'新澳股份'
			WHEN 'S002450' THEN
			'瑞芯微'
			WHEN 'S002451' THEN
			'天永智能'
			WHEN 'S002452' THEN
			'寿仙谷'
			WHEN 'S002453' THEN
			'晨光文具'
			WHEN 'S002454' THEN
			'莱绅通灵'
			WHEN 'S002455' THEN
			'中持股份'
			WHEN 'S002456' THEN
			'牧高笛'
			WHEN 'S002457' THEN
			'合诚股份'
			WHEN 'S002458' THEN
			'佳力图'
			WHEN 'S002459' THEN
			'国茂股份'
			WHEN 'S002460' THEN
			'合力科技'
			WHEN 'S002461' THEN
			'金桥信息'
			WHEN 'S002462' THEN
			'金徽酒'
			WHEN 'S002463' THEN
			'世运电路'
			WHEN 'S002464' THEN
			'金鸿顺'
			WHEN 'S002465' THEN
			'铁流股份'
			WHEN 'S002466' THEN
			'中科软'
			WHEN 'S002467' THEN
			'兴业股份'
			WHEN 'S002468' THEN
			'亚翔集成'
			WHEN 'S002469' THEN
			'睿能科技'
			WHEN 'S002470' THEN
			'博敏电子'
			WHEN 'S002471' THEN
			'丽岛新材'
			WHEN 'S002472' THEN
			'三孚股份'
			WHEN 'S002473' THEN
			'建业股份'
			WHEN 'S002474' THEN
			'雪龙集团'
			WHEN 'S002475' THEN
			'长源东谷'
			WHEN 'S002476' THEN
			'大千生态'
			WHEN 'S002477' THEN
			'威派格'
			WHEN 'S002478' THEN
			'哈森股份'
			WHEN 'S002479' THEN
			'百利科技'
			WHEN 'S002480' THEN
			'大理药业'
			WHEN 'S002481' THEN
			'法兰泰克'
			WHEN 'S002482' THEN
			'中创物流'
			WHEN 'S002483' THEN
			'醋化股份'
			WHEN 'S002484' THEN
			'银龙股份'
			WHEN 'S002485' THEN
			'中农立华'
			WHEN 'S002486' THEN
			'正川股份'
			WHEN 'S002487' THEN
			'国泰集团'
			WHEN 'S002488' THEN
			'深圳新星'
			WHEN 'S002489' THEN
			'吉华集团'
			WHEN 'S002490' THEN
			'泉峰汽车'
			WHEN 'S002491' THEN
			'丸美股份'
			WHEN 'S002492' THEN
			'恒润股份'
			WHEN 'S002493' THEN
			'兆易创新'
			WHEN 'S002494' THEN
			'康德莱'
			WHEN 'S002495' THEN
			'中电电机'
			WHEN 'S002496' THEN
			'麦迪科技'
			WHEN 'S002497' THEN
			'至正股份'
			WHEN 'S002498' THEN
			'松霖科技'
			WHEN 'S002499' THEN
			'甬金股份'
			WHEN 'S002500' THEN
			'中新科技'
			WHEN 'S002501' THEN
			'继峰股份'
			WHEN 'S002502' THEN
			'方盛制药'
			WHEN 'S002503' THEN
			'读者传媒'
			WHEN 'S002504' THEN
			'威奥股份'
			WHEN 'S002505' THEN
			'聚合顺'
			WHEN 'S002506' THEN
			'三人行'
			WHEN 'S002507' THEN
			'凯迪股份'
			WHEN 'S002508' THEN
			'特锐德'
			WHEN 'S002509' THEN
			'南风股份'
			WHEN 'S002510' THEN
			'探路者'
			WHEN 'S002511' THEN
			'汉威科技'
			WHEN 'S002512' THEN
			'天海防务'
			WHEN 'S002513' THEN
			'安科生物'
			WHEN 'S002514' THEN
			'鼎汉技术'
			WHEN 'S002515' THEN
			'华测检测'
			WHEN 'S002516' THEN
			'新宁物流'
			WHEN 'S002517' THEN
			'亿纬锂能'
			WHEN 'S002518' THEN
			'爱尔眼科'
			WHEN 'S002519' THEN
			'北陆药业'
			WHEN 'S002520' THEN
			'网宿科技'
			WHEN 'S002521' THEN
			'中元股份'
			WHEN 'S002522' THEN
			'硅宝科技'
			WHEN 'S002523' THEN
			'大禹节水'
			WHEN 'S002524' THEN
			'吉峰科技'
			WHEN 'S002525' THEN
			'宝德股份'
			WHEN 'S002526' THEN
			'机器人'
			WHEN 'S002527' THEN
			'华星创业'
			WHEN 'S002528' THEN
			'天龙光电'
			WHEN 'S002529' THEN
			'宝通科技'
			WHEN 'S002530' THEN
			'金龙机电'
			WHEN 'S002531' THEN
			'同花顺'
			WHEN 'S002532' THEN
			'钢研高纳'
			WHEN 'S002533' THEN
			'中科电气'
			WHEN 'S002534' THEN
			'超图软件'
			WHEN 'S002535' THEN
			'新宙邦'
			WHEN 'S002536' THEN
			'数知科技'
			WHEN 'S002537' THEN
			'上海凯宝'
			WHEN 'S002538' THEN
			'回天新材'
			WHEN 'S002539' THEN
			'朗科科技'
			WHEN 'S002540' THEN
			'赛为智能'
			WHEN 'S002541' THEN
			'华力创通'
			WHEN 'S002542' THEN
			'台基股份'
			WHEN 'S002543' THEN
			'合康新能'
			WHEN 'S002544' THEN
			'福瑞股份'
			WHEN 'S002545' THEN
			'世纪鼎利'
			WHEN 'S002546' THEN
			'三五互联'
			WHEN 'S002547' THEN
			'中青宝'
			WHEN 'S002548' THEN
			'欧比特'
			WHEN 'S002549' THEN
			'鼎龙股份'
			WHEN 'S002550' THEN
			'中创环保'
			WHEN 'S002551' THEN
			'恒久科技'
			WHEN 'S002552' THEN
			'旗天科技'
			WHEN 'S002553' THEN
			'天龙集团'
			WHEN 'S002554' THEN
			'海兰信'
			WHEN 'S002555' THEN
			'三川智慧'
			WHEN 'S002556' THEN
			'安诺其'
			WHEN 'S002557' THEN
			'金利华电'
			WHEN 'S002558' THEN
			'当升科技'
			WHEN 'S002559' THEN
			'华平股份'
			WHEN 'S002560' THEN
			'数字政通'
			WHEN 'S002561' THEN
			'GQY视讯'
			WHEN 'S002562' THEN
			'国民技术'
			WHEN 'S002563' THEN
			'思创医惠'
			WHEN 'S002564' THEN
			'数码视讯'
			WHEN 'S002565' THEN
			'恒信东方'
			WHEN 'S002566' THEN
			'奥克股份'
			WHEN 'S002567' THEN
			'海默科技'
			WHEN 'S002568' THEN
			'银之杰'
			WHEN 'S002569' THEN
			'康芝药业'
			WHEN 'S002570' THEN
			'荃银高科'
			WHEN 'S002571' THEN
			'金通灵'
			WHEN 'S002572' THEN
			'科新机电'
			WHEN 'S002573' THEN
			'华伍股份'
			WHEN 'S002574' THEN
			'易联众'
			WHEN 'S002575' THEN
			'智云股份'
			WHEN 'S002576' THEN
			'高新兴'
			WHEN 'S002577' THEN
			'精准信息'
			WHEN 'S002578' THEN
			'双林股份'
			WHEN 'S002579' THEN
			'振芯科技'
			WHEN 'S002580' THEN
			'乾照光电'
			WHEN 'S002581' THEN
			'达刚控股'
			WHEN 'S002582' THEN
			'龙源技术'
			WHEN 'S002583' THEN
			'西部牧业'
			WHEN 'S002584' THEN
			'建新股份'
			WHEN 'S002585' THEN
			'吉药控股'
			WHEN 'S002586' THEN
			'新开源'
			WHEN 'S002587' THEN
			'华仁药业'
			WHEN 'S002588' THEN
			'万讯自控'
			WHEN 'S002589' THEN
			'顺网科技'
			WHEN 'S002590' THEN
			'中航电测'
			WHEN 'S002591' THEN
			'长盈精密'
			WHEN 'S002592' THEN
			'保力新'
			WHEN 'S002593' THEN
			'瑞普生物'
			WHEN 'S002594' THEN
			'经纬辉开'
			WHEN 'S002595' THEN
			'智飞生物'
			WHEN 'S002596' THEN
			'亚光科技'
			WHEN 'S002597' THEN
			'汇川技术'
			WHEN 'S002598' THEN
			'聆达股份'
			WHEN 'S002599' THEN
			'锐奇股份'
			WHEN 'S002600' THEN
			'银河磁体'
			WHEN 'S002601' THEN
			'锦富技术'
			WHEN 'S002602' THEN
			'泰胜风能'
			WHEN 'S002603' THEN
			'青松股份'
			WHEN 'S002604' THEN
			'华策影视'
			WHEN 'S002605' THEN
			'大富科技'
			WHEN 'S002606' THEN
			'宝利国际'
			WHEN 'S002607' THEN
			'信维通信'
			WHEN 'S002608' THEN
			'先河环保'
			WHEN 'S002609' THEN
			'晨光生物'
			WHEN 'S002610' THEN
			'中环装备'
			WHEN 'S002611' THEN
			'和顺电气'
			WHEN 'S002612' THEN
			'盈康生命'
			WHEN 'S002613' THEN
			'宋城演艺'
			WHEN 'S002614' THEN
			'汤臣倍健'
			WHEN 'S002615' THEN
			'天舟文化'
			WHEN 'S002616' THEN
			'睿智医药'
			WHEN 'S002617' THEN
			'世纪瑞尔'
			WHEN 'S002618' THEN
			'昌红科技'
			WHEN 'S002619' THEN
			'科融环境'
			WHEN 'S002620' THEN
			'科泰电源'
			WHEN 'S002621' THEN
			'瑞凌股份'
			WHEN 'S002622' THEN
			'安居宝'
			WHEN 'S002623' THEN
			'秀强股份'
			WHEN 'S002624' THEN
			'华中数控'
			WHEN 'S002625' THEN
			'雷曼光电'
			WHEN 'S002626' THEN
			'先锋新材'
			WHEN 'S002627' THEN
			'通源石油'
			WHEN 'S002628' THEN
			'天瑞仪器'
			WHEN 'S002629' THEN
			'迪威迅'
			WHEN 'S002630' THEN
			'汉得信息'
			WHEN 'S002631' THEN
			'东富龙'
			WHEN 'S002632' THEN
			'中电环保'
			WHEN 'S002633' THEN
			'福能东方'
			WHEN 'S002634' THEN
			'元力股份'
			WHEN 'S002635' THEN
			'朗源股份'
			WHEN 'S002636' THEN
			'派生科技'
			WHEN 'S002637' THEN
			'中海达'
			WHEN 'S002638' THEN
			'腾邦国际'
			WHEN 'S002639' THEN
			'四方达'
			WHEN 'S002640' THEN
			'华峰超纤'
			WHEN 'S002641' THEN
			'佐力药业'
			WHEN 'S002642' THEN
			'东软载波'
			WHEN 'S002643' THEN
			'力源信息'
			WHEN 'S002644' THEN
			'永清环保'
			WHEN 'S002645' THEN
			'美亚柏科'
			WHEN 'S002646' THEN
			'神农科技'
			WHEN 'S002647' THEN
			'潜能恒信'
			WHEN 'S002648' THEN
			'科德教育'
			WHEN 'S002649' THEN
			'佳士科技'
			WHEN 'S002650' THEN
			'福安药业'
			WHEN 'S002651' THEN
			'长荣股份'
			WHEN 'S002652' THEN
			'长海股份'
			WHEN 'S002653' THEN
			'高盟新材'
			WHEN 'S002654' THEN
			'海伦哲'
			WHEN 'S002655' THEN
			'聚光科技'
			WHEN 'S002656' THEN
			'舒泰神'
			WHEN 'S002657' THEN
			'天喻信息'
			WHEN 'S002658' THEN
			'理邦仪器'
			WHEN 'S002659' THEN
			'森远股份'
			WHEN 'S002660' THEN
			'亿通科技'
			WHEN 'S002661' THEN
			'佳讯飞鸿'
			WHEN 'S002662' THEN
			'日科化学'
			WHEN 'S002663' THEN
			'千山药机'
			WHEN 'S002664' THEN
			'东方电热'
			WHEN 'S002665' THEN
			'安利股份'
			WHEN 'S002666' THEN
			'鸿利智汇'
			WHEN 'S002667' THEN
			'金运激光'
			WHEN 'S002668' THEN
			'银禧科技'
			WHEN 'S002669' THEN
			'科大智能'
			WHEN 'S002670' THEN
			'北京君正'
			WHEN 'S002671' THEN
			'正海磁材'
			WHEN 'S002672' THEN
			'金力泰'
			WHEN 'S002673' THEN
			'上海钢联'
			WHEN 'S002674' THEN
			'光韵达'
			WHEN 'S002675' THEN
			'富瑞特装'
			WHEN 'S002676' THEN
			'拓尔思'
			WHEN 'S002677' THEN
			'永利股份'
			WHEN 'S002678' THEN
			'银信科技'
			WHEN 'S002679' THEN
			'金城医药'
			WHEN 'S002680' THEN
			'开尔新材'
			WHEN 'S002681' THEN
			'方直科技'
			WHEN 'S002682' THEN
			'上海新阳'
			WHEN 'S002683' THEN
			'冠昊生物'
			WHEN 'S002684' THEN
			'飞力达'
			WHEN 'S002685' THEN
			'瑞丰光电'
			WHEN 'S002686' THEN
			'佳云科技'
			WHEN 'S002687' THEN
			'瑞丰高材'
			WHEN 'S002688' THEN
			'天玑科技'
			WHEN 'S002689' THEN
			'宝莱特'
			WHEN 'S002690' THEN
			'融捷健康'
			WHEN 'S002691' THEN
			'新开普'
			WHEN 'S002692' THEN
			'依米康'
			WHEN 'S002693' THEN
			'初灵信息'
			WHEN 'S002694' THEN
			'金信诺'
			WHEN 'S002695' THEN
			'卫宁健康'
			WHEN 'S002696' THEN
			'仟源医药'
			WHEN 'S002697' THEN
			'常山药业'
			WHEN 'S002698' THEN
			'星星科技'
			WHEN 'S002699' THEN
			'开山股份'
			WHEN 'S002700' THEN
			'精锻科技'
			WHEN 'S002701' THEN
			'新天科技'
			WHEN 'S002702' THEN
			'隆华科技'
			WHEN 'S002703' THEN
			'佳创视讯'
			WHEN 'S002704' THEN
			'尔康制药'
			WHEN 'S002705' THEN
			'佳沃股份'
			WHEN 'S002706' THEN
			'联建光电'
			WHEN 'S002707' THEN
			'中威电子'
			WHEN 'S002708' THEN
			'华宇软件'
			WHEN 'S002709' THEN
			'开能健康'
			WHEN 'S002710' THEN
			'梅安森'
			WHEN 'S002711' THEN
			'三丰智能'
			WHEN 'S002712' THEN
			'海联讯'
			WHEN 'S002713' THEN
			'和晶科技'
			WHEN 'S002714' THEN
			'紫天科技'
			WHEN 'S002715' THEN
			'金明精机'
			WHEN 'S002716' THEN
			'三盛教育'
			WHEN 'S002717' THEN
			'温州宏丰'
			WHEN 'S002718' THEN
			'国瓷材料'
			WHEN 'S002719' THEN
			'安科瑞'
			WHEN 'S002720' THEN
			'飞利信'
			WHEN 'S002721' THEN
			'朗玛信息'
			WHEN 'S002722' THEN
			'利德曼'
			WHEN 'S002723' THEN
			'荣科科技'
			WHEN 'S002724' THEN
			'华录百纳'
			WHEN 'S002725' THEN
			'吴通控股'
			WHEN 'S002726' THEN
			'蓝英装备'
			WHEN 'S002727' THEN
			'博雅生物'
			WHEN 'S002728' THEN
			'三六五网'
			WHEN 'S002729' THEN
			'三诺生物'
			WHEN 'S002730' THEN
			'富春股份'
			WHEN 'S002731' THEN
			'海峡创新'
			WHEN 'S002732' THEN
			'长方集团'
			WHEN 'S002733' THEN
			'同有科技'
			WHEN 'S002734' THEN
			'云意电气'
			WHEN 'S002735' THEN
			'裕兴股份'
			WHEN 'S002736' THEN
			'远方信息'
			WHEN 'S002737' THEN
			'慈星股份'
			WHEN 'S002738' THEN
			'中际旭创'
			WHEN 'S002739' THEN
			'吉艾科技'
			WHEN 'S002740' THEN
			'宜通世纪'
			WHEN 'S002741' THEN
			'任子行'
			WHEN 'S002742' THEN
			'邦讯技术'
			WHEN 'S002743' THEN
			'天山生物'
			WHEN 'S002744' THEN
			'戴维医疗'
			WHEN 'S002745' THEN
			'晶盛机电'
			WHEN 'S002746' THEN
			'珈伟新能'
			WHEN 'S002747' THEN
			'博晖创新'
			WHEN 'S002748' THEN
			'麦捷科技'
			WHEN 'S002749' THEN
			'海达股份'
			WHEN 'S002750' THEN
			'同大股份'
			WHEN 'S002751' THEN
			'硕贝德'
			WHEN 'S002752' THEN
			'旋极信息'
			WHEN 'S002753' THEN
			'德威新材'
			WHEN 'S002754' THEN
			'凯利泰'
			WHEN 'S002755' THEN
			'中颖电子'
			WHEN 'S002756' THEN
			'海伦钢琴'
			WHEN 'S002757' THEN
			'苏大维格'
			WHEN 'S002758' THEN
			'兆日科技'
			WHEN 'S002759' THEN
			'银邦股份'
			WHEN 'S002760' THEN
			'开元教育'
			WHEN 'S002761' THEN
			'润和软件'
			WHEN 'S002762' THEN
			'麦克奥迪'
			WHEN 'S002763' THEN
			'天银机电'
			WHEN 'S002764' THEN
			'联创股份'
			WHEN 'S002765' THEN
			'立方数科'
			WHEN 'S002766' THEN
			'华民股份'
			WHEN 'S002767' THEN
			'南大光电'
			WHEN 'S002768' THEN
			'泰格医药'
			WHEN 'S002769' THEN
			'长亮科技'
			WHEN 'S002770' THEN
			'金卡智能'
			WHEN 'S002771' THEN
			'华鹏飞'
			WHEN 'S002772' THEN
			'永贵电器'
			WHEN 'S002773' THEN
			'北信源'
			WHEN 'S002774' THEN
			'东土科技'
			WHEN 'S002775' THEN
			'东华测试'
			WHEN 'S002776' THEN
			'光一科技'
			WHEN 'S002777' THEN
			'我武生物'
			WHEN 'S002778' THEN
			'楚天科技'
			WHEN 'S002779' THEN
			'全通教育'
			WHEN 'S002780' THEN
			'炬华科技'
			WHEN 'S002781' THEN
			'奥赛康'
			WHEN 'S002782' THEN
			'博腾股份'
			WHEN 'S002783' THEN
			'中文在线'
			WHEN 'S002784' THEN
			'恒华科技'
			WHEN 'S002785' THEN
			'创意信息'
			WHEN 'S002786' THEN
			'汇金股份'
			WHEN 'S002787' THEN
			'绿盟科技'
			WHEN 'S002788' THEN
			'汇中股份'
			WHEN 'S002789' THEN
			'欣泰退'
			WHEN 'S002790' THEN
			'扬杰科技'
			WHEN 'S002791' THEN
			'中铁装配'
			WHEN 'S002792' THEN
			'鹏翎股份'
			WHEN 'S002793' THEN
			'赢时胜'
			WHEN 'S002794' THEN
			'鼎捷软件'
			WHEN 'S002795' THEN
			'东方通'
			WHEN 'S002796' THEN
			'安硕信息'
			WHEN 'S002797' THEN
			'斯莱克'
			WHEN 'S002798' THEN
			'光环新网'
			WHEN 'S002799' THEN
			'三联虹普'
			WHEN 'S002800' THEN
			'雪浪环境'
			WHEN 'S002801' THEN
			'飞天诚信'
			WHEN 'S002802' THEN
			'富邦股份'
			WHEN 'S002803' THEN
			'艾比森'
			WHEN 'S002804' THEN
			'天华超净'
			WHEN 'S002805' THEN
			'康跃科技'
			WHEN 'S002806' THEN
			'腾信股份'
			WHEN 'S002807' THEN
			'天孚通信'
			WHEN 'S002808' THEN
			'菲利华'
			WHEN 'S002809' THEN
			'迪瑞医疗'
			WHEN 'S002810' THEN
			'天和防务'
			WHEN 'S002811' THEN
			'飞凯材料'
			WHEN 'S002812' THEN
			'天利科技'
			WHEN 'S002813' THEN
			'劲拓股份'
			WHEN 'S002814' THEN
			'花园生物'
			WHEN 'S002815' THEN
			'宝色股份'
			WHEN 'S002816' THEN
			'汉宇集团'
			WHEN 'S002817' THEN
			'博济医药'
			WHEN 'S002818' THEN
			'科隆股份'
			WHEN 'S002819' THEN
			'九强生物'
			WHEN 'S002820' THEN
			'三环集团'
			WHEN 'S002821' THEN
			'正业科技'
			WHEN 'S002822' THEN
			'金盾股份'
			WHEN 'S002823' THEN
			'迦南科技'
			WHEN 'S002824' THEN
			'芒果超媒'
			WHEN 'S002825' THEN
			'中光防雷'
			WHEN 'S002826' THEN
			'伊之密'
			WHEN 'S002827' THEN
			'苏试试验'
			WHEN 'S002828' THEN
			'南华仪器'
			WHEN 'S002829' THEN
			'浩丰科技'
			WHEN 'S002830' THEN
			'五洋停车'
			WHEN 'S002831' THEN
			'力星股份'
			WHEN 'S002832' THEN
			'昇辉科技'
			WHEN 'S002833' THEN
			'中建环能'
			WHEN 'S002834' THEN
			'四通新材'
			WHEN 'S002835' THEN
			'强力新材'
			WHEN 'S002836' THEN
			'诚益通'
			WHEN 'S002837' THEN
			'富临精工'
			WHEN 'S002838' THEN
			'金石亚药'
			WHEN 'S002839' THEN
			'中泰股份'
			WHEN 'S002840' THEN
			'广生堂'
			WHEN 'S002841' THEN
			'鹏辉能源'
			WHEN 'S002842' THEN
			'美康生物'
			WHEN 'S002843' THEN
			'运达科技'
			WHEN 'S002844' THEN
			'鲍斯股份'
			WHEN 'S002845' THEN
			'普丽盛'
			WHEN 'S002846' THEN
			'金雷股份'
			WHEN 'S002847' THEN
			'双杰电气'
			WHEN 'S002848' THEN
			'康斯特'
			WHEN 'S002849' THEN
			'乐凯新材'
			WHEN 'S002850' THEN
			'全信股份'
			WHEN 'S002851' THEN
			'浩云科技'
			WHEN 'S002852' THEN
			'汉邦高科'
			WHEN 'S002853' THEN
			'创业慧康'
			WHEN 'S002854' THEN
			'山河药辅'
			WHEN 'S002855' THEN
			'三鑫医疗'
			WHEN 'S002856' THEN
			'深信服'
			WHEN 'S002857' THEN
			'康拓红外'
			WHEN 'S002858' THEN
			'赛微电子'
			WHEN 'S002859' THEN
			'赢合科技'
			WHEN 'S002860' THEN
			'全志科技'
			WHEN 'S002861' THEN
			'金科文化'
			WHEN 'S002862' THEN
			'惠伦晶体'
			WHEN 'S002863' THEN
			'田中精机'
			WHEN 'S002864' THEN
			'华铭智能'
			WHEN 'S002865' THEN
			'迈克生物'
			WHEN 'S002866' THEN
			'星徽股份'
			WHEN 'S002867' THEN
			'高伟达'
			WHEN 'S002868' THEN
			'赛摩智能'
			WHEN 'S002869' THEN
			'迅游科技'
			WHEN 'S002870' THEN
			'四方精创'
			WHEN 'S002871' THEN
			'信息发展'
			WHEN 'S002872' THEN
			'中密控股'
			WHEN 'S002873' THEN
			'厚普股份'
			WHEN 'S002874' THEN
			'新元科技'
			WHEN 'S002875' THEN
			'景嘉微'
			WHEN 'S002876' THEN
			'聚隆科技'
			WHEN 'S002877' THEN
			'胜宏科技'
			WHEN 'S002878' THEN
			'合纵科技'
			WHEN 'S002879' THEN
			'杭州高新'
			WHEN 'S002880' THEN
			'神思电子'
			WHEN 'S002881' THEN
			'光力科技'
			WHEN 'S002882' THEN
			'濮阳惠成'
			WHEN 'S002883' THEN
			'万孚生物'
			WHEN 'S002884' THEN
			'首华燃气'
			WHEN 'S002885' THEN
			'蓝海华腾'
			WHEN 'S002886' THEN
			'赛升药业'
			WHEN 'S002887' THEN
			'东杰智能'
			WHEN 'S002888' THEN
			'恒锋工具'
			WHEN 'S002889' THEN
			'中飞股份'
			WHEN 'S002890' THEN
			'华自科技'
			WHEN 'S002891' THEN
			'通合科技'
			WHEN 'S002892' THEN
			'华图山鼎'
			WHEN 'S002893' THEN
			'润欣科技'
			WHEN 'S002894' THEN
			'盛天网络'
			WHEN 'S002895' THEN
			'中科创达'
			WHEN 'S002896' THEN
			'高澜股份'
			WHEN 'S002897' THEN
			'启迪设计'
			WHEN 'S002898' THEN
			'海顺新材'
			WHEN 'S002899' THEN
			'新易盛'
			WHEN 'S002900' THEN
			'昊志机电'
			WHEN 'S002901' THEN
			'天邑股份'
			WHEN 'S002902' THEN
			'川金诺'
			WHEN 'S002903' THEN
			'苏奥传感'
			WHEN 'S002904' THEN
			'维宏股份'
			WHEN 'S002905' THEN
			'新美星'
			WHEN 'S002906' THEN
			'金冠股份'
			WHEN 'S002907' THEN
			'雪榕生物'
			WHEN 'S002908' THEN
			'中亚股份'
			WHEN 'S002909' THEN
			'恒实科技'
			WHEN 'S002910' THEN
			'友讯达'
			WHEN 'S002911' THEN
			'三德科技'
			WHEN 'S002912' THEN
			'久之洋'
			WHEN 'S002913' THEN
			'海波重科'
			WHEN 'S002914' THEN
			'盛讯达'
			WHEN 'S002915' THEN
			'新光药业'
			WHEN 'S002916' THEN
			'科大国创'
			WHEN 'S002917' THEN
			'爱司凯'
			WHEN 'S002918' THEN
			'世名科技'
			WHEN 'S002919' THEN
			'辰安科技'
			WHEN 'S002920' THEN
			'博思软件'
			WHEN 'S002921' THEN
			'中潜股份'
			WHEN 'S002922' THEN
			'幸福蓝海'
			WHEN 'S002923' THEN
			'健帆生物'
			WHEN 'S002924' THEN
			'达志科技'
			WHEN 'S002925' THEN
			'优博讯'
			WHEN 'S002926' THEN
			'今天国际'
			WHEN 'S002927' THEN
			'冰川网络'
			WHEN 'S002928' THEN
			'陇神戎发'
			WHEN 'S002929' THEN
			'达威股份'
			WHEN 'S002930' THEN
			'农尚环境'
			WHEN 'S002931' THEN
			'广信材料'
			WHEN 'S002932' THEN
			'同益股份'
			WHEN 'S002933' THEN
			'深冷股份'
			WHEN 'S002934' THEN
			'先进数通'
			WHEN 'S002935' THEN
			'新晨科技'
			WHEN 'S002936' THEN
			'朗科智能'
			WHEN 'S002937' THEN
			'雄帝科技'
			WHEN 'S002938' THEN
			'川环科技'
			WHEN 'S002939' THEN
			'博创科技'
			WHEN 'S002940' THEN
			'优德精密'
			WHEN 'S002941' THEN
			'和仁科技'
			WHEN 'S002942' THEN
			'古鳌科技'
			WHEN 'S002943' THEN
			'万集科技'
			WHEN 'S002944' THEN
			'集智股份'
			WHEN 'S002945' THEN
			'三超新材'
			WHEN 'S002946' THEN
			'路通视信'
			WHEN 'S002947' THEN
			'丝路视觉'
			WHEN 'S002948' THEN
			'理工光科'
			WHEN 'S002949' THEN
			'贝达药业'
			WHEN 'S002950' THEN
			'佳发教育'
			WHEN 'S002951' THEN
			'中富通'
			WHEN 'S002952' THEN
			'汇金科技'
			WHEN 'S002953' THEN
			'乐心医疗'
			WHEN 'S002954' THEN
			'神宇股份'
			WHEN 'S002955' THEN
			'筑博设计'
			WHEN 'S002956' THEN
			'科信技术'
			WHEN 'S002957' THEN
			'激智科技'
			WHEN 'S002958' THEN
			'天能重工'
			WHEN 'S002959' THEN
			'太辰光'
			WHEN 'S002960' THEN
			'平治信息'
			WHEN 'S002961' THEN
			'安车检测'
			WHEN 'S002962' THEN
			'兴齐眼药'
			WHEN 'S002963' THEN
			'中旗股份'
			WHEN 'S002964' THEN
			'容大感光'
			WHEN 'S002965' THEN
			'会畅通讯'
			WHEN 'S002966' THEN
			'数字认证'
			WHEN 'S002967' THEN
			'贝斯特'
			WHEN 'S002968' THEN
			'晨曦航空'
			WHEN 'S002969' THEN
			'英飞特'
			WHEN 'S002970' THEN
			'赛托生物'
			WHEN 'S002971' THEN
			'海辰药业'
			WHEN 'S002972' THEN
			'奥联电子'
			WHEN 'S002973' THEN
			'美联新材'
			WHEN 'S002974' THEN
			'熙菱信息'
			WHEN 'S002975' THEN
			'江龙船艇'
			WHEN 'S002976' THEN
			'移为通信'
			WHEN 'S002977' THEN
			'华凯创意' ELSE short_name
	END
	);

-- sql2
UPDATE qb_news_public_opinion
SET short_name = (
	CASE
			issuer_code
			WHEN 'S002978' THEN
			'新雷能'
			WHEN 'S002979' THEN
			'朗进科技'
			WHEN 'S002980' THEN
			'欧普康视'
			WHEN 'S002981' THEN
			'利安隆'
			WHEN 'S002982' THEN
			'吉大通信'
			WHEN 'S002983' THEN
			'诚迈科技'
			WHEN 'S002984' THEN
			'雄塑科技'
			WHEN 'S002985' THEN
			'国瑞科技'
			WHEN 'S002986' THEN
			'飞荣达'
			WHEN 'S002987' THEN
			'立昂技术'
			WHEN 'S002988' THEN
			'长川科技'
			WHEN 'S002989' THEN
			'恒锋信息'
			WHEN 'S002990' THEN
			'金太阳'
			WHEN 'S002991' THEN
			'拓斯达'
			WHEN 'S002992' THEN
			'汇纳科技'
			WHEN 'S002993' THEN
			'晨化股份'
			WHEN 'S002994' THEN
			'美力科技'
			WHEN 'S002995' THEN
			'宣亚国际'
			WHEN 'S002996' THEN
			'富瀚微'
			WHEN 'S002997' THEN
			'欣天科技'
			WHEN 'S002998' THEN
			'尚品宅配'
			WHEN 'S002999' THEN
			'安靠智电'
			WHEN 'S003000' THEN
			'光库科技'
			WHEN 'S003001' THEN
			'维业股份'
			WHEN 'S003002' THEN
			'博士眼镜'
			WHEN 'S003003' THEN
			'捷捷微电'
			WHEN 'S003004' THEN
			'万兴科技'
			WHEN 'S003005' THEN
			'三雄极光'
			WHEN 'S003006' THEN
			'华瑞股份'
			WHEN 'S003007' THEN
			'华测导航'
			WHEN 'S003008' THEN
			'亿联网络'
			WHEN 'S003009' THEN
			'新劲刚'
			WHEN 'S003010' THEN
			'普利制药'
			WHEN 'S003011' THEN
			'光莆股份'
			WHEN 'S003012' THEN
			'开立医疗'
			WHEN 'S003013' THEN
			'彩讯股份'
			WHEN 'S003014' THEN
			'中达安'
			WHEN 'S003015' THEN
			'同和药业'
			WHEN 'S003016' THEN
			'扬帆新材'
			WHEN 'S003017' THEN
			'广和通'
			WHEN 'S003018' THEN
			'凯普生物'
			WHEN 'S003019' THEN
			'德艺文创'
			WHEN 'S003020' THEN
			'正丹股份'
			WHEN 'S003021' THEN
			'透景生命'
			WHEN 'S003022' THEN
			'万通智控'
			WHEN 'S003023' THEN
			'南京聚隆'
			WHEN 'S003024' THEN
			'侨源气体'
			WHEN 'S003025' THEN
			'超频三'
			WHEN 'S003026' THEN
			'星云股份'
			WHEN 'S003027' THEN
			'杭州园林'
			WHEN 'S003028' THEN
			'太龙照明'
			WHEN 'S003029' THEN
			'金陵体育'
			WHEN 'S003030' THEN
			'正海生物'
			WHEN 'S003031' THEN
			'世纪天鸿'
			WHEN 'S003032' THEN
			'民德电子'
			WHEN 'S003033' THEN
			'弘信电子'
			WHEN 'S003034' THEN
			'延江股份'
			WHEN 'S003035' THEN
			'中孚信息'
			WHEN 'S003036' THEN
			'江苏雷利'
			WHEN 'S003037' THEN
			'圣邦股份'
			WHEN 'S003038' THEN
			'科锐国际'
			WHEN 'S003039' THEN
			'科蓝软件'
			WHEN 'S003040' THEN
			'飞鹿股份'
			WHEN 'S003041' THEN
			'江丰电子'
			WHEN 'S003042' THEN
			'必创科技'
			WHEN 'S003043' THEN
			'杰恩设计'
			WHEN 'S003044' THEN
			'沪宁股份'
			WHEN 'S003045' THEN
			'大烨智能'
			WHEN 'S003046' THEN
			'富满电子'
			WHEN 'S003047' THEN
			'国科微'
			WHEN 'S003048' THEN
			'佩蒂股份'
			WHEN 'S003049' THEN
			'宇信科技'
			WHEN 'S003050' THEN
			'建科院'
			WHEN 'S003051' THEN
			'中科信息'
			WHEN 'S003052' THEN
			'电连技术'
			WHEN 'S003053' THEN
			'隆盛科技'
			WHEN 'S003054' THEN
			'英搏尔'
			WHEN 'S003055' THEN
			'朗新科技'
			WHEN 'S003056' THEN
			'海特生物'
			WHEN 'S003057' THEN
			'中石科技'
			WHEN 'S003058' THEN
			'艾德生物'
			WHEN 'S003059' THEN
			'智动力'
			WHEN 'S003060' THEN
			'赛意信息'
			WHEN 'S003061' THEN
			'创业黑马'
			WHEN 'S003062' THEN
			'澄天伟业'
			WHEN 'S003063' THEN
			'双一科技'
			WHEN 'S003064' THEN
			'联合光电'
			WHEN 'S003065' THEN
			'盛弘股份'
			WHEN 'S003066' THEN
			'蠡湖股份'
			WHEN 'S003067' THEN
			'兆丰股份'
			WHEN 'S003068' THEN
			'爱乐达'
			WHEN 'S003069' THEN
			'电工合金'
			WHEN 'S003070' THEN
			'万马科技'
			WHEN 'S003071' THEN
			'光威复材'
			WHEN 'S003072' THEN
			'森霸传感'
			WHEN 'S003073' THEN
			'天宇股份'
			WHEN 'S003074' THEN
			'创源股份'
			WHEN 'S003075' THEN
			'九典制药'
			WHEN 'S003076' THEN
			'阿石创'
			WHEN 'S003077' THEN
			'威唐工业'
			WHEN 'S003078' THEN
			'聚灿光电'
			WHEN 'S003079' THEN
			'精研科技'
			WHEN 'S003080' THEN
			'万隆光电'
			WHEN 'S003081' THEN
			'广哈通信'
			WHEN 'S003082' THEN
			'永福股份'
			WHEN 'S003083' THEN
			'英可瑞'
			WHEN 'S003084' THEN
			'国立科技'
			WHEN 'S003085' THEN
			'华信新材'
			WHEN 'S003086' THEN
			'长盛轴承'
			WHEN 'S003087' THEN
			'安达维尔'
			WHEN 'S003088' THEN
			'海川智能'
			WHEN 'S003089' THEN
			'怡达股份'
			WHEN 'S003090' THEN
			'新余国科'
			WHEN 'S003091' THEN
			'一品红'
			WHEN 'S003092' THEN
			'捷佳伟创'
			WHEN 'S003093' THEN
			'药石科技'
			WHEN 'S003094' THEN
			'宏达电子'
			WHEN 'S003095' THEN
			'润禾材料'
			WHEN 'S003096' THEN
			'天常股份'
			WHEN 'S003097' THEN
			'乐歌股份'
			WHEN 'S003098' THEN
			'科创信息'
			WHEN 'S003099' THEN
			'科创新源'
			WHEN 'S003100' THEN
			'设研院'
			WHEN 'S003101' THEN
			'西菱动力'
			WHEN 'S003102' THEN
			'光弘科技'
			WHEN 'S003103' THEN
			'百邦科技'
			WHEN 'S003104' THEN
			'科顺股份'
			WHEN 'S003105' THEN
			'奥飞数据'
			WHEN 'S003106' THEN
			'明阳电路'
			WHEN 'S003107' THEN
			'御家汇'
			WHEN 'S003108' THEN
			'华宝股份'
			WHEN 'S003109' THEN
			'越博动力'
			WHEN 'S003110' THEN
			'天地数码'
			WHEN 'S003111' THEN
			'欣锐科技'
			WHEN 'S003112' THEN
			'汉嘉设计'
			WHEN 'S003113' THEN
			'锐科激光'
			WHEN 'S003114' THEN
			'顶固集创'
			WHEN 'S003115' THEN
			'迈为股份'
			WHEN 'S003116' THEN
			'隆利科技'
			WHEN 'S003117' THEN
			'爱朋医疗'
			WHEN 'S003118' THEN
			'华致酒行'
			WHEN 'S003119' THEN
			'金马游乐'
			WHEN 'S003120' THEN
			'罗博特科'
			WHEN 'S003121' THEN
			'七彩化学'
			WHEN 'S003122' THEN
			'康龙化成'
			WHEN 'S003123' THEN
			'迈瑞医疗'
			WHEN 'S003124' THEN
			'立华股份'
			WHEN 'S003125' THEN
			'上海瀚讯'
			WHEN 'S003126' THEN
			'锦浪科技'
			WHEN 'S003127' THEN
			'新诺威'
			WHEN 'S003128' THEN
			'每日互动'
			WHEN 'S003129' THEN
			'震安科技'
			WHEN 'S003130' THEN
			'迪普科技'
			WHEN 'S003131' THEN
			'德方纳米'
			WHEN 'S003132' THEN
			'新媒股份'
			WHEN 'S003133' THEN
			'智莱科技'
			WHEN 'S003134' THEN
			'运达股份'
			WHEN 'S003135' THEN
			'拉卡拉'
			WHEN 'S003136' THEN
			'三角防务'
			WHEN 'S003137' THEN
			'帝尔激光'
			WHEN 'S003138' THEN
			'中简科技'
			WHEN 'S003139' THEN
			'新城市'
			WHEN 'S003140' THEN
			'惠城环保'
			WHEN 'S003141' THEN
			'德恩精工'
			WHEN 'S003142' THEN
			'因赛集团'
			WHEN 'S003143' THEN
			'卓胜微'
			WHEN 'S003144' THEN
			'三只松鼠'
			WHEN 'S003145' THEN
			'值得买'
			WHEN 'S003146' THEN
			'国林科技'
			WHEN 'S003147' THEN
			'海能实业'
			WHEN 'S003148' THEN
			'中信出版'
			WHEN 'S003149' THEN
			'唐源电气'
			WHEN 'S003150' THEN
			'宇瞳光学'
			WHEN 'S003151' THEN
			'仙乐健康'
			WHEN 'S003152' THEN
			'壹网壹创'
			WHEN 'S003153' THEN
			'佳禾智能'
			WHEN 'S003154' THEN
			'米奥会展'
			WHEN 'S003155' THEN
			'贝斯美'
			WHEN 'S003156' THEN
			'钢研纳克'
			WHEN 'S003157' THEN
			'锦鸡股份'
			WHEN 'S003158' THEN
			'左江科技'
			WHEN 'S003159' THEN
			'力合科技'
			WHEN 'S003160' THEN
			'泰和科技'
			WHEN 'S003161' THEN
			'矩子科技'
			WHEN 'S003162' THEN
			'指南针'
			WHEN 'S003163' THEN
			'电声股份'
			WHEN 'S003164' THEN
			'斯迪克'
			WHEN 'S003165' THEN
			'天迈科技'
			WHEN 'S003166' THEN
			'久量股份'
			WHEN 'S003167' THEN
			'华辰装备'
			WHEN 'S003168' THEN
			'中科海讯'
			WHEN 'S003169' THEN
			'铂科新材'
			WHEN 'S003170' THEN
			'易天股份'
			WHEN 'S003171' THEN
			'泰林生物'
			WHEN 'S003172' THEN
			'玉禾田'
			WHEN 'S003173' THEN
			'艾可蓝'
			WHEN 'S003174' THEN
			'双飞股份'
			WHEN 'S003175' THEN
			'耐普矿机'
			WHEN 'S003176' THEN
			'聚杰微纤'
			WHEN 'S003177' THEN
			'英杰电气'
			WHEN 'S003178' THEN
			'东岳硅材'
			WHEN 'S003179' THEN
			'贝仕达克'
			WHEN 'S003180' THEN
			'建科机械'
			WHEN 'S003181' THEN
			'测绘股份'
			WHEN 'S003182' THEN
			'上能电气'
			WHEN 'S003183' THEN
			'锐新科技'
			WHEN 'S003184' THEN
			'金丹科技'
			WHEN 'S003185' THEN
			'金现代'
			WHEN 'S003186' THEN
			'派瑞股份'
			WHEN 'S003187' THEN
			'新产业'
			WHEN 'S003188' THEN
			'浩洋股份'
			WHEN 'S003189' THEN
			'龙磁科技'
			WHEN 'S003190' THEN
			'佰奥智能'
			WHEN 'S003191' THEN
			'浙矿股份'
			WHEN 'S003192' THEN
			'浙江力诺'
			WHEN 'S003193' THEN
			'博汇股份'
			WHEN 'S003194' THEN
			'酷特智能'
			WHEN 'S003195' THEN
			'新和成'
			WHEN 'S003196' THEN
			'精功科技'
			WHEN 'S003197' THEN
			'华兰生物'
			WHEN 'S003198' THEN
			'天奇股份'
			WHEN 'S003199' THEN
			'凯恩股份'
			WHEN 'S003200' THEN
			'永新股份'
			WHEN 'S003201' THEN
			'协鑫能科'
			WHEN 'S003202' THEN
			'世荣兆业'
			WHEN 'S003203' THEN
			'东信和平'
			WHEN 'S003204' THEN
			'华信退'
			WHEN 'S003205' THEN
			'亿帆医药'
			WHEN 'S003206' THEN
			'京新药业'
			WHEN 'S003207' THEN
			'中捷资源'
			WHEN 'S003208' THEN
			'科华生物'
			WHEN 'S003209' THEN
			'航天电器'
			WHEN 'S003210' THEN
			'山东威达'
			WHEN 'S003211' THEN
			'分众传媒'
			WHEN 'S003212' THEN
			'思源电气'
			WHEN 'S003213' THEN
			'达安基因'
			WHEN 'S003214' THEN
			'苏泊尔'
			WHEN 'S003215' THEN
			'旺能环境'
			WHEN 'S003216' THEN
			'华帝股份'
			WHEN 'S003217' THEN
			'双鹭药业'
			WHEN 'S003218' THEN
			'黔源电力'
			WHEN 'S003219' THEN
			'登海种业'
			WHEN 'S003220' THEN
			'兔宝宝'
			WHEN 'S003221' THEN
			'国光电器'
			WHEN 'S003222' THEN
			'宁波华翔'
			WHEN 'S003223' THEN
			'三花智控'
			WHEN 'S003224' THEN
			'中工国际'
			WHEN 'S003225' THEN
			'云南能投'
			WHEN 'S003226' THEN
			'中钢天源'
			WHEN 'S003227' THEN
			'威尔泰'
			WHEN 'S003228' THEN
			'远光软件'
			WHEN 'S003229' THEN
			'长城影视'
			WHEN 'S003230' THEN
			'凯瑞德'
			WHEN 'S003231' THEN
			'沙钢股份'
			WHEN 'S003232' THEN
			'雪莱特'
			WHEN 'S003233' THEN
			'苏州固锝'
			WHEN 'S003234' THEN
			'万邦德'
			WHEN 'S003235' THEN
			'海鸥住工'
			WHEN 'S003236' THEN
			'江苏国泰'
			WHEN 'S003237' THEN
			'生意宝'
			WHEN 'S003238' THEN
			'南岭民爆'
			WHEN 'S003239' THEN
			'山河智能'
			WHEN 'S003240' THEN
			'浔兴股份'
			WHEN 'S003241' THEN
			'广东鸿图'
			WHEN 'S003242' THEN
			'冠福股份'
			WHEN 'S003243' THEN
			'广博股份'
			WHEN 'S003244' THEN
			'恒宝股份'
			WHEN 'S003245' THEN
			'信隆健康'
			WHEN 'S003246' THEN
			'莱宝高科'
			WHEN 'S003247' THEN
			'沃华医药'
			WHEN 'S003248' THEN
			'沧州明珠'
			WHEN 'S003249' THEN
			'兴化股份'
			WHEN 'S003250' THEN
			'三变科技'
			WHEN 'S003251' THEN
			'天润数娱'
			WHEN 'S003252' THEN
			'罗平锌电'
			WHEN 'S003253' THEN
			'中国海诚'
			WHEN 'S003254' THEN
			'东港股份'
			WHEN 'S003255' THEN
			'紫鑫药业'
			WHEN 'S003256' THEN
			'康强电子'
			WHEN 'S003257' THEN
			'天邦股份'
			WHEN 'S003258' THEN
			'湘潭电化'
			WHEN 'S003259' THEN
			'露天煤业'
			WHEN 'S003260' THEN
			'天津普林'
			WHEN 'S003261' THEN
			'安纳达'
			WHEN 'S003262' THEN
			'麦达数字'
			WHEN 'S003263' THEN
			'顺络电子'
			WHEN 'S003264' THEN
			'东华科技'
			WHEN 'S003265' THEN
			'贤丰控股'
			WHEN 'S003266' THEN
			'宏达高科'
			WHEN 'S003267' THEN
			'中核钛白'
			WHEN 'S003268' THEN
			'新光圆成'
			WHEN 'S003269' THEN
			'北纬科技'
			WHEN 'S003270' THEN
			'通润装备'
			WHEN 'S003271' THEN
			'北斗星通'
			WHEN 'S003272' THEN
			'广电运通'
			WHEN 'S003273' THEN
			'石基信息'
			WHEN 'S003274' THEN
			'通富微电'
			WHEN 'S003275' THEN
			'汉钟精机'
			WHEN 'S003276' THEN
			'三特索道'
			WHEN 'S003277' THEN
			'常铝股份'
			WHEN 'S003278' THEN
			'远望谷'
			WHEN 'S003279' THEN
			'悦心健康'
			WHEN 'S003280' THEN
			'宁波东力'
			WHEN 'S003281' THEN
			'红宝丽'
			WHEN 'S003282' THEN
			'莱茵生物'
			WHEN 'S003283' THEN
			'惠程科技'
			WHEN 'S003284' THEN
			'楚江新材'
			WHEN 'S003285' THEN
			'澳洋健康'
			WHEN 'S003286' THEN
			'创新医疗'
			WHEN 'S003287' THEN
			'东方网络'
			WHEN 'S003288' THEN
			'江特电机'
			WHEN 'S003289' THEN
			'御银股份'
			WHEN 'S003290' THEN
			'延华智能'
			WHEN 'S003291' THEN
			'纳思达'
			WHEN 'S003292' THEN
			'粤传媒'
			WHEN 'S003293' THEN
			'云海金属'
			WHEN 'S003294' THEN
			'海得控制'
			WHEN 'S003295' THEN
			'广百股份'
			WHEN 'S003296' THEN
			'巴士在线'
			WHEN 'S003297' THEN
			'中光学'
			WHEN 'S003298' THEN
			'成飞集成'
			WHEN 'S003299' THEN
			'劲嘉股份'
			WHEN 'S003300' THEN
			'融捷股份'
			WHEN 'S003301' THEN
			'如意集团'
			WHEN 'S003302' THEN
			'武汉凡谷'
			WHEN 'S003303' THEN
			'方正电机'
			WHEN 'S003304' THEN
			'嘉应制药'
			WHEN 'S003305' THEN
			'东晶电子'
			WHEN 'S003306' THEN
			'云投生态'
			WHEN 'S003307' THEN
			'九鼎新材'
			WHEN 'S003308' THEN
			'大连重工'
			WHEN 'S003309' THEN
			'海利得'
			WHEN 'S003310' THEN
			'准油股份'
			WHEN 'S003311' THEN
			'达意隆'
			WHEN 'S003312' THEN
			'宏达新材'
			WHEN 'S003313' THEN
			'大为股份'
			WHEN 'S003314' THEN
			'诺普信'
			WHEN 'S003315' THEN
			'三全食品'
			WHEN 'S003316' THEN
			'恒康医疗'
			WHEN 'S003317' THEN
			'福晶科技'
			WHEN 'S003318' THEN
			'鱼跃医疗'
			WHEN 'S003319' THEN
			'奥特迅'
			WHEN 'S003320' THEN
			'鸿博股份'
			WHEN 'S003321' THEN
			'科大讯飞'
			WHEN 'S003322' THEN
			'奥维通信'
			WHEN 'S003323' THEN
			'启明信息'
			WHEN 'S003324' THEN
			'塔牌集团'
			WHEN 'S003325' THEN
			'民和股份'
			WHEN 'S003326' THEN
			'安妮股份'
			WHEN 'S003327' THEN
			'大华股份'
			WHEN 'S003328' THEN
			'天威视讯'
			WHEN 'S003329' THEN
			'奥特佳'
			WHEN 'S003330' THEN
			'盛新锂能'
			WHEN 'S003331' THEN
			'九阳股份'
			WHEN 'S003332' THEN
			'力合科创'
			WHEN 'S003333' THEN
			'北化股份'
			WHEN 'S003334' THEN
			'聚力文化'
			WHEN 'S003335' THEN
			'华东数控'
			WHEN 'S003336' THEN
			'大洋电机'
			WHEN 'S003337' THEN
			'步步高'
			WHEN 'S003338' THEN
			'川大智胜'
			WHEN 'S003339' THEN
			'泰和新材'
			WHEN 'S003340' THEN
			'海陆重工'
			WHEN 'S003341' THEN
			'兆新股份'
			WHEN 'S003342' THEN
			'立立电子'
			WHEN 'S003343' THEN
			'德奥通航'
			WHEN 'S003344' THEN
			'拓维信息'
			WHEN 'S003345' THEN
			'恩华药业'
			WHEN 'S003346' THEN
			'大东南'
			WHEN 'S003347' THEN
			'新华都'
			WHEN 'S003348' THEN
			'西仪股份'
			WHEN 'S003349' THEN
			'卫士通'
			WHEN 'S003350' THEN
			'川润股份'
			WHEN 'S003351' THEN
			'桂林三金'
			WHEN 'S003352' THEN
			'神开股份'
			WHEN 'S003353' THEN
			'联络互动'
			WHEN 'S003354' THEN
			'光迅科技'
			WHEN 'S003355' THEN
			'博深股份'
			WHEN 'S003356' THEN
			'天润工业'
			WHEN 'S003357' THEN
			'世联行'
			WHEN 'S003358' THEN
			'保龄宝'
			WHEN 'S003359' THEN
			'奇正藏药'
			WHEN 'S003360' THEN
			'超华科技'
			WHEN 'S003361' THEN
			'禾盛新材'
			WHEN 'S003362' THEN
			'罗莱生活'
			WHEN 'S003363' THEN
			'信立泰'
			WHEN 'S003364' THEN
			'精艺股份'
			WHEN 'S003365' THEN
			'博云新材'
			WHEN 'S003366' THEN
			'中电兴发'
			WHEN 'S003367' THEN
			'太阳电缆'
			WHEN 'S003368' THEN
			'齐心集团'
			WHEN 'S003369' THEN
			'美盈森'
			WHEN 'S003370' THEN
			'洋河股份'
			WHEN 'S003371' THEN
			'威创股份'
			WHEN 'S003372' THEN
			'日海智能'
			WHEN 'S003373' THEN
			'焦点科技'
			WHEN 'S003374' THEN
			'亚联发展'
			WHEN 'S003375' THEN
			'众生药业'
			WHEN 'S003376' THEN
			'乐通股份'
			WHEN 'S003377' THEN
			'海峡股份'
			WHEN 'S003378' THEN
			'理工环科'
			WHEN 'S003379' THEN
			'雅博科技'
			WHEN 'S003380' THEN
			'普利特'
			WHEN 'S003381' THEN
			'富安娜'
			WHEN 'S003382' THEN
			'新朋股份'
			WHEN 'S003383' THEN
			'得利斯'
			WHEN 'S003384' THEN
			'皖通科技'
			WHEN 'S003385' THEN
			'罗普斯金'
			WHEN 'S003386' THEN
			'英威腾'
			WHEN 'S003387' THEN
			'科华数据'
			WHEN 'S003388' THEN
			'人人乐'
			WHEN 'S003389' THEN
			'赛象科技'
			WHEN 'S003390' THEN
			'奥普光电'
			WHEN 'S003391' THEN
			'积成电子'
			WHEN 'S003392' THEN
			'巨力索具'
			WHEN 'S003393' THEN
			'慈文传媒'
			WHEN 'S003394' THEN
			'柘中股份'
			WHEN 'S003395' THEN
			'高乐股份'
			WHEN 'S003396' THEN
			'精华制药'
			WHEN 'S003397' THEN
			'北京科锐'
			WHEN 'S003398' THEN
			'漫步者'
			WHEN 'S003399' THEN
			'杰瑞股份'
			WHEN 'S003400' THEN
			'兴民智通'
			WHEN 'S003401' THEN
			'赫美集团'
			WHEN 'S003402' THEN
			'富临运业'
			WHEN 'S003403' THEN
			'森源电气'
			WHEN 'S003404' THEN
			'神剑股份'
			WHEN 'S003405' THEN
			'汉王科技'
			WHEN 'S003406' THEN
			'中恒电气'
			WHEN 'S003407' THEN
			'永安药业'
			WHEN 'S003408' THEN
			'台海核电'
			WHEN 'S003409' THEN
			'康力电梯'
			WHEN 'S003410' THEN
			'卓翼科技'
			WHEN 'S003411' THEN
			'北方华创'
			WHEN 'S003412' THEN
			'伟星新材'
			WHEN 'S003413' THEN
			'宏创控股'
			WHEN 'S003414' THEN
			'科远智慧'
			WHEN 'S003415' THEN
			'双箭股份'
			WHEN 'S003416' THEN
			'合众思壮'
			WHEN 'S003417' THEN
			'新亚制程'
			WHEN 'S003418' THEN
			'航天彩虹'
			WHEN 'S003419' THEN
			'力生制药'
			WHEN 'S003420' THEN
			'双象股份'
			WHEN 'S003421' THEN
			'星网锐捷'
			WHEN 'S003422' THEN
			'梦洁股份'
			WHEN 'S003423' THEN
			'垒知集团'
			WHEN 'S003424' THEN
			'中远海科'
			WHEN 'S003425' THEN
			'爱仕达'
			WHEN 'S003426' THEN
			'嘉欣丝绸'
			WHEN 'S003427' THEN
			'雅克科技'
			WHEN 'S003428' THEN
			'汉森制药'
			WHEN 'S003429' THEN
			'雷科防务'
			WHEN 'S003430' THEN
			'高德红外'
			WHEN 'S003431' THEN
			'深南股份'
			WHEN 'S003432' THEN
			'达实智能'
			WHEN 'S003433' THEN
			'中粮资本'
			WHEN 'S003434' THEN
			'贵州百灵'
			WHEN 'S003435' THEN
			'胜利精密'
			WHEN 'S003436' THEN
			'尤夫股份'
			WHEN 'S003437' THEN
			'云南锗业'
			WHEN 'S003438' THEN
			'九安医疗'
			WHEN 'S003439' THEN
			'长江健康'
			WHEN 'S003440' THEN
			'江苏神通'
			WHEN 'S003441' THEN
			'闰土股份'
			WHEN 'S003442' THEN
			'龙星化工'
			WHEN 'S003443' THEN
			'金洲管道'
			WHEN 'S003444' THEN
			'巨星科技'
			WHEN 'S003445' THEN
			'晨鑫科技'
			WHEN 'S003446' THEN
			'中原内配'
			WHEN 'S003447' THEN
			'摩恩电气'
			WHEN 'S003448' THEN
			'长高集团'
			WHEN 'S003449' THEN
			'华软科技'
			WHEN 'S003450' THEN
			'松芝股份'
			WHEN 'S003451' THEN
			'青龙管业'
			WHEN 'S003452' THEN
			'益生股份'
			WHEN 'S003453' THEN
			'晶澳科技'
			WHEN 'S003454' THEN
			'沪电股份'
			WHEN 'S003455' THEN
			'众应互联'
			WHEN 'S003456' THEN
			'二六三'
			WHEN 'S003457' THEN
			'三维工程'
			WHEN 'S003458' THEN
			'圣莱达'
			WHEN 'S003459' THEN
			'宝莫股份'
			WHEN 'S003460' THEN
			'常宝股份'
			WHEN 'S003461' THEN
			'双塔食品'
			WHEN 'S003462' THEN
			'润邦股份'
			WHEN 'S003463' THEN
			'江海股份'
			WHEN 'S003464' THEN
			'大金重工'
			WHEN 'S003465' THEN
			'金固股份'
			WHEN 'S003466' THEN
			'华斯股份'
			WHEN 'S003467' THEN
			'佳隆股份'
			WHEN 'S003468' THEN
			'汉缆股份'
			WHEN 'S003469' THEN
			'科林环保'
			WHEN 'S003470' THEN
			'鼎龙文化'
			WHEN 'S003471' THEN
			'弘高创意'
			WHEN 'S003472' THEN
			'涪陵榨菜'
			WHEN 'S003473' THEN
			'老板电器'
			WHEN 'S003474' THEN
			'蓝丰生化'
			WHEN 'S003475' THEN
			'宝馨科技'
			WHEN 'S003476' THEN
			'金字火腿'
			WHEN 'S003477' THEN
			'旷达科技'
			WHEN 'S003478' THEN
			'恺英网络'
			WHEN 'S003479' THEN
			'科士达'
			WHEN 'S003480' THEN
			'银河电子'
			WHEN 'S003481' THEN
			'日发精机'
			WHEN 'S003482' THEN
			'浙江众成'
			WHEN 'S003483' THEN
			'天桥起重'
			WHEN 'S003484' THEN
			'光正眼科'
			WHEN 'S003485' THEN
			'胜景山河'
			WHEN 'S003486' THEN
			'英飞拓'
			WHEN 'S003487' THEN
			'海源复材'
			WHEN 'S003488' THEN
			'金财互联'
			WHEN 'S003489' THEN
			'天山铝业'
			WHEN 'S003490' THEN
			'金杯电工'
			WHEN 'S003491' THEN
			'飞龙股份'
			WHEN 'S003492' THEN
			'海联金汇'
			WHEN 'S003493' THEN
			'亚太科技'
			WHEN 'S003494' THEN
			'鸿路钢构'
			WHEN 'S003495' THEN
			'万和电气'
			WHEN 'S003496' THEN
			'东方铁塔'
			WHEN 'S003497' THEN
			'新联电子'
			WHEN 'S003498' THEN
			'春兴精工'
			WHEN 'S003499' THEN
			'凯美特气'
			WHEN 'S003500' THEN
			'千红制药'
			WHEN 'S003501' THEN
			'宝鼎科技'
			WHEN 'S003502' THEN
			'南方轴承'
			WHEN 'S003503' THEN
			'三七互娱'
			WHEN 'S003504' THEN
			'辉隆股份'
			WHEN 'S003505' THEN
			'洽洽食品'
			WHEN 'S003506' THEN
			'巨人网络'
			WHEN 'S003507' THEN
			'亚威股份'
			WHEN 'S003508' THEN
			'通达股份'
			WHEN 'S003509' THEN
			'徐家汇'
			WHEN 'S003510' THEN
			'森马服饰'
			WHEN 'S003511' THEN
			'益盛药业'
			WHEN 'S003512' THEN
			'百润股份'
			WHEN 'S003513' THEN
			'步森股份'
			WHEN 'S003514' THEN
			'贝因美'
			WHEN 'S003515' THEN
			'德力股份'
			WHEN 'S003516' THEN
			'群兴玩具'
			WHEN 'S003517' THEN
			'通达动力'
			WHEN 'S003518' THEN
			'雷柏科技'
			WHEN 'S003519' THEN
			'闽发铝业'
			WHEN 'S003520' THEN
			'中京电子'
			WHEN 'S003521' THEN
			'圣阳股份'
			WHEN 'S003522' THEN
			'西陇科学'
			WHEN 'S003523' THEN
			'奥拓电子'
			WHEN 'S003524' THEN
			'万安科技'
			WHEN 'S003525' THEN
			'恒大高新'
			WHEN 'S003526' THEN
			'八菱科技'
			WHEN 'S003527' THEN
			'日上集团'
			WHEN 'S003528' THEN
			'豪迈科技'
			WHEN 'S003529' THEN
			'山东章鼓'
			WHEN 'S003530' THEN
			'盛通股份'
			WHEN 'S003531' THEN
			'领益智造'
			WHEN 'S003532' THEN
			'世纪华通'
			WHEN 'S003533' THEN
			'以岭药业'
			WHEN 'S003534' THEN
			'姚记科技'
			WHEN 'S003535' THEN
			'大连电瓷'
			WHEN 'S003536' THEN
			'捷顺科技'
			WHEN 'S003537' THEN
			'东方精工'
			WHEN 'S003538' THEN
			'北玻股份'
			WHEN 'S003539' THEN
			'丹邦科技'
			WHEN 'S003540' THEN
			'艾格拉斯'
			WHEN 'S003541' THEN
			'瑞和股份'
			WHEN 'S003542' THEN
			'美吉姆'
			WHEN 'S003543' THEN
			'融钰集团'
			WHEN 'S003544' THEN
			'亚玛顿'
			WHEN 'S003545' THEN
			'完美世界'
			WHEN 'S003546' THEN
			'光启技术'
			WHEN 'S003547' THEN
			'金达威'
			WHEN 'S003548' THEN
			'仁智股份'
			WHEN 'S003549' THEN
			'道明光学'
			WHEN 'S003550' THEN
			'申科股份'
			WHEN 'S003551' THEN
			'安洁科技'
			WHEN 'S003552' THEN
			'金安国纪'
			WHEN 'S003553' THEN
			'赞宇科技'
			WHEN 'S003554' THEN
			'雪人股份'
			WHEN 'S003555' THEN
			'荣联科技'
			WHEN 'S003556' THEN
			'万润股份'
			WHEN 'S003557' THEN
			'佛慈制药'
			WHEN 'S003558' THEN
			'华宏科技'
			WHEN 'S003559' THEN
			'青青稞酒'
			WHEN 'S003560' THEN
			'仁东控股'
			WHEN 'S003561' THEN
			'加加食品'
			WHEN 'S003562' THEN
			'利君股份'
			WHEN 'S003563' THEN
			'扬子新材'
			WHEN 'S003564' THEN
			'万润科技'
			WHEN 'S003565' THEN
			'共达电声'
			WHEN 'S003566' THEN
			'摩登大道'
			WHEN 'S003567' THEN
			'茂硕电源'
			WHEN 'S003568' THEN
			'长鹰信质'
			WHEN 'S003569' THEN
			'德联集团'
			WHEN 'S003570' THEN
			'鞍重股份'
			WHEN 'S003571' THEN
			'康达新材'
			WHEN 'S003572' THEN
			'龙泉股份'
			WHEN 'S003573' THEN
			'兴业科技'
			WHEN 'S003574' THEN
			'东诚药业'
			WHEN 'S003575' THEN
			'顺威股份'
			WHEN 'S003576' THEN
			'浙江美大'
			WHEN 'S003577' THEN
			'珠江钢琴'
			WHEN 'S003578' THEN
			'福建金森'
			WHEN 'S003579' THEN
			'长生退'
			WHEN 'S003580' THEN
			'猛狮科技'
			WHEN 'S003581' THEN
			'华东重机'
			WHEN 'S003582' THEN
			'亿利达'
			WHEN 'S003583' THEN
			'乔治白'
			WHEN 'S003584' THEN
			'金河生物'
			WHEN 'S003585' THEN
			'远大智能'
			WHEN 'S003586' THEN
			'美亚光电'
			WHEN 'S003587' THEN
			'冀凯股份'
			WHEN 'S003588' THEN
			'远程电缆'
			WHEN 'S003589' THEN
			'双成药业'
			WHEN 'S003590' THEN
			'顾地科技'
			WHEN 'S003591' THEN
			'煌上煌'
			WHEN 'S003592' THEN
			'百洋股份'
			WHEN 'S003593' THEN
			'红旗连锁'
			WHEN 'S003594' THEN
			'博实股份'
			WHEN 'S003595' THEN
			'美盛文化'
			WHEN 'S003596' THEN
			'新疆浩源'
			WHEN 'S003597' THEN
			'海欣食品'
			WHEN 'S003598' THEN
			'浙江世宝'
			WHEN 'S003599' THEN
			'新宝股份'
			WHEN 'S003600' THEN
			'良信股份'
			WHEN 'S003601' THEN
			'光洋股份'
			WHEN 'S003602' THEN
			'天赐材料'
			WHEN 'S003603' THEN
			'慈铭体检'
			WHEN 'S003604' THEN
			'欧浦智网'
			WHEN 'S003605' THEN
			'思美传媒'
			WHEN 'S003606' THEN
			'东易日盛'
			WHEN 'S003607' THEN
			'登云股份'
			WHEN 'S003608' THEN
			'友邦吊顶'
			WHEN 'S003609' THEN
			'麦趣尔'
			WHEN 'S003610' THEN
			'宏良股份'
			WHEN 'S003611' THEN
			'金莱特'
			WHEN 'S003612' THEN
			'海洋王'
			WHEN 'S003613' THEN
			'跃岭股份'
			WHEN 'S003614' THEN
			'龙大肉食'
			WHEN 'S003615' THEN
			'好利来'
			WHEN 'S003616' THEN
			'电光科技'
			WHEN 'S003617' THEN
			'萃华珠宝'
			WHEN 'S003618' THEN
			'燕塘乳业'
			WHEN 'S003619' THEN
			'雄韬股份'
			WHEN 'S003620' THEN
			'利民股份'
			WHEN 'S003621' THEN
			'王子新材'
			WHEN 'S003622' THEN
			'葵花药业'
			WHEN 'S003623' THEN
			'万达电影'
			WHEN 'S003624' THEN
			'爱迪尔'
			WHEN 'S003625' THEN
			'富煌钢构'
			WHEN 'S003626' THEN
			'仙坛股份'
			WHEN 'S003627' THEN
			'埃斯顿'
			WHEN 'S003628' THEN
			'世龙实业'
			WHEN 'S003629' THEN
			'国光股份'
			WHEN 'S003630' THEN
			'龙津药业'
			WHEN 'S003631' THEN
			'易尚展示'
			WHEN 'S003632' THEN
			'昇兴股份'
			WHEN 'S003633' THEN
			'奥赛康'
			WHEN 'S003634' THEN
			'永兴材料'
			WHEN 'S003635' THEN
			'南兴股份'
			WHEN 'S003636' THEN
			'天际股份'
			WHEN 'S003637' THEN
			'凤形股份'
			WHEN 'S003638' THEN
			'多喜爱'
			WHEN 'S003639' THEN
			'金发拉比'
			WHEN 'S003640' THEN
			'汇洁股份'
			WHEN 'S003641' THEN
			'蓝黛科技'
			WHEN 'S003642' THEN
			'先锋电子'
			WHEN 'S003643' THEN
			'国恩股份'
			WHEN 'S003644' THEN
			'普路通'
			WHEN 'S003645' THEN
			'科迪乳业'
			WHEN 'S003646' THEN
			'真视通'
			WHEN 'S003647' THEN
			'快意电梯'
			WHEN 'S003648' THEN
			'文科园林'
			WHEN 'S003649' THEN
			'柏堡龙'
			WHEN 'S003650' THEN
			'久远银海'
			WHEN 'S003651' THEN
			'高科石化'
			WHEN 'S003652' THEN
			'中坚科技'
			WHEN 'S003653' THEN
			'三夫户外'
			WHEN 'S003654' THEN
			'可立克'
			WHEN 'S003655' THEN
			'万里石'
			WHEN 'S003656' THEN
			'银宝山新'
			WHEN 'S003657' THEN
			'鹭燕医药'
			WHEN 'S003658' THEN
			'瑞尔特'
			WHEN 'S003659' THEN
			'坚朗五金'
			WHEN 'S003660' THEN
			'通宇通讯'
			WHEN 'S003661' THEN
			'永和智控'
			WHEN 'S003662' THEN
			'世嘉科技'
			WHEN 'S003663' THEN
			'帝欧家居'
			WHEN 'S003664' THEN
			'环球印务'
			WHEN 'S003665' THEN
			'天顺股份'
			WHEN 'S003666' THEN
			'微光股份'
			WHEN 'S003667' THEN
			'洪汇新材'
			WHEN 'S003668' THEN
			'吉宏股份'
			WHEN 'S003669' THEN
			'丰元股份'
			WHEN 'S003670' THEN
			'红墙股份'
			WHEN 'S003671' THEN
			'山东赫达'
			WHEN 'S003672' THEN
			'路畅科技'
			WHEN 'S003673' THEN
			'和科达'
			WHEN 'S003674' THEN
			'黄山胶囊'
			WHEN 'S003675' THEN
			'富森美'
			WHEN 'S003676' THEN
			'东方中科'
			WHEN 'S003677' THEN
			'桂发祥'
			WHEN 'S003678' THEN
			'凯莱英'
			WHEN 'S003679' THEN
			'和胜股份'
			WHEN 'S003680' THEN
			'纳尔股份'
			WHEN 'S003681' THEN
			'易明医药'
			WHEN 'S003682' THEN
			'高争民爆'
			WHEN 'S003683' THEN
			'贝肯能源'
			WHEN 'S003684' THEN
			'星网宇达'
			WHEN 'S003685' THEN
			'名雕股份'
			WHEN 'S003686' THEN
			'比音勒芬'
			WHEN 'S003687' THEN
			'弘亚数控'
			WHEN 'S003688' THEN
			'同为股份'
			WHEN 'S003689' THEN
			'新宏泽'
			WHEN 'S003690' THEN
			'英维克'
			WHEN 'S003691' THEN
			'道恩股份'
			WHEN 'S003692' THEN
			'泰嘉股份'
			WHEN 'S003693' THEN
			'同兴达'
			WHEN 'S003694' THEN
			'盐津铺子'
			WHEN 'S003695' THEN
			'高斯贝尔'
			WHEN 'S003696' THEN
			'威星智能'
			WHEN 'S003697' THEN
			'科达利'
			WHEN 'S003698' THEN
			'道道全'
			WHEN 'S003699' THEN
			'皮阿诺'
			WHEN 'S003700' THEN
			'捷荣技术'
			WHEN 'S003701' THEN
			'美芝股份'
			WHEN 'S003702' THEN
			'三晖电气'
			WHEN 'S003703' THEN
			'力盛赛车'
			WHEN 'S003704' THEN
			'洁美科技'
			WHEN 'S003705' THEN
			'瀛通通讯'
			WHEN 'S003706' THEN
			'实丰文化'
			WHEN 'S003707' THEN
			'盘龙药业'
			WHEN 'S003708' THEN
			'传艺科技'
			WHEN 'S003709' THEN
			'周大生'
			WHEN 'S003710' THEN
			'绿康生化'
			WHEN 'S003711' THEN
			'金溢科技'
			WHEN 'S003712' THEN
			'香山股份'
			WHEN 'S003713' THEN
			'伟隆股份'
			WHEN 'S003714' THEN
			'天圣制药'
			WHEN 'S003715' THEN
			'安奈儿'
			WHEN 'S003716' THEN
			'三利谱'
			WHEN 'S003717' THEN
			'元隆雅图'
			WHEN 'S003718' THEN
			'长缆科技'
			WHEN 'S003719' THEN
			'卫光生物'
			WHEN 'S003720' THEN
			'美格智能'
			WHEN 'S003721' THEN
			'金龙羽'
			WHEN 'S003722' THEN
			'中设股份'
			WHEN 'S003723' THEN
			'凌霄泵业'
			WHEN 'S003724' THEN
			'京泉华'
			WHEN 'S003725' THEN
			'沃特股份'
			WHEN 'S003726' THEN
			'绿茵生态'
			WHEN 'S003727' THEN
			'惠威科技'
			WHEN 'S003728' THEN
			'东方嘉盛'
			WHEN 'S003729' THEN
			'弘宇股份'
			WHEN 'S003730' THEN
			'科力尔'
			WHEN 'S003731' THEN
			'华通热力'
			WHEN 'S003732' THEN
			'川恒股份'
			WHEN 'S003733' THEN
			'中大力德'
			WHEN 'S003734' THEN
			'意华股份'
			WHEN 'S003735' THEN
			'赛隆药业'
			WHEN 'S003736' THEN
			'英派斯'
			WHEN 'S003737' THEN
			'哈三联'
			WHEN 'S003738' THEN
			'大博医疗'
			WHEN 'S003739' THEN
			'铭普光磁'
			WHEN 'S003740' THEN
			'宇环数控'
			WHEN 'S003741' THEN
			'金逸影视'
			WHEN 'S003742' THEN
			'华阳集团'
			WHEN 'S003743' THEN
			'德生科技'
			WHEN 'S003744' THEN
			'集泰股份'
			WHEN 'S003745' THEN
			'庄园牧场'
			WHEN 'S003746' THEN
			'中新赛克'
			WHEN 'S003747' THEN
			'奥士康'
			WHEN 'S003748' THEN
			'金奥博'
			WHEN 'S003749' THEN
			'蒙娜丽莎'
			WHEN 'S003750' THEN
			'名臣健康'
			WHEN 'S003751' THEN
			'德赛西威'
			WHEN 'S003752' THEN
			'联诚精密'
			WHEN 'S003753' THEN
			'伊戈尔'
			WHEN 'S003754' THEN
			'润都股份'
			WHEN 'S003755' THEN
			'盈趣科技'
			WHEN 'S003756' THEN
			'泰永长征'
			WHEN 'S003757' THEN
			'润建股份'
			WHEN 'S003758' THEN
			'宏川智慧'
			WHEN 'S003759' THEN
			'锋龙股份'
			WHEN 'S003760' THEN
			'明德生物'
			WHEN 'S003761' THEN
			'新兴装备'
			WHEN 'S003762' THEN
			'天奥电子'
			WHEN 'S003763' THEN
			'兴瑞科技'
			WHEN 'S003764' THEN
			'鹏鼎控股'
			WHEN 'S003765' THEN
			'昂利康'
			WHEN 'S003766' THEN
			'新农股份'
			WHEN 'S003767' THEN
			'宇晶股份'
			WHEN 'S003768' THEN
			'新乳业'
			WHEN 'S003769' THEN
			'恒铭达'
			WHEN 'S003770' THEN
			'华阳国际'
			WHEN 'S003771' THEN
			'奥美医疗'
			WHEN 'S003772' THEN
			'金时科技'
			WHEN 'S003773' THEN
			'亚世光电'
			WHEN 'S003774' THEN
			'日丰股份'
			WHEN 'S003775' THEN
			'鸿合科技'
			WHEN 'S003776' THEN
			'西麦食品'
			WHEN 'S003777' THEN
			'科瑞技术'
			WHEN 'S003778' THEN
			'小熊电器'
			WHEN 'S003779' THEN
			'青鸟消防'
			WHEN 'S003780' THEN
			'五方光电'
			WHEN 'S003781' THEN
			'豪尔赛'
			WHEN 'S003782' THEN
			'祥鑫科技'
			WHEN 'S003783' THEN
			'广电计量'
			WHEN 'S003784' THEN
			'新大正'
			WHEN 'S003785' THEN
			'锐明技术'
			WHEN 'S003786' THEN
			'和远气体'
			WHEN 'S003787' THEN
			'科安达'
			WHEN 'S003788' THEN
			'侨银股份'
			WHEN 'S003789' THEN
			'博杰股份'
			WHEN 'S003790' THEN
			'瑞玛工业'
			WHEN 'S003791' THEN
			'天箭科技'
			WHEN 'S003792' THEN
			'安宁股份'
			WHEN 'S003793' THEN
			'雷赛智能'
			WHEN 'S003794' THEN
			'华盛昌'
			WHEN 'S003795' THEN
			'朝阳科技'
			WHEN 'S003796' THEN
			'湘佳股份'
			WHEN 'S003797' THEN
			'芯瑞达'
			WHEN 'S003798' THEN
			'北摩高科'
			WHEN 'S003799' THEN
			'宇新股份'
			WHEN 'S003800' THEN
			'京北方'
			WHEN 'S003801' THEN
			'中天精装'
			WHEN 'S003802' THEN
			'盛视科技'
			WHEN 'S003803' THEN
			'金田实业'
			WHEN 'S003804' THEN
			'国华网安'
			WHEN 'S003805' THEN
			'世纪星源'
			WHEN 'S003806' THEN
			'全新好'
			WHEN 'S003807' THEN
			'美丽生态'
			WHEN 'S003808' THEN
			'深物业集团'
			WHEN 'S003809' THEN
			'深圳石化'
			WHEN 'S003810' THEN
			'沙河股份'
			WHEN 'S003811' THEN
			'深中浩'
			WHEN 'S003812' THEN
			'深中华'
			WHEN 'S003813' THEN
			'神州长城'
			WHEN 'S003814' THEN
			'深粮控股'
			WHEN 'S003815' THEN
			'深华发'
			WHEN 'S003816' THEN
			'深科技'
			WHEN 'S003817' THEN
			'深天地'
			WHEN 'S003818' THEN
			'深房集团'
			WHEN 'S003819' THEN
			'富奥股份'
			WHEN 'S003820' THEN
			'深桑达'
			WHEN 'S003821' THEN
			'新都退'
			WHEN 'S003822' THEN
			'神州数码'
			WHEN 'S003823' THEN
			'华联控股'
			WHEN 'S003824' THEN
			'深南电'
			WHEN 'S003825' THEN
			'深大通'
			WHEN 'S003826' THEN
			'东旭蓝天'
			WHEN 'S003827' THEN
			'深纺织'
			WHEN 'S003828' THEN
			'深中侨'
			WHEN 'S003829' THEN
			'京基智农'
			WHEN 'S003830' THEN
			'德赛电池'
			WHEN 'S003831' THEN
			'皇庭国际'
			WHEN 'S003832' THEN
			'华控赛格'
			WHEN 'S003833' THEN
			'广聚能源'
			WHEN 'S003834' THEN
			'中成股份'
			WHEN 'S003835' THEN
			'丰原药业'
			WHEN 'S003836' THEN
			'川能动力'
			WHEN 'S003837' THEN
			'华数传媒'
			WHEN 'S003838' THEN
			'国际实业'
			WHEN 'S003839' THEN
			'双林生物'
			WHEN 'S003840' THEN
			'金马控股'
			WHEN 'S003841' THEN
			'胜利股份'
			WHEN 'S003842' THEN
			'藏格控股'
			WHEN 'S003843' THEN
			'北方五环'
			WHEN 'S003844' THEN
			'民生控股'
			WHEN 'S003845' THEN
			'合肥百货'
			WHEN 'S003846' THEN
			'小天鹅'
			WHEN 'S003847' THEN
			'通程控股'
			WHEN 'S003848' THEN
			'吉林化纤'
			WHEN 'S003849' THEN
			'东阿阿胶'
			WHEN 'S003850' THEN
			'兴业矿业'
			WHEN 'S003851' THEN
			'国新健康'
			WHEN 'S003852' THEN
			'南华生物'
			WHEN 'S003853' THEN
			'京粮控股'
			WHEN 'S003854' THEN
			'中润资源'
			WHEN 'S003855' THEN
			'琼民源'
			WHEN 'S003856' THEN
			'华塑控股'
			WHEN 'S003857' THEN
			'新金路'
			WHEN 'S003858' THEN
			'攀渝钛业'
			WHEN 'S003859' THEN
			'四环生物'
			WHEN 'S003860' THEN
			'中兵红箭'
			WHEN 'S003861' THEN
			'长航凤凰'
			WHEN 'S003862' THEN
			'长虹美菱'
			WHEN 'S003863' THEN
			'岭南控股'
			WHEN 'S003864' THEN
			'红太阳'
			WHEN 'S003865' THEN
			'紫光学大'
			WHEN 'S003866' THEN
			'广弘控股'
			WHEN 'S003867' THEN
			'万泽股份'
			WHEN 'S003868' THEN
			'猴王股份'
			WHEN 'S003869' THEN
			'佛山照明'
			WHEN 'S003870' THEN
			'TCL通讯'
			WHEN 'S003871' THEN
			'金浦钛业'
			WHEN 'S003872' THEN
			'江铃汽车'
			WHEN 'S003873' THEN
			'创元科技'
			WHEN 'S003874' THEN
			'安道麦'
			WHEN 'S003875' THEN
			'泰山石油'
			WHEN 'S003876' THEN
			'南洋航运'
			WHEN 'S003877' THEN
			'西部创业'
			WHEN 'S003878' THEN
			'莱茵体育'
			WHEN 'S003879' THEN
			'烽火电子'
			WHEN 'S003880' THEN
			'渝三峡'
			WHEN 'S003881' THEN
			'海德股份'
			WHEN 'S003882' THEN
			'长城股份'
			WHEN 'S003883' THEN
			'苏常柴'
			WHEN 'S003884' THEN
			'新大洲'
			WHEN 'S003885' THEN
			'海马汽车'
			WHEN 'S003886' THEN
			'粤宏远'
			WHEN 'S003887' THEN
			'甘化科工'
			WHEN 'S003888' THEN
			'威孚高科'
			WHEN 'S003889' THEN
			'北部湾港'
			WHEN 'S003890' THEN
			'托普软件'
			WHEN 'S003891' THEN
			'哈工智能'
			WHEN 'S003892' THEN
			'汇源通信'
			WHEN 'S003893' THEN
			'国晟高科'
			WHEN 'S003894' THEN
			'启迪药业'
			WHEN 'S003895' THEN
			'大通燃气'
			WHEN 'S003896' THEN
			'国恒退'
			WHEN 'S003897' THEN
			'古井贡酒'
			WHEN 'S003898' THEN
			'金马集团'
			WHEN 'S003899' THEN
			'盛达资源'
			WHEN 'S003900' THEN
			'渤海股份'
			WHEN 'S003901' THEN
			'顺利办'
			WHEN 'S003902' THEN
			'中迪投资'
			WHEN 'S003903' THEN
			'西安旅游'
			WHEN 'S003904' THEN
			'天首发展'
			WHEN 'S003905' THEN
			'大东海'
			WHEN 'S003906' THEN
			'奥园美谷'
			WHEN 'S003907' THEN
			'康迈科技'
			WHEN 'S003908' THEN
			'恒立实业'
			WHEN 'S003909' THEN
			'远大控股'
			WHEN 'S003910' THEN
			'天茂集团'
			WHEN 'S003911' THEN
			'高新发展'
			WHEN 'S003912' THEN
			'铜陵有色'
			WHEN 'S003913' THEN
			'英力特'
			WHEN 'S003914' THEN
			'风华高科'
			WHEN 'S003915' THEN
			'茂化实华'
			WHEN 'S003916' THEN
			'万方发展'
			WHEN 'S003917' THEN
			'仁和药业'
			WHEN 'S003918' THEN
			'九州股份'
			WHEN 'S003919' THEN
			'金岭矿业'
			WHEN 'S003920' THEN
			'海洋集团'
			WHEN 'S003921' THEN
			'大通资源'
			WHEN 'S003922' THEN
			'长春高新'
			WHEN 'S003923' THEN
			'天夏智慧'
			WHEN 'S003924' THEN
			'永安林业'
			WHEN 'S003925' THEN
			'荣丰控股'
			WHEN 'S003926' THEN
			'盈方微'
			WHEN 'S003927' THEN
			'上峰水泥'
			WHEN 'S003928' THEN
			'当代东方'
			WHEN 'S003929' THEN
			'银山化工'
			WHEN 'S003930' THEN
			'智度股份'
			WHEN 'S003931' THEN
			'恒天海龙'
			WHEN 'S003932' THEN
			'襄阳轴承'
			WHEN 'S003933' THEN
			'视觉中国'
			WHEN 'S003934' THEN
			'东方电子'
			WHEN 'S003935' THEN
			'国城矿业'
			WHEN 'S003936' THEN
			'宏业集团'
			WHEN 'S003937' THEN
			'亚太实业'
			WHEN 'S003938' THEN
			'滨海能源'
			WHEN 'S003939' THEN
			'炼石航空'
			WHEN 'S003940' THEN
			'佳纸股份'
			WHEN 'S003941' THEN
			'正虹科技'
			WHEN 'S003942' THEN
			'浙江震元'
			WHEN 'S003943' THEN
			'中信特钢'
			WHEN 'S003944' THEN
			'贝瑞基因'
			WHEN 'S003945' THEN
			'京蓝科技'
			WHEN 'S003946' THEN
			'丰乐种业'
			WHEN 'S003947' THEN
			'中兴商业'
			WHEN 'S003948' THEN
			'黑芝麻'
			WHEN 'S003949' THEN
			'韶钢松山'
			WHEN 'S003950' THEN
			'中原传媒'
			WHEN 'S003951' THEN
			'新能泰山'
			WHEN 'S003952' THEN
			'西安饮食'
			WHEN 'S003953' THEN
			'湖南发展'
			WHEN 'S003954' THEN
			'美锦能源'
			WHEN 'S003955' THEN
			'华东科技'
			WHEN 'S003956' THEN
			'天创科技'
			WHEN 'S003957' THEN
			'四川美丰'
			WHEN 'S003958' THEN
			'振华科技'
			WHEN 'S003959' THEN
			'罗牛山'
			WHEN 'S003960' THEN
			'南风化工'
			WHEN 'S003961' THEN
			'航发控制'
			WHEN 'S003962' THEN
			'普洛药业'
			WHEN 'S003963' THEN
			'锌业股份'
			WHEN 'S003964' THEN
			'西藏发展'
			WHEN 'S003965' THEN
			'新华制药'
			WHEN 'S003966' THEN
			'浩物股份'
			WHEN 'S003967' THEN
			'中色股份'
			WHEN 'S003968' THEN
			'斯太尔'
			WHEN 'S003969' THEN
			'西藏矿业'
			WHEN 'S003970' THEN
			'汇绿生态'
			WHEN 'S003971' THEN
			'中航西飞'
			WHEN 'S003972' THEN
			'菲菲农业'
			WHEN 'S003973' THEN
			'中核科技'
			WHEN 'S003974' THEN
			'甘咨询'
			WHEN 'S003975' THEN
			'平庄能源'
			WHEN 'S003976' THEN
			'美达股份'
			WHEN 'S003977' THEN
			'居然之家'
			WHEN 'S003978' THEN
			'创智科技'
			WHEN 'S003979' THEN
			'北大医药'
			WHEN 'S003980' THEN
			'华神科技'
			WHEN 'S003981' THEN
			'英洛华'
			WHEN 'S003982' THEN
			'酒鬼酒'
			WHEN 'S003983' THEN
			'一汽解放'
			WHEN 'S003984' THEN
			'四川九洲'
			WHEN 'S003985' THEN
			'北京文化'
			WHEN 'S003986' THEN
			'北能股份'
			WHEN 'S003987' THEN
			'高能时代'
			WHEN 'S003988' THEN
			'陕西金叶'
			WHEN 'S003989' THEN
			'德展健康'
			WHEN 'S003990' THEN
			'美利云'
			WHEN 'S003991' THEN
			'航锦科技'
			WHEN 'S003992' THEN
			'岳阳兴长'
			WHEN 'S003993' THEN
			'神雾节能'
			WHEN 'S003994' THEN
			'京山轻机'
			WHEN 'S003995' THEN
			'山东海化'
			WHEN 'S003996' THEN
			'超声电子'
			WHEN 'S003997' THEN
			'长兴实业'
			WHEN 'S003998' THEN
			'五矿稀土'
			WHEN 'S003999' THEN
			'龙涤股份'
			WHEN 'S004000' THEN
			'粤桂股份'
			WHEN 'S004001' THEN
			'长城动漫'
			WHEN 'S004002' THEN
			'富通信息'
			WHEN 'S004003' THEN
			'财信发展'
			WHEN 'S004004' THEN
			'承德露露'
			WHEN 'S004005' THEN
			'冀东装备'
			WHEN 'S004006' THEN
			'五粮液'
			WHEN 'S004007' THEN
			'国风塑业'
			WHEN 'S004008' THEN
			'扬子石化'
			WHEN 'S004009' THEN
			'安凯客车'
			WHEN 'S004010' THEN
			'张裕'
			WHEN 'S004011' THEN
			'潍柴重机'
			WHEN 'S004012' THEN
			'城发环境'
			WHEN 'S004013' THEN
			'海南高速'
			WHEN 'S004014' THEN
			'中嘉博创'
			WHEN 'S004015' THEN
			'法尔胜'
			WHEN 'S004016' THEN
			'欢瑞世纪'
			WHEN 'S004017' THEN
			'亚钾国际'
			WHEN 'S004018' THEN
			'双汇发展'
			WHEN 'S004019' THEN
			'航天科技'
			WHEN 'S004020' THEN
			'新洋丰'
			WHEN 'S004021' THEN
			'数源科技'
			WHEN 'S004022' THEN
			'钱江摩托'
			WHEN 'S004023' THEN
			'山大华特'
			WHEN 'S004024' THEN
			'嘉凯城'
			WHEN 'S004025' THEN
			'金陵药业'
			WHEN 'S004026' THEN
			'海信家电'
			WHEN 'S004027' THEN
			'佳电股份'
			WHEN 'S004028' THEN
			'河钢资源'
			WHEN 'S004029' THEN
			'中国铁物'
			WHEN 'S004030' THEN
			'中钢国际'
			WHEN 'S004031' THEN
			'兰州黄河'
			WHEN 'S004032' THEN
			'紫光股份'
			WHEN 'S004033' THEN
			'新乡化纤'
			WHEN 'S004034' THEN
			'中国重汽'
			WHEN 'S004035' THEN
			'广济药业'
			WHEN 'S004036' THEN
			'河池化工'
			WHEN 'S004037' THEN
			'欣龙控股'
			WHEN 'S004038' THEN
			'东方能源'
			WHEN 'S004039' THEN
			'东方钽业'
			WHEN 'S004040' THEN
			'盈峰环境'
			WHEN 'S004041' THEN
			'中科三环'
			WHEN 'S004042' THEN
			'高升控股'
			WHEN 'S004043' THEN
			'中基健康'
			WHEN 'S004044' THEN
			'银泰黄金'
			WHEN 'S004045' THEN
			'华铁股份'
			WHEN 'S004046' THEN
			'桂林旅游'
			WHEN 'S004047' THEN
			'众泰汽车'
			WHEN 'S004048' THEN
			'中银绒业'
			WHEN 'S004049' THEN
			'大庆华科'
			WHEN 'S004050' THEN
			'九芝堂'
			WHEN 'S004051' THEN
			'通海高科'
			WHEN 'S004052' THEN
			'皇台酒业'
			WHEN 'S004053' THEN
			'中国中期'
			WHEN 'S004054' THEN
			'新大陆'
			WHEN 'S004055' THEN
			'深本实业'
			WHEN 'S004056' THEN
			'建设股份'
			WHEN 'S004057' THEN
			'大洋海运'
			WHEN 'S004058' THEN
			'东沣科技'
			WHEN 'S004059' THEN
			'舜喆股份'
			WHEN 'S004060' THEN
			'南京普天'
			WHEN 'S004061' THEN
			'闽灿坤'
			WHEN 'S004062' THEN
			'瓦轴股份'
			WHEN 'S004063' THEN
			'武锅股份'
			WHEN 'S004064' THEN
			'杭汽轮'
			WHEN 'S004065' THEN
			'中鲁远洋'
			WHEN 'S004066' THEN
			'北鼎股份'
			WHEN 'S004067' THEN
			'康华生物'
			WHEN 'S004068' THEN
			'帝科股份'
			WHEN 'S004069' THEN
			'博汇科技'
			WHEN 'S004070' THEN
			'复旦张江'
			WHEN 'S004071' THEN
			'联赢激光'
			WHEN 'S004072' THEN
			'神州细胞'
			WHEN 'S004073' THEN
			'泽达易盛'
			WHEN 'S004074' THEN
			'锦江旅游'
			WHEN 'S004075' THEN
			'汇丽建材'
			WHEN 'S004076' THEN
			'大化集团'
			WHEN 'S004077' THEN
			'凯马股份'
			WHEN 'S004078' THEN
			'东贝电器'
			WHEN 'S004079' THEN
			'凌云实业'
			WHEN 'X000207' THEN
			'宣城经济技术开发建投'
			WHEN 'Z000896' THEN
			'建行溧水支行'
			WHEN 'L000129' THEN
			'溧水经发'
			WHEN 'N000121' THEN
			'南阳投资集团'
			WHEN 'G000227' THEN
			'国开行河南分行'
			WHEN 'Z000897' THEN
			'巨能集团'
			WHEN 'C000292' THEN
			'东方广益'
			WHEN 'H000700' THEN
			'黑河农商行'
			WHEN 'X000363' THEN
			'星美文化旅游'
			WHEN 'Z001305' THEN
			'汇金租赁'
			WHEN 'J000619' THEN
			'建业地产'
			WHEN 'L000216' THEN
			'龙湖集团'
			WHEN 'J000620' THEN
			'绿陵润发'
			WHEN 'S000972' THEN
			'裕同科技'
			WHEN 'G000291' THEN
			'广安恒生投资'
			WHEN 'S005001' THEN
			'缙云国投'
			WHEN 'S005002' THEN
			'平度城投'
			WHEN 'Z000898' THEN
			'龙湾农商银行'
			WHEN 'Z000899' THEN
			'张掖城投'
			WHEN 'S005003' THEN
			'天智航'
			WHEN 'L000217' THEN
			'龙马潭农商行'
			WHEN 'Z001306' THEN
			'桐乡农商行'
			WHEN 'Q000109' THEN
			'中国青建'
			WHEN 'J000502' THEN
			'溧水农商行'
			WHEN 'H000303' THEN
			'长江出版传媒集团'
			WHEN 'T000308' THEN
			'众兴菌业'
			WHEN 'X000275' THEN
			'鸿通管廊'
			WHEN 'B000376' THEN
			'永盛励合'
			WHEN 'J000409' THEN
			'长江商行'
			WHEN 'S001259' THEN
			'深圳南山地产'
			WHEN 'H000791' THEN
			'汤阴农商行'
			WHEN 'Z001001' THEN
			'水电物资集团'
			WHEN 'J000621' THEN
			'建信租赁'
			WHEN 'C000157' THEN
			'蜀州城建'
			WHEN 'Z001002' THEN
			'浙江金控'
			WHEN 'D000136' THEN
			'阳光旅游'
			WHEN 'H000462' THEN
			'顺泰建设'
			WHEN 'Q000091' THEN
			'橡胶交易'
			WHEN 'B000349' THEN
			'白云电气'
			WHEN 'Z001335' THEN
			'胄天'
			WHEN 'T000209' THEN
			'泰山石膏'
			WHEN 'S000973' THEN
			'简阳控股'
			WHEN 'Z001336' THEN
			'万向控股'
			WHEN 'L000218' THEN
			'冠隆建设'
			WHEN 'P000039' THEN
			'盘锦银行'
			WHEN 'H000304' THEN
			'怀化高新投'
			WHEN 'H000792' THEN
			'华兴证券'
			WHEN 'S001186' THEN
			'歙县城建'
			WHEN 'Z001003' THEN
			'航空工业租赁'
			WHEN 'J000725' THEN
			'大丰江南村镇行'
			WHEN 'Z000669' THEN
			'永利集团'
			WHEN 'Z000670' THEN
			'中信银行绍兴分行'
			WHEN 'B000141' THEN
			'金利源国资管理中心'
			WHEN 'H000818' THEN
			'海尔融资'
			WHEN 'B000235' THEN
			'亦庄国投'
			WHEN 'B000236' THEN
			'海淀国投'
			WHEN 'X000234' THEN
			'兴证证券'
			WHEN 'H000485' THEN
			'邯郸建投'
			WHEN 'S001027' THEN
			'惠农产业'
			WHEN 'J000642' THEN
			'建水旅游'
			WHEN 'X000374' THEN
			'兴源控股集团'
			WHEN 'S007322' THEN
			'安溪农商行'
			WHEN 'S007323' THEN
			'富淼科技'
			WHEN 'S007324' THEN
			'泰坦股份'
			WHEN 'S007325' THEN
			'富国资管'
			WHEN 'S000424' THEN
			'得润电子'
			WHEN 'S007326' THEN
			'京能融资'
			WHEN 'S007327' THEN
			'兴国城投工业'
			WHEN 'S007328' THEN
			'光大环保深圳'
			WHEN 'S001153' THEN
			'海科化工'
			WHEN 'S001154' THEN
			'崇达技术'
			WHEN 'H000793' THEN
			'泰晶科技'
			WHEN 'B000407' THEN
			'百色通商小额贷款'
			WHEN 'N000336' THEN
			'南京文化投资'
			WHEN 'Z001413' THEN
			'七二五所'
			WHEN 'Y000379' THEN
			'银联商务'
			WHEN 'L000255' THEN
			'连云港控股'
			WHEN 'L000150' THEN
			'乐普医疗'
			WHEN 'H000830' THEN
			'哈工大集团'
			WHEN 'S001198' THEN
			'三力士'
			WHEN 'S000425' THEN
			'宿迁城建'
			WHEN 'P000099' THEN
			'鹏欣资源'
			WHEN 'H000877' THEN
			'余杭水务'
			WHEN 'G000579' THEN
			'光大金瓯'
			WHEN 'S005004' THEN
			'恒利轩投资'
			WHEN 'S005005' THEN
			'海宁水务'
			WHEN 'S005006' THEN
			'中船汉光'
			WHEN 'S005007' THEN
			'美瑞新材'
			WHEN 'S005008' THEN
			'迪威尔'
			WHEN 'J000422' THEN
			'金坛交通工程'
			WHEN 'T000218' THEN
			'港城驾训'
			WHEN 'S000652' THEN
			'海格物流'
			WHEN 'S000653' THEN
			'华夏文旅'
			WHEN 'J000410' THEN
			'锦汇建设'
			WHEN 'J000411' THEN
			'金沙路桥'
			WHEN 'S000654' THEN
			'明泰工程建设'
			WHEN 'C000144' THEN
			'昌达交通投资'
			WHEN 'S001199' THEN
			'射阳沿海投资'
			WHEN 'F000192' THEN
			'方正科技'
			WHEN 'S001187' THEN
			'盛业保理'
			WHEN 'S001188' THEN
			'懋顺企管'
			WHEN 'H000486' THEN
			'湖北政府'
			WHEN 'H000487' THEN
			'湖北农信社'
			WHEN 'S001189' THEN
			'松江水业'
			WHEN 'S005009' THEN
			'民生银行杭州分行'
			WHEN 'Z001004' THEN
			'舟山港集团'
			WHEN 'S007329' THEN
			'美诺华控股'
			WHEN 'S000778' THEN
			'陕西产投'
			WHEN 'S007330' THEN
			'优利德'
			WHEN 'S007331' THEN
			'迎丰股份'
			WHEN 'S007332' THEN
			'蓝天燃气'
			WHEN 'S007333' THEN
			'园林股份'
			WHEN 'S007334' THEN
			'江苏港口集团'
			WHEN 'S007335' THEN
			'苏州恒泰'
			WHEN 'S007336' THEN
			'鄞开集团'
			WHEN 'S007337' THEN
			'普洛斯租赁'
			WHEN 'S007338' THEN
			'杭钢水务'
			WHEN 'S007339' THEN
			'泉运集团'
			WHEN 'S007340' THEN
			'尚颀投资'
			WHEN 'S007341' THEN
			'电建租赁公司'
			WHEN 'J000503' THEN
			'嘉实资本'
			WHEN 'G000384' THEN
			'长顺久安'
			WHEN 'G000385' THEN
			'珠江投资'
			WHEN 'J000504' THEN
			'交银施罗德'
			WHEN 'X000276' THEN
			'兴业财富'
			WHEN 'G000386' THEN
			'东湖建设投资'
			WHEN 'Z001126' THEN
			'定海海洋农商行'
			WHEN 'S006139' THEN
			'海垦控股集团'
			WHEN 'S000678' THEN
			'金鲁班集团'
			WHEN 'S005010' THEN
			'融力天闻'
			WHEN 'S001200' THEN
			'上海临港'
			WHEN 'X000414' THEN
			'弘信博格'
			WHEN 'X000415' THEN
			'旭辉控股'
			WHEN 'S005011' THEN
			'江安城投'
			WHEN 'Z001439' THEN
			'铁建保理'
			WHEN 'S005012' THEN
			'中科星图'
			WHEN 'S005013' THEN
			'国盾量子'
			WHEN 'S001260' THEN
			'鲁华集团'
			WHEN 'C000366' THEN
			'青白江国投'
			WHEN 'H000488' THEN
			'海通开元'
			WHEN 'Z001414' THEN
			'中铁建物业'
			WHEN 'W000256' THEN
			'苍海建设'
			WHEN 'B000408' THEN
			'包头青山住建'
			WHEN 'Y000358' THEN
			'惠琮国际'
			WHEN 'B000388' THEN
			'北京链家'
			WHEN 'A000097' THEN
			'安徽交控'
			WHEN 'G000536' THEN
			'国轩高科'
			WHEN 'S007342' THEN
			'天风资管'
			WHEN 'S007343' THEN
			'康众医疗'
			WHEN 'S007344' THEN
			'内蒙古电力'
			WHEN 'S007345' THEN
			'广州城投'
			WHEN 'C000209' THEN
			'财通证券资管'
			WHEN 'H000557' THEN
			'汇添富资管'
			WHEN 'Q000110' THEN
			'中泰证券资管'
			WHEN 'S001155' THEN
			'拓日新能'
			WHEN 'S001156' THEN
			'泸天化'
			WHEN 'J000756' THEN
			'景德镇城投'
			WHEN 'S005014' THEN
			'耐世特'
			WHEN 'S005015' THEN
			'延锋汽车内饰'
			WHEN 'S005016' THEN
			'华融租赁'
			WHEN 'S005017' THEN
			'梅溪湖'
			WHEN 'G000327' THEN
			'广西壮族政府'
			WHEN 'H000794' THEN
			'华熙昕宇'
			WHEN 'W000252' THEN
			'都市产投'
			WHEN 'H000795' THEN
			'红河水利'
			WHEN 'P000040' THEN
			'鑫诚集团'
			WHEN 'A000098' THEN
			'桐城农商行'
			WHEN 'B000242' THEN
			'博彦科技'
			WHEN 'S005018' THEN
			'农银国际'
			WHEN 'T000309' THEN
			'通化农商行'
			WHEN 'J000698' THEN
			'太商村镇行'
			WHEN 'M000065' THEN
			'眉山农商行'
			WHEN 'S001157' THEN
			'青神农商行'
			WHEN 'S005019' THEN
			'葫芦娃'
			WHEN 'S005020' THEN
			'国光连锁'
			WHEN 'S005021' THEN
			'锦盛新材'
			WHEN 'P000100' THEN
			'盘锦致远水务'
			WHEN 'S006461' THEN
			'兆威机电'
			WHEN 'S006460' THEN
			'凯龙高科'
			WHEN 'S006459' THEN
			'友发集团'
			WHEN 'Y000230' THEN
			'一心堂'
			WHEN 'S007346' THEN
			'秋田微'
			WHEN 'S007347' THEN
			'信测标准'
			WHEN 'S007348' THEN
			'环翠区城发'
			WHEN 'S006244' THEN
			'李伟斌所'
			WHEN 'S006245' THEN
			'奥城实业'
			WHEN 'S000777' THEN
			'东方明珠'
			WHEN 'R000044' THEN
			'如东开泰投资'
			WHEN 'X000277' THEN
			'兴业银行南通分行'
			WHEN 'S006246' THEN
			'新投集团'
			WHEN 'S006247' THEN
			'狄耐克'
			WHEN 'S006248' THEN
			'宸展光电'
			WHEN 'Y000120' THEN
			'盈峰集团'
			WHEN 'P000064' THEN
			'平阳国资发展'
			WHEN 'S006249' THEN
			'浙江担保'
			WHEN 'X000278' THEN
			'沣东集团'
			WHEN 'S006250' THEN
			'长三角科创集合'
			WHEN 'S006254' THEN
			'天伦燃气'
			WHEN 'G000387' THEN
			'美的置业'
			WHEN 'Q000152' THEN
			'泉州城建'
			WHEN 'S005022' THEN
			'中投投资'
			WHEN 'S005023' THEN
			'贵银金租'
			WHEN 'S005024' THEN
			'福州金控'
			WHEN 'S005025' THEN
			'香港机管局'
			WHEN 'Z000671' THEN
			'工行硚口支行'
			WHEN 'S005026' THEN
			'竞天公诚'
			WHEN 'H000726' THEN
			'誉衡药业'
			WHEN 'S005027' THEN
			'临颍城投'
			WHEN 'H000878' THEN
			'南浔交投'
			WHEN 'S005028' THEN
			'上党国投'
			WHEN 'F000161' THEN
			'阜阳集团'
			WHEN 'B000275' THEN
			'王府井国际'
			WHEN 'S007349' THEN
			'南极光'
			WHEN 'S007350' THEN
			'河源江东公用'
			WHEN 'S007351' THEN
			'滨海交控'
			WHEN 'C000095' THEN
			'成都双流国际机场'
			WHEN 'Y000231' THEN
			'雅居乐'
			WHEN 'S007352' THEN
			'宁波东海银行'
			WHEN 'J000261' THEN
			'邗建集团'
			WHEN 'T000134' THEN
			'天纺投资'
			WHEN 'B000276' THEN
			'信中利'
			WHEN 'S007353' THEN
			'枣庄经开'
			WHEN 'Z001127' THEN
			'枝江国资'
			WHEN 'S005029' THEN
			'长城控股集团'
			WHEN 'Q000056' THEN
			'启迪控股'
			WHEN 'S000426' THEN
			'陆合煤化'
			WHEN 'S005030' THEN
			'南明投资'
			WHEN 'S005031' THEN
			'永阳建发'
			WHEN 'L000311' THEN
			'绿景控股'
			WHEN 'S005032' THEN
			'云涌科技'
			WHEN 'H000938' THEN
			'汇源集团'
			WHEN 'S005033' THEN
			'无锡地铁'
			WHEN 'X000375' THEN
			'协合新能源'
			WHEN 'J000262' THEN
			'江西电子集团'
			WHEN 'D000231' THEN
			'东方财富'
			WHEN 'X000405' THEN
			'西平产业公司'
			WHEN 'J000699' THEN
			'科恒股份'
			WHEN 'K000082' THEN
			'西山农信社'
			WHEN 'A000175' THEN
			'霍邱农商行'
			WHEN 'J000719' THEN
			'泗县建投'
			WHEN 'Z001429' THEN
			'智慧租赁'
			WHEN 'L000270' THEN
			'拉萨城建'
			WHEN 'C000344' THEN
			'鹏欣国资'
			WHEN 'Z000830' THEN
			'重庆茶园建设'
			WHEN 'J000720' THEN
			'秀湖发展'
			WHEN 'X000147' THEN
			'前海集团'
			WHEN 'T000135' THEN
			'天津公交'
			WHEN 'S006295' THEN
			'阜宁建投'
			WHEN 'J000700' THEN
			'赣锋锂业'
			WHEN 'F000186' THEN
			'抚顺龙晟'
			WHEN 'J000701' THEN
			'融盛投资'
			WHEN 'J000263' THEN
			'江门高新技术工业园'
			WHEN 'L000151' THEN
			'龙游农商行'
			WHEN 'Z001415' THEN
			'中海恒信'
			WHEN 'J000702' THEN
			'嘉兴建投'
			WHEN 'W000239' THEN
			'武汉工控'
			WHEN 'Z001440' THEN
			'浙农股份'
			WHEN 'H000305' THEN
			'海宁尖山新区开发'
			WHEN 'Z000672' THEN
			'工行海宁支行'
			WHEN 'S000679' THEN
			'寿光农商行'
			WHEN 'C000158' THEN
			'长春农商行'
			WHEN 'A000190' THEN
			'奥瑞金'
			WHEN 'S001158' THEN
			'什邡农商行'
			WHEN 'D000267' THEN
			'达州国有资管'
			WHEN 'G000526' THEN
			'观城建投'
			WHEN 'S000559' THEN
			'莘庄工业'
			WHEN 'S001201' THEN
			'希望教育'
			WHEN 'G000547' THEN
			'国网信息'
			WHEN 'S007354' THEN
			'三和管桩'
			WHEN 'H000306' THEN
			'河南能源'
			WHEN 'P000032' THEN
			'平度国资'
			WHEN 'S007355' THEN
			'苏滁现产园建'
			WHEN 'S007356' THEN
			'凤新投资开发'
			WHEN 'S007357' THEN
			'荆开集团'
			WHEN 'S007358' THEN
			'融创文旅'
			WHEN 'S007359' THEN
			'洋山港建设'
			WHEN 'S007360' THEN
			'中铝租赁'
			WHEN 'S007361' THEN
			'中邮消费金融'
			WHEN 'T000310' THEN
			'天康生物'
			WHEN 'J000703' THEN
			'金堂国资'
			WHEN 'J000704' THEN
			'金华城建'
			WHEN 'C000159' THEN
			'重庆市政府'
			WHEN 'N000337' THEN
			'滨海投资'
			WHEN 'F000204' THEN
			'福州交投集团'
			WHEN 'S005681' THEN
			'稳健医疗'
			WHEN 'S005682' THEN
			'爱克股份'
			WHEN 'S005683' THEN
			'谱尼测试'
			WHEN 'S005684' THEN
			'奕瑞科技'
			WHEN 'X000235' THEN
			'信达地产'
			WHEN 'S005034' THEN
			'金石租赁'
			WHEN 'F000187' THEN
			'尤溪成功村镇行'
			WHEN 'A000176' THEN
			'萧县农商行'
			WHEN 'S005035' THEN
			'新强联'
			WHEN 'S005036' THEN
			'埃夫特'
			WHEN 'N000348' THEN
			'内黄农信社'
			WHEN 'H000831' THEN
			'沈丘农商行'
			WHEN 'C000160' THEN
			'龙翔集团'
			WHEN 'Z001005' THEN
			'金科建投'
			WHEN 'S005685' THEN
			'建湖新农建投'
			WHEN 'S005686' THEN
			'广瀚文旅'
			WHEN 'S005687' THEN
			'黄岩城投'
			WHEN 'S007362' THEN
			'中法投公司'
			WHEN 'S007363' THEN
			'李子园'
			WHEN 'S007364' THEN
			'中国黄金'
			WHEN 'Z001128' THEN
			'招商蛇口'
			WHEN 'S007365' THEN
			'巴中文旅'
			WHEN 'S007366' THEN
			'之江城投'
			WHEN 'H000558' THEN
			'力源投资'
			WHEN 'Z001129' THEN
			'中信国安'
			WHEN 'B000277' THEN
			'宝龙地产'
			WHEN 'N000251' THEN
			'南充国资'
			WHEN 'Z001416' THEN
			'中航电子'
			WHEN 'Z001417' THEN
			'双环传动'
			WHEN 'S005037' THEN
			'金界控股'
			WHEN 'S005038' THEN
			'中电'
			WHEN 'S005039' THEN
			'中海油'
			WHEN 'Y000194' THEN
			'云南旅游'
			WHEN 'W000253' THEN
			'华东重机'
			WHEN 'Z001006' THEN
			'中林集团'
			WHEN 'T000311' THEN
			'物产能源'
			WHEN 'B000409' THEN
			'北汽产投'
			WHEN 'C000349' THEN
			'再升科技'
			WHEN 'H000967' THEN
			'湖北省融资租赁'
			WHEN 'N000395' THEN
			'奉化城投'
			WHEN 'S005040' THEN
			'澴水建投'
			WHEN 'S005041' THEN
			'澴川国投'
			WHEN 'J000705' THEN
			'兴金开发建投'
			WHEN 'J000820' THEN
			'双溪实业'
			WHEN 'Z001441' THEN
			'西谷数字'
			WHEN 'S005042' THEN
			'益航资管'
			WHEN 'S005043' THEN
			'交大思诺'
			WHEN 'S005044' THEN
			'恒誉环保'
			WHEN 'S005045' THEN
			'四会富仕'
			WHEN 'H000968' THEN
			'富春山居'
			WHEN 'J000821' THEN
			'闻川城投'
			WHEN 'Q000181' THEN
			'铅山水利'
			WHEN 'Z001636' THEN
			'普陀城投'
			WHEN 'G000328' THEN
			'贵州政府'
			WHEN 'L000320' THEN
			'海州工业'
			WHEN 'S006667' THEN
			'null'
			WHEN 'W000292' THEN
			'潍州城建'
			WHEN 'S007367' THEN
			'东贝集团'
			WHEN 'Z001130' THEN
			'浙农控股集团'
			WHEN 'S007368' THEN
			'华锐精密'
			WHEN 'S007369' THEN
			'华康股份'
			WHEN 'G000388' THEN
			'国美电器'
			WHEN 'F000188' THEN
			'泛海物业'
			WHEN 'Q000143' THEN
			'青投国贸'
			WHEN 'Z001337' THEN
			'中航国际投资'
			WHEN 'L000256' THEN
			'兰州轨道交通'
			WHEN 'L000257' THEN
			'兰州投资'
			WHEN 'Q000146' THEN
			'千禾味业'
			WHEN 'Y000431' THEN
			'恩捷股份'
			WHEN 'S000680' THEN
			'山东滕投'
			WHEN 'S005046' THEN
			'山东寿光金鑫'
			WHEN 'S005047' THEN
			'舟山定海城投'
			WHEN 'S005048' THEN
			'梅花山文旅'
			WHEN 'S005049' THEN
			'同庆楼'
			WHEN 'S005050' THEN
			'山大地纬'
			WHEN 'S005051' THEN
			'孚能科技'
			WHEN 'H000727' THEN
			'顺达新能源'
			WHEN 'S001028' THEN
			'深装总建设'
			WHEN 'H000879' THEN
			'大冶湖投资'
			WHEN 'S005052' THEN
			'邮储银行重庆分行'
			WHEN 'A000099' THEN
			'安徽政府'
			WHEN 'D000217' THEN
			'大连金玛集团'
			WHEN 'S007370' THEN
			'纵横股份'
			WHEN 'S007371' THEN
			'易瑞生物'
			WHEN 'S007372' THEN
			'四方光电'
			WHEN 'S007373' THEN
			'创识科技'
			WHEN 'Y000232' THEN
			'永州经投'
			WHEN 'S000427' THEN
			'漕河泾'
			WHEN 'G000389' THEN
			'贵州红果开发'
			WHEN 'S007374' THEN
			'张家界交投'
			WHEN 'S007375' THEN
			'四川港投'
			WHEN 'C000210' THEN
			'爱普地产'
			WHEN 'Z000673' THEN
			'邮储银行'
			WHEN 'Z000674' THEN
			'中山证券'
			WHEN 'Z001131' THEN
			'余姚开发建设'
			WHEN 'X000279' THEN
			'兴化经发'
			WHEN 'W000201' THEN
			'五洲国际装饰'
			WHEN 'S000779' THEN
			'上海东兴投资'
			WHEN 'H000559' THEN
			'聚力农业'
			WHEN 'J000505' THEN
			'靖江城投'
			WHEN 'S000780' THEN
			'狮桥融资'
			WHEN 'S000781' THEN
			'山西建设'
			WHEN 'S000782' THEN
			'山西建投'
			WHEN 'S000783' THEN
			'四会国资'
			WHEN 'S000428' THEN
			'上海陈家镇建发'
			WHEN 'B000370' THEN
			'威凯建设'
			WHEN 'H000290' THEN
			'新天地集团'
			WHEN 'L000088' THEN
			'连云港市政公用'
			WHEN 'S005688' THEN
			'富力欧美'
			WHEN 'S005689' THEN
			'临空港投资'
			WHEN 'S005690' THEN
			'汇创资本'
			WHEN 'B000371' THEN
			'实创科技'
			WHEN 'S007376' THEN
			'春晖智控'
			WHEN 'S007377' THEN
			'曼卡龙'
			WHEN 'J000506' THEN
			'榆树农商行'
			WHEN 'S007378' THEN
			'嵊州经开投'
			WHEN 'S007379' THEN
			'中铁武汉电化'
			WHEN 'S007380' THEN
			'中机公司'
			WHEN 'G000228' THEN
			'顺德农商行'
			WHEN 'J000264' THEN
			'江南农商行'
			WHEN 'X000148' THEN
			'中泰集团'
			WHEN 'W000098' THEN
			'当代集团'
			WHEN 'Z001132' THEN
			'网新联合工程'
			WHEN 'G000390' THEN
			'国能贵州电力'
			WHEN 'Y000233' THEN
			'扬州金融集团'
			WHEN 'H000560' THEN
			'海通期货'
			WHEN 'R000045' THEN
			'瑞茂通'
			WHEN 'G000391' THEN
			'国机汽车'
			WHEN 'X000280' THEN
			'香江集团'
			WHEN 'Q000111' THEN
			'青岛港'
			WHEN 'Z001133' THEN
			'中粮置业'
			WHEN 'C000211' THEN
			'星宇股份'
			WHEN 'Z001134' THEN
			'瑞茂通'
			WHEN 'F000073' THEN
			'天宝矿业集团'
			WHEN 'S007381' THEN
			'宝湾物流'
			WHEN 'S000784' THEN
			'奥德集团'
			WHEN 'H000777' THEN
			'华夏金融租赁'
			WHEN 'J000265' THEN
			'江阴临港新城开发建设'
			WHEN 'Z001338' THEN
			'中银投资'
			WHEN 'L000228' THEN
			'廊坊控股'
			WHEN 'J000643' THEN
			'九通基业'
			WHEN 'R000060' THEN
			'瑞福德'
			WHEN 'J000356' THEN
			'新城地产'
			WHEN 'H000307' THEN
			'汇丰银行'
			WHEN 'A000059' THEN
			'澳柯玛'
			WHEN 'W000099' THEN
			'魏桥纺织'
			WHEN 'C000096' THEN
			'城发集团'
			WHEN 'C000097' THEN
			'华川集团'
			WHEN 'H000308' THEN
			'华创证券'
			WHEN 'X000149' THEN
			'同信证券'
			WHEN 'Z000675' THEN
			'稠州商行'
			WHEN 'S000429' THEN
			'其亚铝业'
			WHEN 'Z001135' THEN
			'中龙建电力'
			WHEN 'J000507' THEN
			'九牧王'
			WHEN 'Z001136' THEN
			'中交疏浚'
			WHEN 'Z001137' THEN
			'中静新华资产'
			WHEN 'N000252' THEN
			'金鹰国际集团'
			WHEN 'C000212' THEN
			'华宇集团'
			WHEN 'B000377' THEN
			'雪迪龙'
			WHEN 'Z001138' THEN
			'中银消费金融'
			WHEN 'Z001139' THEN
			'资中兴资投资'
			WHEN 'L000258' THEN
			'龙跃实业'
			WHEN 'L000152' THEN
			'龙光集团'
			WHEN 'A000100' THEN
			'安徽国控'
			WHEN 'G000649' THEN
			'国寿财富'
			WHEN 'R000071' THEN
			'日照交发集团'
			WHEN 'K000089' THEN
			'科学城集团'
			WHEN 'T000219' THEN
			'天津市政府'
			WHEN 'J000254' THEN
			'金东城建'
			WHEN 'G000567' THEN
			'广西林业集团'
			WHEN 'H000969' THEN
			'澧县农商行'
			WHEN 'Z001468' THEN
			'中交融资租赁'
			WHEN 'N000306' THEN
			'南漳建投'
			WHEN 'Z000865' THEN
			'万马股份'
			WHEN 'Z000676' THEN
			'人保资管'
			WHEN 'G000527' THEN
			'道氏技术'
			WHEN 'T000334' THEN
			'长城滨银汽车金融'
			WHEN 'J000266' THEN
			'久泰能源'
			WHEN 'G000580' THEN
			'同日供水'
			WHEN 'S005053' THEN
			'许昌建投'
			WHEN 'S005054' THEN
			'四平城发'
			WHEN 'S001159' THEN
			'山钢控股'
			WHEN 'Z000677' THEN
			'中天证券'
			WHEN 'B000378' THEN
			'住总地产'
			WHEN 'X000435' THEN
			'恒驰汇通租赁'
			WHEN 'Z001693' THEN
			'中国建筑国际'
			WHEN 'Z001637' THEN
			'正商集团'
			WHEN 'B000243' THEN
			'苏州保利协鑫'
			WHEN 'B000244' THEN
			'北京供销'
			WHEN 'S001261' THEN
			'滕州农商行'
			WHEN 'S005055' THEN
			'仙山湖旅投'
			WHEN 'S005056' THEN
			'古都集团'
			WHEN 'S005057' THEN
			'涟水交控'
			WHEN 'P000101' THEN
			'平安利顺国际货币'
			WHEN 'J000844' THEN
			'江西省融资担保集团'
			WHEN 'S005058' THEN
			'镇宁农信社'
			WHEN 'Z001694' THEN
			'浙江交科'
			WHEN 'S001029' THEN
			'莒县农商行'
			WHEN 'Z001007' THEN
			'浙江农信社'
			WHEN 'H000489' THEN
			'湖州银行'
			WHEN 'S007382' THEN
			'明江物流'
			WHEN 'S007383' THEN
			'融华租赁'
			WHEN 'S007384' THEN
			'鑫铂股份'
			WHEN 'S007385' THEN
			'业达经发集团'
			WHEN 'H000309' THEN
			'杭州商贸旅游集团'
			WHEN 'S000974' THEN
			'龙口农商行'
			WHEN 'Y000121' THEN
			'伊美控股'
			WHEN 'B000142' THEN
			'同仁堂健康'
			WHEN 'B000143' THEN
			'贝因美集团'
			WHEN 'S007386' THEN
			'菏建建筑'
			WHEN 'S007387' THEN
			'秦汉新投'
			WHEN 'J000255' THEN
			'江苏银行泰州分行'
			WHEN 'S007388' THEN
			'利辛城乡投'
			WHEN 'J000706' THEN
			'建银国际'
			WHEN 'D000243' THEN
			'东风汽车财务'
			WHEN 'F000189' THEN
			'丰电科技'
			WHEN 'G000329' THEN
			'万力集团'
			WHEN 'F000112' THEN
			'福建船舶工业集团'
			WHEN 'S005059' THEN
			'武汉建工'
			WHEN 'H000490' THEN
			'河北政府'
			WHEN 'Z001008' THEN
			'中通客车'
			WHEN 'X000236' THEN
			'兴业金融租赁公司'
			WHEN 'S001202' THEN
			'港荣集团'
			WHEN 'S005060' THEN
			'力鼎光电'
			WHEN 'G000581' THEN
			'仁怀酒投'
			WHEN 'B000410' THEN
			'北京房地集团'
			WHEN 'J000757' THEN
			'腾海投资'
			WHEN 'F000205' THEN
			'新城置业'
			WHEN 'G000548' THEN
			'河源农商行'
			WHEN 'S005061' THEN
			'中意宁波生态园'
			WHEN 'S005062' THEN
			'多湖商务区'
			WHEN 'Z001009' THEN
			'邮储银行盘锦市分行'
			WHEN 'S007389' THEN
			'嵘泰股份'
			WHEN 'S007390' THEN
			'太和水'
			WHEN 'S007391' THEN
			'恒而达'
			WHEN 'S007392' THEN
			'华融综投'
			WHEN 'L000173' THEN
			'浏阳现代制造'
			WHEN 'S007393' THEN
			'隆辉商业保理'
			WHEN 'S000578' THEN
			'沈阳市政'
			WHEN 'S007394' THEN
			'海底捞'
			WHEN 'S007395' THEN
			'港龙中国地产'
			WHEN 'S007396' THEN
			'新高教集团'
			WHEN 'S007397' THEN
			'腾讯音乐'
			WHEN 'S007398' THEN
			'汇景控股'
			WHEN 'S007399' THEN
			'华泰国际金融'
			WHEN 'S007400' THEN
			'泰山财金'
			WHEN 'S007401' THEN
			'逸锟保理(深圳)'
			WHEN 'S007402' THEN
			'荔城国投'
			WHEN 'S007403' THEN
			'粤财资产'
			WHEN 'S007404' THEN
			'贝斯达'
			WHEN 'S007405' THEN
			'吴中灵天建投'
			WHEN 'S007406' THEN
			'沛县兴田建投'
			WHEN 'S007407' THEN
			'水发融资租赁'
			WHEN 'L000174' THEN
			'高新集团'
			WHEN 'S007408' THEN
			'红河开投'
			WHEN 'S007409' THEN
			'燕舞集团'
			WHEN 'S007410' THEN
			'栖霞山综开'
			WHEN 'J000508' THEN
			'金辉集团'
			WHEN 'J000509' THEN
			'嘉鱼建投'
			WHEN 'H000561' THEN
			'湖北担保集团'
			WHEN 'Y000234' THEN
			'禹州投资'
			WHEN 'S007411' THEN
			'中准'
			WHEN 'S007412' THEN
			'德恒(广州)'
			WHEN 'S007413' THEN
			'维亚生物'
			WHEN 'S007414' THEN
			'翰森生物医药'
			WHEN 'B000411' THEN
			'冰轮环境'
			WHEN 'S005063' THEN
			'中化化肥'
			WHEN 'H000880' THEN
			'舞钢农商行'
			WHEN 'G000582' THEN
			'广投金控'
			WHEN 'S005064' THEN
			'道恩'
			WHEN 'K000090' THEN
			'深康佳'
			WHEN 'Z001010' THEN
			'武陵源旅游'
			WHEN 'J000412' THEN
			'江阴农商行'
			WHEN 'B000245' THEN
			'海纳川公司'
			WHEN 'S000681' THEN
			'兆驰股份'
			WHEN 'S005065' THEN
			'彭泽城发'
			WHEN 'C000367' THEN
			'赤水市国有资产'
			WHEN 'S005066' THEN
			'艾迪药业'
			WHEN 'S005067' THEN
			'慧辰资讯'
			WHEN 'S005068' THEN
			'寒武纪'
			WHEN 'S005069' THEN
			'伟思医疗'
			WHEN 'T000210' THEN
			'东丽湖建设'
			WHEN 'Z000980' THEN
			'华强云峰'
			WHEN 'H000463' THEN
			'吴兴东部新农村建投'
			WHEN 'A000170' THEN
			'泗县农商行'
			WHEN 'L000143' THEN
			'永强实业'
			WHEN 'G000549' THEN
			'百色试验发展'
			WHEN 'S000655' THEN
			'旭东化工'
			WHEN 'S005074' THEN
			'宝莲投资'
			WHEN 'F000107' THEN
			'辅仁药业'
			WHEN 'J000423' THEN
			'吉林政府'
			WHEN 'C000161' THEN
			'长春发展农商行'
			WHEN 'S007415' THEN
			'罗普特'
			WHEN 'S007416' THEN
			'恒益热力'
			WHEN 'S007417' THEN
			'广东火电'
			WHEN 'S007418' THEN
			'广西水电'
			WHEN 'S007419' THEN
			'湖南火电'
			WHEN 'S007420' THEN
			'贝康医疗'
			WHEN 'Z001593' THEN
			'电科投资'
			WHEN 'W000262' THEN
			'武汉环境投发'
			WHEN 'Z001140' THEN
			'红花岗坪桥工业'
			WHEN 'Y000235' THEN
			'银河期货'
			WHEN 'H000562' THEN
			'正才控股'
			WHEN 'Z001141' THEN
			'中国天楹'
			WHEN 'S007421' THEN
			'沛县新农建'
			WHEN 'S007422' THEN
			'北京华联商贸'
			WHEN 'S007423' THEN
			'中国铁建'
			WHEN 'S007424' THEN
			'中铁国际集团'
			WHEN 'H000778' THEN
			'硕贝德控股'
			WHEN 'W000148' THEN
			'卧龙地产'
			WHEN 'L000123' THEN
			'辽宁国资'
			WHEN 'H000866' THEN
			'湖北荆门城建集团'
			WHEN 'G000392' THEN
			'东江畜牧'
			WHEN 'X000281' THEN
			'紫薇地产'
			WHEN 'B000278' THEN
			'金泰地产'
			WHEN 'Q000054' THEN
			'黔南州国资营运'
			WHEN 'S007425' THEN
			'官埠生态新投'
			WHEN 'S007426' THEN
			'通建融创置业'
			WHEN 'G000583' THEN
			'甘肃交投'
			WHEN 'H000832' THEN
			'武陟农商行'
			WHEN 'Z001442' THEN
			'紫金农商行'
			WHEN 'Q000092' THEN
			'黔南州投资'
			WHEN 'A000191' THEN
			'澳新银行'
			WHEN 'G000550' THEN
			'鹿寨农商行'
			WHEN 'J000644' THEN
			'九州期货'
			WHEN 'B000350' THEN
			'北海银滩'
			WHEN 'N000208' THEN
			'南京地铁'
			WHEN 'S000939' THEN
			'阳谷农商行'
			WHEN 'Y000195' THEN
			'龙岗资产'
			WHEN 'N000307' THEN
			'天山置业'
			WHEN 'S001030' THEN
			'柔刚投资'
			WHEN 'S005075' THEN
			'中荆投资'
			WHEN 'S005076' THEN
			'莲湖投资'
			WHEN 'S005077' THEN
			'实创高科技'
			WHEN 'S005078' THEN
			'惠山高科'
			WHEN 'L000116' THEN
			'绿地集团'
			WHEN 'S000682' THEN
			'山西政府'
			WHEN 'X000406' THEN
			'新水国资'
			WHEN 'W000267' THEN
			'潍坊滨海资本'
			WHEN 'Q000093' THEN
			'青山控股集团'
			WHEN 'S000683' THEN
			'山西农信社'
			WHEN 'C000350' THEN
			'蔡家组团建设'
			WHEN 'J000413' THEN
			'金杯汽车'
			WHEN 'D000137' THEN
			'东旭集团'
			WHEN 'C000162' THEN
			'高科福升'
			WHEN 'C000163' THEN
			'武陵山旅游'
			WHEN 'Q000099' THEN
			'众一精化'
			WHEN 'W000171' THEN
			'雪浪科教'
			WHEN 'B000246' THEN
			'吉利百矿集团'
			WHEN 'B000351' THEN
			'广厦网络'
			WHEN 'J000367' THEN
			'嘉峪关基础设施建设'
			WHEN 'C000164' THEN
			'新津水城'
			WHEN 'C000165' THEN
			'新津发展集团'
			WHEN 'B000447' THEN
			'浩天信和'
			WHEN 'J000645' THEN
			'灌云农商行'
			WHEN 'S001031' THEN
			'杨凌农商行'
			WHEN 'S007427' THEN
			'王力安防'
			WHEN 'S007428' THEN
			'德必集团'
			WHEN 'S007429' THEN
			'昆山公交'
			WHEN 'Z001142' THEN
			'中电建路桥集团'
			WHEN 'Z001143' THEN
			'桐昆控股'
			WHEN 'T000243' THEN
			'同益实业'
			WHEN 'L000175' THEN
			'东通投资'
			WHEN 'J000510' THEN
			'景瑞地产'
			WHEN 'D000169' THEN
			'大华集团'
			WHEN 'Z001144' THEN
			'中城建三局'
			WHEN 'S007430' THEN
			'中铁南方'
			WHEN 'S007431' THEN
			'凯迪能源'
			WHEN 'S007432' THEN
			'鑫桥租赁'
			WHEN 'S007433' THEN
			'华发物业'
			WHEN 'S007434' THEN
			'惠通热电'
			WHEN 'S007435' THEN
			'苏源热电'
			WHEN 'S007436' THEN
			'禹会建投'
			WHEN 'S007437' THEN
			'阳光壹佰物业'
			WHEN 'S007438' THEN
			'金辉物业'
			WHEN 'S007439' THEN
			'虎门绿源'
			WHEN 'S007440' THEN
			'银亿物业'
			WHEN 'S007441' THEN
			'印力'
			WHEN 'S007442' THEN
			'国药朴信'
			WHEN 'S007443' THEN
			'嘉兴小微担保'
			WHEN 'S007444' THEN
			'绿城节投'
			WHEN 'S007445' THEN
			'招商置投'
			WHEN 'S007446' THEN
			'长春供热'
			WHEN 'S007447' THEN
			'长春经开供热'
			WHEN 'S007448' THEN
			'茂庸投资'
			WHEN 'S007449' THEN
			'新城万嘉房产'
			WHEN 'S007450' THEN
			'上海雷泰'
			WHEN 'S007451' THEN
			'勒泰房产'
			WHEN 'S007452' THEN
			'嘉强咨询'
			WHEN 'H000563' THEN
			'衡阳交建'
			WHEN 'H000564' THEN
			'华融湘江银行衡阳分行'
			WHEN 'H000565' THEN
			'华夏银行温州分行'
			WHEN 'Z000678' THEN
			'人保财管'
			WHEN 'S007453' THEN
			'洋部落企管'
			WHEN 'C000213' THEN
			'开福建投'
			WHEN 'B000144' THEN
			'渤海租赁'
			WHEN 'S000785' THEN
			'泗阳民康'
			WHEN 'S007454' THEN
			'苏宁商管'
			WHEN 'S007455' THEN
			'盈宇贸易'
			WHEN 'S007456' THEN
			'慕盛公寓'
			WHEN 'S000430' THEN
			'洪涛股份'
			WHEN 'B000145' THEN
			'临河发投'
			WHEN 'Z000679' THEN
			'中行巴彦淖尔市分行'
			WHEN 'W000100' THEN
			'五矿证券'
			WHEN 'D000218' THEN
			'天神娱乐'
			WHEN 'Z001339' THEN
			'中南集团'
			WHEN 'S005079' THEN
			'科思股份'
			WHEN 'S005080' THEN
			'震有科技'
			WHEN 'S005081' THEN
			'泉港新投'
			WHEN 'S005082' THEN
			'资阳开投'
			WHEN 'S005083' THEN
			'财金投资'
			WHEN 'S005084' THEN
			'资阳国投'
			WHEN 'S000555' THEN
			'阳谷华泰'
			WHEN 'B000383' THEN
			'中车信融'
			WHEN 'H000683' THEN
			'哈密建辉'
			WHEN 'Z001284' THEN
			'中信银行乌鲁木齐分行'
			WHEN 'Z001285' THEN
			'中民国际'
			WHEN 'S007457' THEN
			'创保服务'
			WHEN 'S007458' THEN
			'海泰新光'
			WHEN 'S007459' THEN
			'冠中生态'
			WHEN 'S007460' THEN
			'生益电子'
			WHEN 'S007461' THEN
			'亚洲保理'
			WHEN 'C000214' THEN
			'郴州福城高新'
			WHEN 'M000024' THEN
			'茂名港集团'
			WHEN 'S007462' THEN
			'懋德诚投'
			WHEN 'S007463' THEN
			'安石宜奈投资'
			WHEN 'S007464' THEN
			'横琴恒盛华商'
			WHEN 'S007465' THEN
			'万纬物流'
			WHEN 'S007466' THEN
			'上海薇捷'
			WHEN 'S007467' THEN
			'瑞阳供热'
			WHEN 'S007468' THEN
			'濮阳热力'
			WHEN 'S007469' THEN
			'巩义燃气'
			WHEN 'S007470' THEN
			'启东自来水厂'
			WHEN 'S007471' THEN
			'武清自来水'
			WHEN 'S007472' THEN
			'广汇物管'
			WHEN 'S007473' THEN
			'凯里公交'
			WHEN 'S007474' THEN
			'泰盛动力'
			WHEN 'S007475' THEN
			'明华物业'
			WHEN 'S007476' THEN
			'镇江公交'
			WHEN 'S007477' THEN
			'海亮租赁'
			WHEN 'S007478' THEN
			'华源热力'
			WHEN 'S007479' THEN
			'重庆维冠'
			WHEN 'S007480' THEN
			'淇毓科技'
			WHEN 'S007481' THEN
			'耀达租赁'
			WHEN 'S007482' THEN
			'佳兆业(深圳)'
			WHEN 'S007483' THEN
			'安路通保理'
			WHEN 'S007484' THEN
			'中联重科租赁'
			WHEN 'S007485' THEN
			'华峰小额贷'
			WHEN 'S007486' THEN
			'富金通保理'
			WHEN 'S007487' THEN
			'趣游保理'
			WHEN 'S007488' THEN
			'弘阳保理'
			WHEN 'S007489' THEN
			'经开亦盛房产'
			WHEN 'S007490' THEN
			'交银施罗德'
			WHEN 'H000566' THEN
			'河南农业开发'
			WHEN 'J000511' THEN
			'哥伦比亚省'
			WHEN 'S007491' THEN
			'南平建设'
			WHEN 'S007492' THEN
			'菏泽城建'
			WHEN 'M000040' THEN
			'蒙特利尔银行'
			WHEN 'S007493' THEN
			'路桥社发集团'
			WHEN 'S007494' THEN
			'南部新城中心'
			WHEN 'C000215' THEN
			'恒利盛商贸'
			WHEN 'Z001145' THEN
			'中安科股份'
			WHEN 'Z001146' THEN
			'中交置业'
			WHEN 'S007495' THEN
			'振兴开发'
			WHEN 'S007496' THEN
			'怀胜城建'
			WHEN 'L000092' THEN
			'菱花集团'
			WHEN 'Z001147' THEN
			'遵义投资建设'
			WHEN 'A000112' THEN
			'阿勒泰投资'
			WHEN 'H000469' THEN
			'扬子江建工'
			WHEN 'B000209' THEN
			'蚌埠投资集团'
			WHEN 'S005085' THEN
			'石柱国资'
			WHEN 'S005086' THEN
			'弘基保理'
			WHEN 'H000464' THEN
			'辉煌科技'
			WHEN 'W000163' THEN
			'旅游体育集团'
			WHEN 'S005087' THEN
			'定西国投'
			WHEN 'S005088' THEN
			'包头交投'
			WHEN 'S005089' THEN
			'海宁实投'
			WHEN 'S005090' THEN
			'崂山湾发展'
			WHEN 'S005091' THEN
			'中林保理'
			WHEN 'S005092' THEN
			'尚融保理'
			WHEN 'S005093' THEN
			'昌贵投资'
			WHEN 'S005094' THEN
			'汇鑫小贷'
			WHEN 'S005095' THEN
			'声赫保理'
			WHEN 'S005096' THEN
			'指前港建投'
			WHEN 'S005097' THEN
			'舜宁投建'
			WHEN 'S005098' THEN
			'申昊科技'
			WHEN 'S005099' THEN
			'大地熊'
			WHEN 'S005100' THEN
			'芯朋微'
			WHEN 'S005101' THEN
			'三生国健'
			WHEN 'S005102' THEN
			'力合微'
			WHEN 'S005103' THEN
			'图南股份'
			WHEN 'S005104' THEN
			'皖新租赁'
			WHEN 'S005105' THEN
			'安溪建投'
			WHEN 'S005106' THEN
			'兴华地产'
			WHEN 'S005107' THEN
			'金源时代'
			WHEN 'S005108' THEN
			'洺润置业'
			WHEN 'S005109' THEN
			'润恒建设'
			WHEN 'S005110' THEN
			'云泰数通'
			WHEN 'S005111' THEN
			'致诚鑫达物管'
			WHEN 'S005112' THEN
			'中海广场'
			WHEN 'S005113' THEN
			'滨江保理'
			WHEN 'S005114' THEN
			'至信保理'
			WHEN 'S005115' THEN
			'春耕保理'
			WHEN 'S005116' THEN
			'大连城乡'
			WHEN 'S005117' THEN
			'东营财投'
			WHEN 'S005118' THEN
			'顺德中建'
			WHEN 'S005119' THEN
			'三盛置业'
			WHEN 'S005120' THEN
			'远大建设'
			WHEN 'S005121' THEN
			'金财集团'
			WHEN 'S005122' THEN
			'多丰投资'
			WHEN 'S005123' THEN
			'光控安石'
			WHEN 'S005124' THEN
			'高新租赁'
			WHEN 'S005125' THEN
			'广州公交'
			WHEN 'S005126' THEN
			'展丰地产'
			WHEN 'S005127' THEN
			'国美信达'
			WHEN 'S005128' THEN
			'合景泰富集团'
			WHEN 'S005129' THEN
			'国宏租赁'
			WHEN 'S005130' THEN
			'和赢保理'
			WHEN 'S005131' THEN
			'华科租赁'
			WHEN 'S005132' THEN
			'融鑫集团'
			WHEN 'S005133' THEN
			'华润金控'
			WHEN 'S005134' THEN
			'湖北集成电路'
			WHEN 'S005135' THEN
			'会昌国资'
			WHEN 'S005136' THEN
			'中宏租赁'
			WHEN 'S005137' THEN
			'湖州产业集团'
			WHEN 'S005138' THEN
			'海安商贸'
			WHEN 'C000145' THEN
			'重庆绅鹏实业'
			WHEN 'S005139' THEN
			'炜赋集团'
			WHEN 'S005140' THEN
			'黑猫'
			WHEN 'S005141' THEN
			'古镇投资'
			WHEN 'S005142' THEN
			'景洪城投'
			WHEN 'S005143' THEN
			'晋江国投'
			WHEN 'S005144' THEN
			'晋建保理'
			WHEN 'S005145' THEN
			'久实租赁'
			WHEN 'S005146' THEN
			'科学城租赁'
			WHEN 'S005147' THEN
			'苏溧建投'
			WHEN 'S005148' THEN
			'龙岩水务'
			WHEN 'S005149' THEN
			'新东方'
			WHEN 'Z001148' THEN
			'中国水电四局'
			WHEN 'T000244' THEN
			'太安堂集团'
			WHEN 'S000786' THEN
			'世茂房地产'
			WHEN 'W000202' THEN
			'无锡投资'
			WHEN 'S000787' THEN
			'川瑞投资'
			WHEN 'P000065' THEN
			'盘锦城发'
			WHEN 'Z001695' THEN
			'昆仑燃气'
			WHEN 'D000170' THEN
			'海东开发投资'
			WHEN 'A000113' THEN
			'安庆化工'
			WHEN 'S001190' THEN
			'法门寺文化发展'
			WHEN 'W000203' THEN
			'温州城建'
			WHEN 'X000282' THEN
			'东津国投集团'
			WHEN 'Z001149' THEN
			'农发行襄阳市分行'
			WHEN 'Z001011' THEN
			'中国中车'
			WHEN 'N000361' THEN
			'伊利股份'
			WHEN 'Z001469' THEN
			'浙江金属'
			WHEN 'Z000981' THEN
			'中建投租赁'
			WHEN 'Y000122' THEN
			'亭湖投资'
			WHEN 'G000229' THEN
			'粤垦投资'
			WHEN 'J000646' THEN
			'华伍电力'
			WHEN 'H000728' THEN
			'新乡华宇'
			WHEN 'H000729' THEN
			'河南大用'
			WHEN 'K000072' THEN
			'特耐股份'
			WHEN 'N000308' THEN
			'普康药业'
			WHEN 'X000376' THEN
			'新乡起重机厂'
			WHEN 'G000330' THEN
			'华兴银行'
			WHEN 'C000146' THEN
			'新安兵营'
			WHEN 'J000424' THEN
			'江西农信社'
			WHEN 'S001373' THEN
			'通力'
			WHEN 'B000463' THEN
			'康达(西安)'
			WHEN 'Z000982' THEN
			'建行渭南分行'
			WHEN 'Z001638' THEN
			'中审亚太(陕西)'
			WHEN 'Z000680' THEN
			'中国华融'
			WHEN 'C000098' THEN
			'长江联合发展集团'
			WHEN 'B000146' THEN
			'步阳集团'
			WHEN 'L000282' THEN
			'栾川天业'
			WHEN 'Y000380' THEN
			'益阳龙岭建投'
			WHEN 'H000881' THEN
			'怀远城投'
			WHEN 'S006456' THEN
			'中金公司上海分公司'
			WHEN 'B000379' THEN
			'华谊嘉信'
			WHEN 'B000380' THEN
			'博雅立方'
			WHEN 'Z001486' THEN
			'华媒控股'
			WHEN 'Z000681' THEN
			'周口投资'
			WHEN 'H000833' THEN
			'湖北广电'
			WHEN 'Y000359' THEN
			'芒市农商行'
			WHEN 'B000464' THEN
			'金杜(广州)'
			WHEN 'D000138' THEN
			'兴堰投资'
			WHEN 'H000491' THEN
			'海航基础'
			WHEN 'T000211' THEN
			'天安保险'
			WHEN 'G000551' THEN
			'海伦堡地产'
			WHEN 'H000492' THEN
			'瀚华金控'
			WHEN 'X000208' THEN
			'西安国际陆港'
			WHEN 'Z001012' THEN
			'湛江交投'
			WHEN 'X000493' THEN
			'厦门资管'
			WHEN 'S000684' THEN
			'四川政府'
			WHEN 'S000685' THEN
			'遂宁商行'
			WHEN 'S001124' THEN
			'巴安水务'
			WHEN 'S007497' THEN
			'中建投租赁(天津)'
			WHEN 'S007498' THEN
			'科欣隆保理'
			WHEN 'S007499' THEN
			'佳源集团'
			WHEN 'S007500' THEN
			'石林云电投'
			WHEN 'S007501' THEN
			'苏宁小额贷'
			WHEN 'S007502' THEN
			'北投小额贷'
			WHEN 'S007503' THEN
			'海港地产'
			WHEN 'S007504' THEN
			'中航工科'
			WHEN 'S007505' THEN
			'德基广场'
			WHEN 'S007506' THEN
			'高坪航信'
			WHEN 'S007507' THEN
			'逸锟保理(天津)'
			WHEN 'S007508' THEN
			'兴淀工业园'
			WHEN 'S007509' THEN
			'聚量保理'
			WHEN 'S007510' THEN
			'微聚未来'
			WHEN 'S007511' THEN
			'京基集团'
			WHEN 'S007512' THEN
			'慧链通保理'
			WHEN 'S007513' THEN
			'南通发电'
			WHEN 'S007514' THEN
			'昆明建投'
			WHEN 'S007515' THEN
			'中集租赁' ELSE short_name
	END
	);

-- sql3
UPDATE qb_news_public_opinion
SET short_name = (
	CASE
			issuer_code
			WHEN 'S007516' THEN
			'穗开科管'
			WHEN 'S007517' THEN
			'前海宇商保理'
			WHEN 'S007518' THEN
			'如皋建投'
			WHEN 'S007519' THEN
			'安泰物业'
			WHEN 'S007520' THEN
			'分期乐网科'
			WHEN 'S007521' THEN
			'中和农信小贷'
			WHEN 'S007522' THEN
			'新沂经开'
			WHEN 'S007523' THEN
			'融鑫保理'
			WHEN 'S007524' THEN
			'中油资管'
			WHEN 'S007525' THEN
			'青岛极地海洋'
			WHEN 'S007526' THEN
			'中国五冶集团'
			WHEN 'S007527' THEN
			'绿地金控'
			WHEN 'S007528' THEN
			'诸城安邦'
			WHEN 'S007529' THEN
			'现代物流'
			WHEN 'S007530' THEN
			'浏阳交投'
			WHEN 'S000431' THEN
			'绍兴银行'
			WHEN 'S007531' THEN
			'昆泰集团'
			WHEN 'S007532' THEN
			'甘肃铁投集团'
			WHEN 'H000418' THEN
			'中小企业'
			WHEN 'Z001418' THEN
			'中铁十八局'
			WHEN 'S001160' THEN
			'尚隽商业保理'
			WHEN 'X000407' THEN
			'西藏开投集团'
			WHEN 'L000093' THEN
			'兰州国投'
			WHEN 'Z001419' THEN
			'葛洲坝机船公司'
			WHEN 'G000528' THEN
			'国电科学研究院'
			WHEN 'Z000682' THEN
			'中交二航局'
			WHEN 'S000432' THEN
			'中小企业'
			WHEN 'G000529' THEN
			'清镇农商行'
			WHEN 'H000493' THEN
			'航天信息'
			WHEN 'S005150' THEN
			'绿城保理'
			WHEN 'S005151' THEN
			'江北新区铁投'
			WHEN 'S005152' THEN
			'鑫欣保理'
			WHEN 'S005153' THEN
			'融城投资'
			WHEN 'S005154' THEN
			'汇翔建发'
			WHEN 'S005155' THEN
			'普洛斯保理'
			WHEN 'S005156' THEN
			'国铭保理'
			WHEN 'S005157' THEN
			'董家口集团'
			WHEN 'S005158' THEN
			'昊阳热电'
			WHEN 'S005159' THEN
			'易通保理'
			WHEN 'S005160' THEN
			'上海宝冶'
			WHEN 'S005161' THEN
			'港城集团'
			WHEN 'S005162' THEN
			'合创置业'
			WHEN 'S005163' THEN
			'静安投资'
			WHEN 'S005164' THEN
			'魔域投资'
			WHEN 'S005165' THEN
			'上海瑞龙'
			WHEN 'H000796' THEN
			'蓝天集团'
			WHEN 'J000390' THEN
			'叠石桥家纺'
			WHEN 'H000465' THEN
			'娄底经开投资建设集团'
			WHEN 'X000436' THEN
			'新平城投'
			WHEN 'W000172' THEN
			'潍坊高建'
			WHEN 'S000686' THEN
			'浦发银行潍坊分行'
			WHEN 'S005166' THEN
			'德林海'
			WHEN 'S005167' THEN
			'协创数据'
			WHEN 'S005168' THEN
			'冠盛股份'
			WHEN 'J000822' THEN
			'江苏银行深圳分行'
			WHEN 'W000293' THEN
			'万商天勤(深圳)'
			WHEN 'R000067' THEN
			'通泰农业'
			WHEN 'A000200' THEN
			'西太平洋银行'
			WHEN 'S005169' THEN
			'川发置地'
			WHEN 'F000113' THEN
			'福州农商行'
			WHEN 'G000331' THEN
			'光大金融租赁'
			WHEN 'Z000862' THEN
			'光大银行苏州分行'
			WHEN 'J000721' THEN
			'吉林水投'
			WHEN 'N000253' THEN
			'null'
			WHEN 'H000567' THEN
			'誉衡集团'
			WHEN 'T000245' THEN
			'海航科技'
			WHEN 'H000568' THEN
			'海航科技'
			WHEN 'S007533' THEN
			'必得科技'
			WHEN 'S007534' THEN
			'南浔新城投发'
			WHEN 'S007535' THEN
			'唐盛租赁(上海)'
			WHEN 'S007536' THEN
			'中盛安保理'
			WHEN 'S007537' THEN
			'金茂信通'
			WHEN 'S007538' THEN
			'湖南农信贷'
			WHEN 'S007539' THEN
			'康平农信贷'
			WHEN 'S007540' THEN
			'内蒙古农信贷'
			WHEN 'Z001150' THEN
			'诸暨新城投资'
			WHEN 'Z001151' THEN
			'太湖新城实业'
			WHEN 'S007541' THEN
			'成都中节能'
			WHEN 'S007542' THEN
			'海控能源'
			WHEN 'S007543' THEN
			'中冶天工'
			WHEN 'S007544' THEN
			'安信小额贷'
			WHEN 'S007545' THEN
			'凤栖自来水'
			WHEN 'S007546' THEN
			'顺丰合丰小贷'
			WHEN 'S007547' THEN
			'星河投资'
			WHEN 'S007548' THEN
			'铭晟商业'
			WHEN 'S007549' THEN
			'中建新城'
			WHEN 'S007550' THEN
			'中航资本'
			WHEN 'S007551' THEN
			'仁恒和美'
			WHEN 'S007552' THEN
			'镇海新城恒远'
			WHEN 'S007553' THEN
			'京基资管'
			WHEN 'S007554' THEN
			'佳兆业'
			WHEN 'S007555' THEN
			'神州数码(中国)'
			WHEN 'S007556' THEN
			'高坪航信停车'
			WHEN 'S007557' THEN
			'银泰集团'
			WHEN 'S007558' THEN
			'兴银投资'
			WHEN 'S007559' THEN
			'益能热电'
			WHEN 'S007560' THEN
			'如皋自来水厂'
			WHEN 'S007561' THEN
			'广汇热力'
			WHEN 'S007562' THEN
			'新城热力'
			WHEN 'S007563' THEN
			'晖泽水务'
			WHEN 'S007564' THEN
			'正商物管'
			WHEN 'S007565' THEN
			'南河水电'
			WHEN 'S007566' THEN
			'伊犁水电'
			WHEN 'S007567' THEN
			'张家界水电'
			WHEN 'S007568' THEN
			'大溪河水电'
			WHEN 'S007569' THEN
			'寺坪水电'
			WHEN 'S007570' THEN
			'富龙热力'
			WHEN 'S007571' THEN
			'怀运集团'
			WHEN 'S007572' THEN
			'财信环境'
			WHEN 'S007573' THEN
			'中锋置业'
			WHEN 'S007574' THEN
			'九通基业'
			WHEN 'S007575' THEN
			'平安租赁(深圳)'
			WHEN 'H000797' THEN
			'永城农商行'
			WHEN 'Q000176' THEN
			'衢州交投'
			WHEN 'L000153' THEN
			'岭南股份'
			WHEN 'S005170' THEN
			'天健广东分所'
			WHEN 'A000192' THEN
			'阜南农商行'
			WHEN 'B000247' THEN
			'百隆东方'
			WHEN 'Z001443' THEN
			'中国旺旺'
			WHEN 'J000647' THEN
			'简阳水务投资'
			WHEN 'S000687' THEN
			'华山旅游集团'
			WHEN 'G000552' THEN
			'紫科环保'
			WHEN 'S001262' THEN
			'汇天国际保理'
			WHEN 'S000656' THEN
			'泗洪宏源'
			WHEN 'M000028' THEN
			'美大集团'
			WHEN 'S005171' THEN
			'奇安信'
			WHEN 'S005172' THEN
			'科拓生物'
			WHEN 'W000268' THEN
			'城南建投'
			WHEN 'Z001013' THEN
			'围海集团'
			WHEN 'B000412' THEN
			'兴创投资'
			WHEN 'P000054' THEN
			'邳州水利'
			WHEN 'S001374' THEN
			'金合盛'
			WHEN 'S005173' THEN
			'余杭开投'
			WHEN 'C000166' THEN
			'通途建投'
			WHEN 'Z001014' THEN
			'中信银行长沙分行'
			WHEN 'Q000182' THEN
			'泉州交发集团'
			WHEN 'X000475' THEN
			'象港开发'
			WHEN 'D000119' THEN
			'大众金融'
			WHEN 'S005174' THEN
			'正东金控'
			WHEN 'H000494' THEN
			'河南政府'
			WHEN 'S000940' THEN
			'兴瀚资管'
			WHEN 'S007576' THEN
			'三叠泉缆车'
			WHEN 'S007577' THEN
			'千岛湖索道'
			WHEN 'S007578' THEN
			'三特索道'
			WHEN 'S007579' THEN
			'联德股份'
			WHEN 'S007580' THEN
			'中铁保理'
			WHEN 'S007581' THEN
			'亚中物管'
			WHEN 'D000171' THEN
			'高鸿股份'
			WHEN 'Y000236' THEN
			'扬州交通产业'
			WHEN 'C000216' THEN
			'芙蓉城建'
			WHEN 'Z001152' THEN
			'中证信用'
			WHEN 'G000393' THEN
			'思州润峰'
			WHEN 'Y000237' THEN
			'海瀛集团'
			WHEN 'J000512' THEN
			'洪都航空'
			WHEN 'S007582' THEN
			'哈尔滨会体'
			WHEN 'Z001153' THEN
			'招商证券'
			WHEN 'S007583' THEN
			'江西信用担保'
			WHEN 'S007584' THEN
			'二十一世纪'
			WHEN 'S007585' THEN
			'中技保理'
			WHEN 'S007586' THEN
			'富源热电'
			WHEN 'S007587' THEN
			'矸石热电'
			WHEN 'S007588' THEN
			'蒋庄矸石热电'
			WHEN 'S007589' THEN
			'建阳热电'
			WHEN 'S007590' THEN
			'贵阳交通'
			WHEN 'S007591' THEN
			'庆春路隧道'
			WHEN 'S007592' THEN
			'天颐热电'
			WHEN 'S007593' THEN
			'五矿财富'
			WHEN 'S007594' THEN
			'武汉轨道交通'
			WHEN 'S007595' THEN
			'鄂黄大桥'
			WHEN 'S007596' THEN
			'科誉高瞻租赁'
			WHEN 'S007597' THEN
			'祥达租赁'
			WHEN 'S007598' THEN
			'厦门工学院'
			WHEN 'S007599' THEN
			'畅和信股投'
			WHEN 'S007600' THEN
			'精诚教育'
			WHEN 'G000285' THEN
			'绿城水务'
			WHEN 'S007601' THEN
			'龙乡水务'
			WHEN 'C000336' THEN
			'兴城建投'
			WHEN 'J000707' THEN
			'稠州村镇行'
			WHEN 'Z000900' THEN
			'南浔农商行'
			WHEN 'X000408' THEN
			'修文农商行'
			WHEN 'B000465' THEN
			'首钢基金'
			WHEN 'S001032' THEN
			'曲阜农商行'
			WHEN 'N000209' THEN
			'内蒙古矿业集团'
			WHEN 'A000221' THEN
			'奥佳华'
			WHEN 'S005175' THEN
			'上饶交投'
			WHEN 'S005176' THEN
			'沪光股份'
			WHEN 'J000425' THEN
			'历城资运'
			WHEN 'Z001015' THEN
			'建行历城支行'
			WHEN 'G000650' THEN
			'口岸发展'
			WHEN 'G000292' THEN
			'浩越能源'
			WHEN 'S005177' THEN
			'浦发硅谷银行'
			WHEN 'S000688' THEN
			'瀚瑞控股'
			WHEN 'S005178' THEN
			'苏宁金融'
			WHEN 'S005179' THEN
			'张江文控'
			WHEN 'S005180' THEN
			'上实融资租赁'
			WHEN 'S005181' THEN
			'陕钢集团'
			WHEN 'S005182' THEN
			'山西国资运营'
			WHEN 'S005183' THEN
			'滇中保理'
			WHEN 'S005184' THEN
			'国麒保理'
			WHEN 'S005185' THEN
			'恒和信保理'
			WHEN 'S005186' THEN
			'兴邦保理'
			WHEN 'S005187' THEN
			'null'
			WHEN 'S005188' THEN
			'程远一方保理'
			WHEN 'S005189' THEN
			'海湾发展'
			WHEN 'S005190' THEN
			'津投投资'
			WHEN 'S005191' THEN
			'蒙牛'
			WHEN 'S005192' THEN
			'融迅保理'
			WHEN 'S005193' THEN
			'象屿保理'
			WHEN 'S005194' THEN
			'贵州水投'
			WHEN 'S005195' THEN
			'滨海国资'
			WHEN 'S005196' THEN
			'天保热电'
			WHEN 'S005197' THEN
			'湘潭交发集团'
			WHEN 'S005198' THEN
			'云链保理'
			WHEN 'S005199' THEN
			'中兵保理'
			WHEN 'S005200' THEN
			'中和农信'
			WHEN 'S005201' THEN
			'瀚华小额贷款'
			WHEN 'S005202' THEN
			'林产工业'
			WHEN 'S005203' THEN
			'滨旅控股'
			WHEN 'S005204' THEN
			'东丽经开'
			WHEN 'S005205' THEN
			'张家界棚改'
			WHEN 'S005206' THEN
			'中新南京'
			WHEN 'S005207' THEN
			'亚特兰蒂斯'
			WHEN 'S005208' THEN
			'奉贤生物科技'
			WHEN 'S005209' THEN
			'上海基建'
			WHEN 'S005210' THEN
			'新希望保理'
			WHEN 'S005211' THEN
			'云南资管'
			WHEN 'S005212' THEN
			'华通租赁'
			WHEN 'S005213' THEN
			'江西金融租赁'
			WHEN 'S005214' THEN
			'汇通金租'
			WHEN 'S005215' THEN
			'南资经营集团'
			WHEN 'S005216' THEN
			'中国电建'
			WHEN 'S005217' THEN
			'中企云链保理'
			WHEN 'S005218' THEN
			'如皋城发集团'
			WHEN 'S005219' THEN
			'相城高新控股'
			WHEN 'S005220' THEN
			'太湖旅业'
			WHEN 'S005221' THEN
			'相城高新'
			WHEN 'S005222' THEN
			'领途保理'
			WHEN 'L000154' THEN
			'辽宁政府'
			WHEN 'Z001444' THEN
			'中国水务'
			WHEN 'Y000196' THEN
			'云南政府'
			WHEN 'Y000197' THEN
			'云南农信社'
			WHEN 'X000188' THEN
			'景洪国投'
			WHEN 'J000513' THEN
			'蔚蓝锂芯'
			WHEN 'K000051' THEN
			'螺蛳湾投资'
			WHEN 'J000514' THEN
			'澳洋生态园林股份'
			WHEN 'A000114' THEN
			'澳洋集团'
			WHEN 'S007602' THEN
			'东昱建投'
			WHEN 'B000279' THEN
			'望京搜候'
			WHEN 'S000788' THEN
			'SOHO中国'
			WHEN 'S000789' THEN
			'莱州农商行'
			WHEN 'G000394' THEN
			'观山湖投资'
			WHEN 'C000217' THEN
			'滨江新城开发建设'
			WHEN 'J000515' THEN
			'今世缘集团'
			WHEN 'S007603' THEN
			'美迪凯'
			WHEN 'S007604' THEN
			'极米科技'
			WHEN 'Y000238' THEN
			'阳光100'
			WHEN 'G000230' THEN
			'中小企业'
			WHEN 'S000790' THEN
			'苏州国发集团'
			WHEN 'S007605' THEN
			'日照城建'
			WHEN 'G000395' THEN
			'贵安开投'
			WHEN 'S007606' THEN
			'新湖控股'
			WHEN 'P000096' THEN
			'彭泽城建'
			WHEN 'X000283' THEN
			'西安高科'
			WHEN 'N000254' THEN
			'远高实业'
			WHEN 'L000176' THEN
			'洛阳市政集团'
			WHEN 'L000177' THEN
			'兴阳投资集团'
			WHEN 'W000240' THEN
			'蔡甸生态集团'
			WHEN 'T000181' THEN
			'海河建设'
			WHEN 'S005223' THEN
			'建霖家居'
			WHEN 'S005224' THEN
			'农行顺德分行'
			WHEN 'S005225' THEN
			'瑞昌国投'
			WHEN 'D000219' THEN
			'陵城农商行'
			WHEN 'S005226' THEN
			'九鼎金租'
			WHEN 'S005227' THEN
			'恒通嘉合租赁'
			WHEN 'S005228' THEN
			'中北资管'
			WHEN 'S005229' THEN
			'曲江会展控股'
			WHEN 'S005230' THEN
			'远洋资本'
			WHEN 'S005231' THEN
			'中铁资本'
			WHEN 'S005232' THEN
			'源盛通达投资'
			WHEN 'S005233' THEN
			'度小满小额贷'
			WHEN 'S005234' THEN
			'鑫垚建投'
			WHEN 'S005235' THEN
			'开元城投'
			WHEN 'S005236' THEN
			'汉中投资'
			WHEN 'S005237' THEN
			'星顺保理'
			WHEN 'S005238' THEN
			'赢盛保理'
			WHEN 'S005239' THEN
			'星链保理'
			WHEN 'S005240' THEN
			'武进高新投资'
			WHEN 'S005241' THEN
			'重庆发投'
			WHEN 'S005242' THEN
			'嘉凯城商管'
			WHEN 'S005243' THEN
			'中和农信贷款'
			WHEN 'S005244' THEN
			'四川天府金租'
			WHEN 'S005245' THEN
			'吉成建工检测'
			WHEN 'S005246' THEN
			'英大人寿'
			WHEN 'S005247' THEN
			'招商置地'
			WHEN 'S005248' THEN
			'重高铁发保理'
			WHEN 'S005249' THEN
			'中国能建'
			WHEN 'S005250' THEN
			'中和小额贷款'
			WHEN 'S005251' THEN
			'null'
			WHEN 'S005252' THEN
			'中电通商保理'
			WHEN 'S005253' THEN
			'雁江建投'
			WHEN 'S005254' THEN
			'娄海情旅发投'
			WHEN 'S005255' THEN
			'赛达伟业'
			WHEN 'S005256' THEN
			'中建保理'
			WHEN 'S005257' THEN
			'新昌水务'
			WHEN 'S005258' THEN
			'畅道交投'
			WHEN 'S005259' THEN
			'华发置业'
			WHEN 'S005260' THEN
			'启航电子'
			WHEN 'S005261' THEN
			'全南发投'
			WHEN 'S007607' THEN
			'业达融资租赁'
			WHEN 'A000115' THEN
			'安徽农垦集团'
			WHEN 'W000204' THEN
			'藕塘开发建设'
			WHEN 'S007608' THEN
			'德固特'
			WHEN 'S007609' THEN
			'奥雅设计'
			WHEN 'S007610' THEN
			'新彭建发'
			WHEN 'S007611' THEN
			'宁乡建发'
			WHEN 'S007612' THEN
			'广信国资'
			WHEN 'S007613' THEN
			'上饶广信投资'
			WHEN 'L000178' THEN
			'六盘水市民生产业投资'
			WHEN 'X000284' THEN
			'兴业银行贵阳分行'
			WHEN 'G000396' THEN
			'贵阳银行六盘水分行'
			WHEN 'S007614' THEN
			'创享家租赁'
			WHEN 'S007615' THEN
			'尉邦保理'
			WHEN 'S000791' THEN
			'上饶国资'
			WHEN 'W000205' THEN
			'五洲国际'
			WHEN 'P000066' THEN
			'平潭交投'
			WHEN 'G000397' THEN
			'国开行福建分行'
			WHEN 'S000792' THEN
			'普滤得'
			WHEN 'R000046' THEN
			'瑞达期货'
			WHEN 'S007616' THEN
			'广东连华建工'
			WHEN 'J000603' THEN
			'国际物流'
			WHEN 'S001033' THEN
			'安汉集团'
			WHEN 'B000352' THEN
			'保利文化'
			WHEN 'S005262' THEN
			'爱博医疗'
			WHEN 'S005263' THEN
			'法狮龙'
			WHEN 'S005264' THEN
			'烟台城投'
			WHEN 'S005265' THEN
			'海昌旅游'
			WHEN 'S005266' THEN
			'天长科工发展'
			WHEN 'S005267' THEN
			'海昌海洋公园'
			WHEN 'S000657' THEN
			'富源实业'
			WHEN 'S005268' THEN
			'中伦(重庆)'
			WHEN 'L000144' THEN
			'廊坊银行'
			WHEN 'E000017' THEN
			'俄罗斯铝业'
			WHEN 'F000108' THEN
			'富建集团'
			WHEN 'H000466' THEN
			'太平种猪'
			WHEN 'S000658' THEN
			'派森科技'
			WHEN 'K000041' THEN
			'昆明高速公路公司'
			WHEN 'W000255' THEN
			'光谷融资'
			WHEN 'Q000144' THEN
			'青岛城建'
			WHEN 'S000793' THEN
			'上海医药'
			WHEN 'Z001154' THEN
			'正大投资'
			WHEN 'X000285' THEN
			'隆基股份'
			WHEN 'W000206' THEN
			'无锡惠开集团'
			WHEN 'J000516' THEN
			'悦达资管'
			WHEN 'C000218' THEN
			'成龙建设'
			WHEN 'W000207' THEN
			'瓦房店开发'
			WHEN 'X000286' THEN
			'湘潭城乡创新'
			WHEN 'S000794' THEN
			'中城投资'
			WHEN 'S000795' THEN
			'新希望'
			WHEN 'S000796' THEN
			'阆中名城'
			WHEN 'L000179' THEN
			'万宝开发投资'
			WHEN 'G000584' THEN
			'联泰环保'
			WHEN 'R000030' THEN
			'仁怀城建'
			WHEN 'S001161' THEN
			'金鼎控股'
			WHEN 'H000398' THEN
			'贺州城建'
			WHEN 'S000433' THEN
			'嘉定交通发展集团'
			WHEN 'Z000683' THEN
			'重庆豪江建设'
			WHEN 'Z000684' THEN
			'农行重庆永川支行'
			WHEN 'S001162' THEN
			'单县农商行'
			WHEN 'M000081' THEN
			'经开投控'
			WHEN 'H000970' THEN
			'宏辉果蔬'
			WHEN 'S001375' THEN
			'宏源承保'
			WHEN 'N000202' THEN
			'苏通控股'
			WHEN 'C000351' THEN
			'美兰股份'
			WHEN 'Z001487' THEN
			'邹城隆城投资'
			WHEN 'C000425' THEN
			'成华棚改'
			WHEN 'Q000147' THEN
			'前海结算保理'
			WHEN 'H000495' THEN
			'海南政府'
			WHEN 'S000689' THEN
			'三亚农商行'
			WHEN 'S001376' THEN
			'锦天城'
			WHEN 'S007617' THEN
			'凤凰山国投'
			WHEN 'S007618' THEN
			'淄川财金控股'
			WHEN 'S005640' THEN
			'海昌新材'
			WHEN 'S007619' THEN
			'调露租赁'
			WHEN 'S007620' THEN
			'显庆租赁'
			WHEN 'S007621' THEN
			'永隆租赁'
			WHEN 'S007622' THEN
			'华瑞城投发'
			WHEN 'S007623' THEN
			'淄博民通热力'
			WHEN 'S007624' THEN
			'宝应新能源'
			WHEN 'S007625' THEN
			'雅居乐房地产'
			WHEN 'S007626' THEN
			'中节能(合肥)'
			WHEN 'S007627' THEN
			'南京地铁开发'
			WHEN 'S007628' THEN
			'京蓝沐禾节水'
			WHEN 'S007629' THEN
			'广西租赁'
			WHEN 'S007630' THEN
			'领昱公寓'
			WHEN 'S007631' THEN
			'福建碧桂园'
			WHEN 'S007632' THEN
			'鑫科房地产'
			WHEN 'S007633' THEN
			'宏矿热电'
			WHEN 'S007634' THEN
			'远洋服务'
			WHEN 'S007635' THEN
			'北大资源投资'
			WHEN 'S007636' THEN
			'宁波碧海供水'
			WHEN 'S007637' THEN
			'南昌高速'
			WHEN 'S007638' THEN
			'永禧投资'
			WHEN 'S007639' THEN
			'绩溪污水处理'
			WHEN 'S007640' THEN
			'普洛斯(上海)'
			WHEN 'S007641' THEN
			'蚌埠公交'
			WHEN 'S007642' THEN
			'居业置业'
			WHEN 'S007643' THEN
			'平遥古城'
			WHEN 'S007644' THEN
			'河南煤气'
			WHEN 'S007645' THEN
			'瑞安管理(上海)'
			WHEN 'S007646' THEN
			'中核中原建设'
			WHEN 'S007647' THEN
			'中国二十冶'
			WHEN 'S007648' THEN
			'慈溪城乡公交'
			WHEN 'S007649' THEN
			'凯恒房地产'
			WHEN 'S007650' THEN
			'武汉地产集团'
			WHEN 'S007651' THEN
			'北辰地产'
			WHEN 'S007652' THEN
			'浙江火电'
			WHEN 'S007653' THEN
			'山钢地产'
			WHEN 'S007654' THEN
			'中铁九局'
			WHEN 'H000310' THEN
			'中建路桥'
			WHEN 'W000269' THEN
			'锦泓集团'
			WHEN 'S000659' THEN
			'深振业'
			WHEN 'H000971' THEN
			'优行科技'
			WHEN 'A000177' THEN
			'东至农商行'
			WHEN 'G000553' THEN
			'博世科'
			WHEN 'J000758' THEN
			'江门农商行'
			WHEN 'S000690' THEN
			'东证期货'
			WHEN 'C000368' THEN
			'巴南公路建设'
			WHEN 'Z001488' THEN
			'中核租赁'
			WHEN 'L000321' THEN
			'立信'
			WHEN 'M000091' THEN
			'新兴投资'
			WHEN 'Y000432' THEN
			'云南旅游'
			WHEN 'S007655' THEN
			'博硕科技'
			WHEN 'S007656' THEN
			'景洪给排水'
			WHEN 'S007657' THEN
			'杭州会展旅业'
			WHEN 'S007658' THEN
			'诸暨公交'
			WHEN 'S007659' THEN
			'北京瑞赛'
			WHEN 'S007660' THEN
			'中航大北物业'
			WHEN 'S007661' THEN
			'长春国信供热'
			WHEN 'S007662' THEN
			'兰州中川机场'
			WHEN 'S007663' THEN
			'剑门关广场'
			WHEN 'S007664' THEN
			'申能诚毅'
			WHEN 'S007665' THEN
			'金源华兴'
			WHEN 'S007666' THEN
			'赤壁凯迪绿能'
			WHEN 'S007667' THEN
			'谷城凯迪绿能'
			WHEN 'S007668' THEN
			'江陵凯迪绿能'
			WHEN 'S007669' THEN
			'来凤凯迪绿能'
			WHEN 'K000065' THEN
			'东骏置业'
			WHEN 'S007670' THEN
			'中财租赁'
			WHEN 'S007671' THEN
			'国金租赁'
			WHEN 'S007672' THEN
			'上海菜鸟管咨'
			WHEN 'S007673' THEN
			'国中生物'
			WHEN 'S007674' THEN
			'西安热力'
			WHEN 'S007675' THEN
			'优行科技'
			WHEN 'S007676' THEN
			'吉利优行科技'
			WHEN 'S007677' THEN
			'吉利优行电子'
			WHEN 'S007678' THEN
			'厦门吉利优行'
			WHEN 'S007679' THEN
			'人福医药'
			WHEN 'S007680' THEN
			'云城租赁'
			WHEN 'S007681' THEN
			'矾山自来水'
			WHEN 'S007682' THEN
			'金乡自来水'
			WHEN 'S007683' THEN
			'马站自来水'
			WHEN 'S007684' THEN
			'钱库自来水'
			WHEN 'S007685' THEN
			'桥墩自来水'
			WHEN 'S007686' THEN
			'宜山自来水'
			WHEN 'S007687' THEN
			'苍水'
			WHEN 'S007688' THEN
			'遵义汽运'
			WHEN 'S007689' THEN
			'云南工程建设'
			WHEN 'S007690' THEN
			'人才工作集团'
			WHEN 'S007691' THEN
			'海尚海服务'
			WHEN 'S007692' THEN
			'利程租赁'
			WHEN 'S007693' THEN
			'万隆热力'
			WHEN 'S007694' THEN
			'南昌万达城投'
			WHEN 'S007695' THEN
			'海济租赁'
			WHEN 'S007696' THEN
			'金控租赁'
			WHEN 'S007697' THEN
			'泰山融资租赁'
			WHEN 'S007698' THEN
			'宁德汽运集团'
			WHEN 'S007699' THEN
			'合生兴业房产'
			WHEN 'S007700' THEN
			'北轨大兴线投'
			WHEN 'S007701' THEN
			'新鸥鹏'
			WHEN 'S007702' THEN
			'信远租赁(浙江)'
			WHEN 'S007703' THEN
			'吉首城市供水'
			WHEN 'S007704' THEN
			'盐城自来水'
			WHEN 'S007705' THEN
			'昆明公交'
			WHEN 'S007706' THEN
			'中国十七冶'
			WHEN 'S007707' THEN
			'中铁城投'
			WHEN 'S007708' THEN
			'安顺汽车运输'
			WHEN 'S007709' THEN
			'新湖绿业'
			WHEN 'S007710' THEN
			'邵阳自来水'
			WHEN 'S007711' THEN
			'银河物业管理'
			WHEN 'S007712' THEN
			'贵州水投'
			WHEN 'S007713' THEN
			'贺州公交'
			WHEN 'S007714' THEN
			'岷江自来水厂'
			WHEN 'S007715' THEN
			'国贸物业'
			WHEN 'S007716' THEN
			'武安热力'
			WHEN 'S007717' THEN
			'明源房产开发'
			WHEN 'S007718' THEN
			'银米科技'
			WHEN 'S007719' THEN
			'长沙供水'
			WHEN 'S007720' THEN
			'天域实业'
			WHEN 'S007721' THEN
			'湘江租赁'
			WHEN 'S007722' THEN
			'相城高新实业'
			WHEN 'S007723' THEN
			'嘉铭租赁'
			WHEN 'S007724' THEN
			'顺泰租赁'
			WHEN 'S007725' THEN
			'建融集团'
			WHEN 'S007726' THEN
			'国电山西新能'
			WHEN 'S007727' THEN
			'青岛国航管理'
			WHEN 'S007728' THEN
			'爱建租赁'
			WHEN 'S007729' THEN
			'交投智慧停车'
			WHEN 'S007730' THEN
			'重庆艺术学院'
			WHEN 'S007731' THEN
			'重庆传媒学院'
			WHEN 'S007732' THEN
			'西北建投'
			WHEN 'S007733' THEN
			'中国十九冶'
			WHEN 'S007734' THEN
			'江苏高速管理'
			WHEN 'S007735' THEN
			'远大(上海)租赁'
			WHEN 'S007736' THEN
			'中国华冶'
			WHEN 'S007737' THEN
			'中国铁建'
			WHEN 'S007738' THEN
			'中铁十二局'
			WHEN 'S007739' THEN
			'苏州工业教投'
			WHEN 'S007740' THEN
			'春源热力'
			WHEN 'S007741' THEN
			'海淀置业'
			WHEN 'S007742' THEN
			'大众融资'
			WHEN 'S007743' THEN
			'中冶交建'
			WHEN 'S007744' THEN
			'北京首汽(集团)'
			WHEN 'S007745' THEN
			'宏源热力'
			WHEN 'S007746' THEN
			'华宸租赁'
			WHEN 'S007747' THEN
			'淮南矿业发电'
			WHEN 'S007748' THEN
			'中铁上投'
			WHEN 'S007749' THEN
			'上实金服'
			WHEN 'Z001445' THEN
			'松阳农商行'
			WHEN 'N000349' THEN
			'鄂托克前旗农商行'
			WHEN 'H000834' THEN
			'虎林农商行'
			WHEN 'G000554' THEN
			'遵义农商行'
			WHEN 'H000496' THEN
			'海峡出版发行集团'
			WHEN 'S001203' THEN
			'景旺电子'
			WHEN 'B000413' THEN
			'文化科技租赁'
			WHEN 'Z001639' THEN
			'中铁金租'
			WHEN 'T000136' THEN
			'静海城投集团'
			WHEN 'S005269' THEN
			'浦江国投'
			WHEN 'S005270' THEN
			'起帆电缆'
			WHEN 'S005271' THEN
			'甘源食品'
			WHEN 'Y000184' THEN
			'洞庭新城投开公司'
			WHEN 'L000283' THEN
			'罗甸农信社'
			WHEN 'S005272' THEN
			'中江农信社'
			WHEN 'F000109' THEN
			'丰县城投集团'
			WHEN 'Z000983' THEN
			'农发行丰县支行'
			WHEN 'S005273' THEN
			'苍梧农商行'
			WHEN 'Z000984' THEN
			'中邮证券'
			WHEN 'S000660' THEN
			'大东国资'
			WHEN 'S001163' THEN
			'国鑫投资'
			WHEN 'W000173' THEN
			'隆江城建'
			WHEN 'X000237' THEN
			'西安建工建筑工程'
			WHEN 'H000497' THEN
			'海航迎宾馆'
			WHEN 'C000147' THEN
			'兴城建实业'
			WHEN 'S001377' THEN
			'商丘古城'
			WHEN 'H000498' THEN
			'恒大地产'
			WHEN 'J000823' THEN
			'天目湖'
			WHEN 'Z001640' THEN
			'路桥富民村镇行'
			WHEN 'S001378' THEN
			'翔港科技'
			WHEN 'S007750' THEN
			'中铁电气化局'
			WHEN 'S007751' THEN
			'中铁科研院'
			WHEN 'S007752' THEN
			'中铁七局'
			WHEN 'S007753' THEN
			'中铁三局'
			WHEN 'S007754' THEN
			'中铁物贸'
			WHEN 'S007755' THEN
			'北仑公交'
			WHEN 'S007756' THEN
			'恒风集团'
			WHEN 'S007757' THEN
			'铜仁公交'
			WHEN 'S007758' THEN
			'宝业集团安徽'
			WHEN 'S007759' THEN
			'云投租赁'
			WHEN 'S007760' THEN
			'十堰城建运管'
			WHEN 'S007761' THEN
			'达州公交'
			WHEN 'S007762' THEN
			'新兴建筑'
			WHEN 'S007763' THEN
			'国电和风开发'
			WHEN 'S007764' THEN
			'淄博城市燃气'
			WHEN 'S007765' THEN
			'弘阳商业管理'
			WHEN 'S007766' THEN
			'西安重装集团'
			WHEN 'S007767' THEN
			'善美商业保理'
			WHEN 'S007768' THEN
			'溧阳交建'
			WHEN 'S007769' THEN
			'龙冈旅游'
			WHEN 'S007770' THEN
			'中国三冶'
			WHEN 'S007771' THEN
			'禄丰北控水务'
			WHEN 'S007772' THEN
			'武定北控水务'
			WHEN 'S007773' THEN
			'商融(上海)保理'
			WHEN 'S007774' THEN
			'前海澜海保理'
			WHEN 'S007775' THEN
			'吴都租赁(天津)'
			WHEN 'S007776' THEN
			'润德实业'
			WHEN 'S007777' THEN
			'泛逸旅游'
			WHEN 'S007778' THEN
			'新希望资管'
			WHEN 'S007779' THEN
			'光谷环保科技'
			WHEN 'S007780' THEN
			'逸锟商保'
			WHEN 'S007781' THEN
			'远达烟气治理'
			WHEN 'S007782' THEN
			'银川公交'
			WHEN 'S007783' THEN
			'黄浦区房产'
			WHEN 'S007784' THEN
			'青年创投'
			WHEN 'S007785' THEN
			'世茂房产'
			WHEN 'S007786' THEN
			'山西燃产'
			WHEN 'S007787' THEN
			'工银理财'
			WHEN 'S007788' THEN
			'德泰水务'
			WHEN 'S007789' THEN
			'江苏化工品'
			WHEN 'S007790' THEN
			'嘉泽璟铭投资'
			WHEN 'S007791' THEN
			'北祥投资管理'
			WHEN 'S007792' THEN
			'联想(北京)'
			WHEN 'S007793' THEN
			'均信担保'
			WHEN 'S007794' THEN
			'保利大厦'
			WHEN 'S007795' THEN
			'昌邑自来水'
			WHEN 'S007796' THEN
			'韶山旅游'
			WHEN 'S007797' THEN
			'光大水务(深圳)'
			WHEN 'S007798' THEN
			'瀚瑞金港租赁'
			WHEN 'S007799' THEN
			'华融建投保理'
			WHEN 'S007800' THEN
			'中证保理(天津)'
			WHEN 'S007801' THEN
			'弘郡投资'
			WHEN 'S007802' THEN
			'湖北工程公司'
			WHEN 'S007803' THEN
			'上海住房保障'
			WHEN 'S007804' THEN
			'弘致一实业'
			WHEN 'S007805' THEN
			'蓝光嘉鑫'
			WHEN 'S007806' THEN
			'恒华租赁'
			WHEN 'S007807' THEN
			'南京城建历史'
			WHEN 'S007808' THEN
			'博山热力'
			WHEN 'S007809' THEN
			'浦创租赁'
			WHEN 'S007810' THEN
			'泰康人寿'
			WHEN 'S007811' THEN
			'野风房产'
			WHEN 'S007812' THEN
			'中车电动'
			WHEN 'S007813' THEN
			'振新物业管理'
			WHEN 'S007814' THEN
			'鼎逸朗轩投资'
			WHEN 'S007815' THEN
			'上海城投'
			WHEN 'S007816' THEN
			'京津高速'
			WHEN 'S007817' THEN
			'宝地不动产'
			WHEN 'S007818' THEN
			'通盛租赁'
			WHEN 'S007819' THEN
			'南郊热电'
			WHEN 'S007820' THEN
			'汇益租赁(天津)'
			WHEN 'S007821' THEN
			'海天股份'
			WHEN 'B000280' THEN
			'现代汽车金融'
			WHEN 'S007822' THEN
			'业瑞房产开发'
			WHEN 'S007823' THEN
			'远达环保'
			WHEN 'C000219' THEN
			'麓谷实业'
			WHEN 'H000569' THEN
			'汇嘉市政园林'
			WHEN 'J000517' THEN
			'建业集团'
			WHEN 'D000172' THEN
			'裕丰城镇建设'
			WHEN 'R000047' THEN
			'融侨集团'
			WHEN 'A000116' THEN
			'新城建投'
			WHEN 'L000284' THEN
			'泸州交投集团'
			WHEN 'Y000381' THEN
			'盐龙湖生态保护区'
			WHEN 'Y000382' THEN
			'维扬发投'
			WHEN 'J000759' THEN
			'吉林国资'
			WHEN 'H000882' THEN
			'南浔城投'
			WHEN 'S000797' THEN
			'博兴农商行'
			WHEN 'S005274' THEN
			'光明国际'
			WHEN 'S005275' THEN
			'上银国际深圳'
			WHEN 'T000312' THEN
			'重庆医药'
			WHEN 'J000426' THEN
			'亨通光电'
			WHEN 'S005276' THEN
			'保利租赁'
			WHEN 'N000210' THEN
			'栖霞建设'
			WHEN 'T000220' THEN
			'津膜科技'
			WHEN 'Z001489' THEN
			'文成北银村镇行'
			WHEN 'J000760' THEN
			'荆州建投'
			WHEN 'A000178' THEN
			'潜润投资'
			WHEN 'A000179' THEN
			'太和农商行'
			WHEN 'N000396' THEN
			'中浦石化'
			WHEN 'S005277' THEN
			'江航装备'
			WHEN 'S005278' THEN
			'盟升电子'
			WHEN 'S005279' THEN
			'宝明科技'
			WHEN 'Y000185' THEN
			'宜春创投'
			WHEN 'J000414' THEN
			'交行宜春分行'
			WHEN 'K000042' THEN
			'开封城投'
			WHEN 'S005280' THEN
			'兴发铝业'
			WHEN 'Y000186' THEN
			'扬州化工产业'
			WHEN 'X000226' THEN
			'新泰统筹城发'
			WHEN 'N000203' THEN
			'梅山岛投资'
			WHEN 'J000415' THEN
			'九江置地'
			WHEN 'S007824' THEN
			'宝钢资控(上海)'
			WHEN 'S007825' THEN
			'邯郸交投'
			WHEN 'S007826' THEN
			'泰州核心港投'
			WHEN 'S007827' THEN
			'深科达'
			WHEN 'S007828' THEN
			'金盘科技'
			WHEN 'J000518' THEN
			'巨轮智能'
			WHEN 'Z001155' THEN
			'中城建十一局'
			WHEN 'S000798' THEN
			'金宏气体'
			WHEN 'S000799' THEN
			'方林科技'
			WHEN 'S000800' THEN
			'七一新发煤业'
			WHEN 'Z001716' THEN
			'招商银行大连分行'
			WHEN 'Z001156' THEN
			'漳州高速'
			WHEN 'X000287' THEN
			'null'
			WHEN 'P000102' THEN
			'平顶山市郊农信社'
			WHEN 'H000883' THEN
			'鹿邑农商行'
			WHEN 'S005281' THEN
			'翠丽控股'
			WHEN 'H000798' THEN
			'豫联集团'
			WHEN 'R000037' THEN
			'荣盛发展'
			WHEN 'S005282' THEN
			'林州城投'
			WHEN 'S005283' THEN
			'遵义国资'
			WHEN 'S005284' THEN
			'中大元通租赁'
			WHEN 'S005285' THEN
			'徐州园区投发'
			WHEN 'S005286' THEN
			'宁陵发投'
			WHEN 'S005287' THEN
			'路北城投'
			WHEN 'S005288' THEN
			'众益城建'
			WHEN 'S005289' THEN
			'康景物业'
			WHEN 'S005290' THEN
			'三峡租赁'
			WHEN 'S005291' THEN
			'通益置业'
			WHEN 'S005292' THEN
			'富春湾建投'
			WHEN 'S005293' THEN
			'金华轨道交通'
			WHEN 'S005294' THEN
			'昆明交通场站'
			WHEN 'S005295' THEN
			'鲁中金融资产'
			WHEN 'S005296' THEN
			'弋阳城投建设'
			WHEN 'S005297' THEN
			'甘肃资管'
			WHEN 'S005298' THEN
			'新都投资'
			WHEN 'S005299' THEN
			'上汽投资'
			WHEN 'S005300' THEN
			'康田置业'
			WHEN 'S005301' THEN
			'沣西发展集团'
			WHEN 'S005302' THEN
			'福化集团'
			WHEN 'S005303' THEN
			'广汽零部件'
			WHEN 'S005304' THEN
			'三一重装'
			WHEN 'S005305' THEN
			'晨光新材'
			WHEN 'S005306' THEN
			'赛科希德'
			WHEN 'S005307' THEN
			'桐庐交发集团'
			WHEN 'S005308' THEN
			'工控国金'
			WHEN 'H000499' THEN
			'湖南黄金'
			WHEN 'Q000183' THEN
			'泉州文旅'
			WHEN 'M000035' THEN
			'牡丹江城投'
			WHEN 'X000419' THEN
			'芯鑫融资'
			WHEN 'X000494' THEN
			'新路国际'
			WHEN 'Z001641' THEN
			'正通汽车'
			WHEN 'N000165' THEN
			'南京旅游集团'
			WHEN 'S000801' THEN
			'诸城农商行'
			WHEN 'X000288' THEN
			'邢台路桥'
			WHEN 'J000519' THEN
			'吉林森工'
			WHEN 'X000150' THEN
			'西交集团'
			WHEN 'H000570' THEN
			'城投资产'
			WHEN 'D000090' THEN
			'大冶城投'
			WHEN 'H000311' THEN
			'湖北银行黄石分行'
			WHEN 'S005309' THEN
			'益民投资'
			WHEN 'S005310' THEN
			'吉安城投'
			WHEN 'S005311' THEN
			'浦发银行福州分行'
			WHEN 'G000398' THEN
			'国购集团'
			WHEN 'X000289' THEN
			'新疆有色集团'
			WHEN 'H000571' THEN
			'新郑农商行'
			WHEN 'G000231' THEN
			'谷神集团'
			WHEN 'T000246' THEN
			'智光环保'
			WHEN 'H000572' THEN
			'惠水城投'
			WHEN 'X000151' THEN
			'西安轨道交通集团'
			WHEN 'J000520' THEN
			'井冈山农商行'
			WHEN 'S005312' THEN
			'中国海外发展'
			WHEN 'S005313' THEN
			'花王集团'
			WHEN 'S000661' THEN
			'耀皮玻璃'
			WHEN 'S000662' THEN
			'绍兴柯岩建设投资'
			WHEN 'S005314' THEN
			'城投公路'
			WHEN 'S005315' THEN
			'华达新材'
			WHEN 'S005316' THEN
			'高测股份'
			WHEN 'S005317' THEN
			'钱江湾投资'
			WHEN 'S005318' THEN
			'宁阳统筹城发'
			WHEN 'G000399' THEN
			'太安堂'
			WHEN 'S000802' THEN
			'广利工业'
			WHEN 'F000130' THEN
			'佛山中基投资'
			WHEN 'D000173' THEN
			'大连重工起重集团'
			WHEN 'Z001157' THEN
			'浙江世宝'
			WHEN 'X000290' THEN
			'新余纳海贸易'
			WHEN 'S000803' THEN
			'重庆红星美凯龙'
			WHEN 'G000400' THEN
			'天建房地产'
			WHEN 'A000180' THEN
			'蒙城农商行'
			WHEN 'G000316' THEN
			'水城矿务局'
			WHEN 'G000585' THEN
			'双龙航空港'
			WHEN 'D000236' THEN
			'东方汇理银行(中国)'
			WHEN 'H000835' THEN
			'恒隆地产'
			WHEN 'J000824' THEN
			'君禾股份'
			WHEN 'P000051' THEN
			'鹏鹞环保'
			WHEN 'B000466' THEN
			'贝克·麦坚时'
			WHEN 'J000416' THEN
			'沃格光电'
			WHEN 'Z000985' THEN
			'彭公竹制品'
			WHEN 'W000164' THEN
			'丰太建筑'
			WHEN 'W000165' THEN
			'武汉第二建筑'
			WHEN 'S001379' THEN
			'德勤(北京)'
			WHEN 'Z000986' THEN
			'丹徒新农发'
			WHEN 'Z000987' THEN
			'株洲地产集团'
			WHEN 'B000237' THEN
			'包头科教'
			WHEN 'S001204' THEN
			'山东交通运输集团'
			WHEN 'B000467' THEN
			'海问律所'
			WHEN 'Q000094' THEN
			'邛崃建投'
			WHEN 'S000663' THEN
			'天盈实业'
			WHEN 'Z001642' THEN
			'中行安徽分行'
			WHEN 'R000084' THEN
			'容诚'
			WHEN 'S001380' THEN
			'上饶数金投'
			WHEN 'F000224' THEN
			'丰城住总运营'
			WHEN 'S001381' THEN
			'方达(北京)律所'
			WHEN 'B000468' THEN
			'尚公律所'
			WHEN 'D000276' THEN
			'大华'
			WHEN 'Z001643' THEN
			'光大银行杭州分行'
			WHEN 'B000469' THEN
			'观韬中茂律所'
			WHEN 'Z001644' THEN
			'工商银行深圳分行'
			WHEN 'S001382' THEN
			'彩生活'
			WHEN 'X000495' THEN
			'香港理想投资'
			WHEN 'A000222' THEN
			'安永(上海)'
			WHEN 'S001164' THEN
			'曲沃农商行'
			WHEN 'X000437' THEN
			'湘潭产投集团'
			WHEN 'S001263' THEN
			'苏州再担保'
			WHEN 'P000092' THEN
			'润田建设'
			WHEN 'S000691' THEN
			'陕西政府'
			WHEN 'X000377' THEN
			'青投集团'
			WHEN 'S001034' THEN
			'彩虹创投'
			WHEN 'G000555' THEN
			'古田农信社'
			WHEN 'S001205' THEN
			'昌乐农商行'
			WHEN 'F000196' THEN
			'安井食品'
			WHEN 'C000148' THEN
			'东南资产'
			WHEN 'G000651' THEN
			'国浩(北京)'
			WHEN 'Z001645' THEN
			'众环海华'
			WHEN 'K000095' THEN
			'昆明轨道交通'
			WHEN 'X000227' THEN
			'西宁农商行'
			WHEN 'H000467' THEN
			'怀化建投'
			WHEN 'Y000433' THEN
			'慎泰城建'
			WHEN 'S001383' THEN
			'枫桥工业园'
			WHEN 'Z001646' THEN
			'正元智慧'
			WHEN 'C000426' THEN
			'康弘药业'
			WHEN 'W000294' THEN
			'温州国投'
			WHEN 'A000223' THEN
			'安永上海分所'
			WHEN 'B000470' THEN
			'中伦(上海)'
			WHEN 'B000471' THEN
			'中伦'
			WHEN 'J000825' THEN
			'新建农商行'
			WHEN 'S001165' THEN
			'深圳国际'
			WHEN 'H000799' THEN
			'商水农商行'
			WHEN 'J000708' THEN
			'宁都农商行'
			WHEN 'D000232' THEN
			'东亚前海证券'
			WHEN 'J000427' THEN
			'京投发展'
			WHEN 'S000664' THEN
			'上实发展'
			WHEN 'S000434' THEN
			'扳倒井'
			WHEN 'Z001490' THEN
			'中煤机械集团'
			WHEN 'Z001647' THEN
			'中信银行宁波分行'
			WHEN 'H000836' THEN
			'海澜之家'
			WHEN 'G000586' THEN
			'广元农商行'
			WHEN 'S000665' THEN
			'龙钢集团'
			WHEN 'Z001016' THEN
			'镇宁粮油购销'
			WHEN 'J000428' THEN
			'金堂净排'
			WHEN 'S001206' THEN
			'邦汇保理'
			WHEN 'B000392' THEN
			'渤海银行上海分行'
			WHEN 'X000438' THEN
			'湘潭地产集团'
			WHEN 'P000052' THEN
			'普天东信集团'
			WHEN 'F000225' THEN
			'防城港城投'
			WHEN 'G000652' THEN
			'广西担保'
			WHEN 'G000317' THEN
			'白云工业'
			WHEN 'G000318' THEN
			'贵阳银行白云支行'
			WHEN 'W000166' THEN
			'乌鲁木齐建发'
			WHEN 'B000472' THEN
			'北京银行天津分行'
			WHEN 'C000427' THEN
			'索通律师'
			WHEN 'L000322' THEN
			'鲁山农信社'
			WHEN 'H000399' THEN
			'海航基础'
			WHEN 'J000521' THEN
			'济源农商行'
			WHEN 'C000220' THEN
			'聚丰房地产'
			WHEN 'G000401' THEN
			'城南地产'
			WHEN 'T000247' THEN
			'瑞祥兴宇'
			WHEN 'H000573' THEN
			'南庭投资'
			WHEN 'S001166' THEN
			'绛县农商行'
			WHEN 'G000530' THEN
			'创世纪'
			WHEN 'S001167' THEN
			'苏宁环球'
			WHEN 'X000409' THEN
			'伊力特集团'
			WHEN 'Z001648' THEN
			'中国银行陕西分行'
			WHEN 'D000277' THEN
			'德勤华永北京分所'
			WHEN 'H000972' THEN
			'通程律所'
			WHEN 'S001384' THEN
			'苏州科达'
			WHEN 'S001207' THEN
			'宿迁投资'
			WHEN 'Z001649' THEN
			'邮储银行广东分行'
			WHEN 'H000973' THEN
			'圣诺'
			WHEN 'Y000187' THEN
			'宜兴城建文旅集团'
			WHEN 'Y000188' THEN
			'烟台港股'
			WHEN 'J000826' THEN
			'群英投资'
			WHEN 'T000369' THEN
			'京宝置地'
			WHEN 'S001385' THEN
			'上海银行北京分行'
			WHEN 'C000428' THEN
			'创维集团'
			WHEN 'S001386' THEN
			'德勤'
			WHEN 'B000473' THEN
			'毕马威企业咨询'
			WHEN 'D000145' THEN
			'大连政府'
			WHEN 'J000827' THEN
			'盐城市城镇化建设'
			WHEN 'C000221' THEN
			'长城国瑞证券'
			WHEN 'J000522' THEN
			'海鑫新能源'
			WHEN 'L000180' THEN
			'鲁商发展'
			WHEN 'T000248' THEN
			'宁河投资控股'
			WHEN 'S000804' THEN
			'田岭涧'
			WHEN 'S000805' THEN
			'福银高速'
			WHEN 'Z001491' THEN
			'资阳凯利建设'
			WHEN 'C000337' THEN
			'江南城投'
			WHEN 'Q000153' THEN
			'青岛集团'
			WHEN 'L000285' THEN
			'兴泸水务'
			WHEN 'Z001492' THEN
			'四公局'
			WHEN 'C000369' THEN
			'金霞经开'
			WHEN 'B000248' THEN
			'北京城乡'
			WHEN 'S001387' THEN
			'锦天城(北京)'
			WHEN 'S001388' THEN
			'浦发银行南宁分行'
			WHEN 'J000709' THEN
			'济宁新城投资'
			WHEN 'H000974' THEN
			'霍金路伟'
			WHEN 'F000226' THEN
			'联合信实(上海)'
			WHEN 'F000227' THEN
			'海晟金融租赁'
			WHEN 'G000556' THEN
			'盛路通信'
			WHEN 'P000112' THEN
			'普华永道北京分所'
			WHEN 'Z001650' THEN
			'招商银行宁波分行'
			WHEN 'Z001651' THEN
			'中审众环'
			WHEN 'B000474' THEN
			'中伦(武汉)'
			WHEN 'Z001652' THEN
			'中信银行太原分行'
			WHEN 'H000500' THEN
			'中源化学'
			WHEN 'S001265' THEN
			'耘林融资租赁'
			WHEN 'Z001653' THEN
			'漳州城投市政'
			WHEN 'S001389' THEN
			'上海银行市南分行'
			WHEN 'Y000198' THEN
			'阳光城'
			WHEN 'K000084' THEN
			'凯里正源建筑'
			WHEN 'X000496' THEN
			'信永中和'
			WHEN 'Z001654' THEN
			'农行广州分行'
			WHEN 'Z001655' THEN
			'招商银行东莞分行'
			WHEN 'X000378' THEN
			'铜山农商行'
			WHEN 'Y000360' THEN
			'南溪财源公司'
			WHEN 'L000323' THEN
			'天和城市经营投资'
			WHEN 'J000828' THEN
			'交银金融'
			WHEN 'Z001656' THEN
			'招行无锡分行'
			WHEN 'Z001657' THEN
			'招行青岛分行'
			WHEN 'Z001658' THEN
			'工行广州分行'
			WHEN 'J000829' THEN
			'江苏银行南通分行'
			WHEN 'S001390' THEN
			'联合律所'
			WHEN 'Z001659' THEN
			'民生银行天津分行'
			WHEN 'Z001660' THEN
			'中行吉林分行'
			WHEN 'S001391' THEN
			'上海银行浦西分行'
			WHEN 'S007829' THEN
			'四方新材'
			WHEN 'S000752' THEN
			'顺发恒业'
			WHEN 'T000249' THEN
			'蓟州新城'
			WHEN 'Z001158' THEN
			'郑州市郊联社'
			WHEN 'J000523' THEN
			'近湖建设'
			WHEN 'Z001159' THEN
			'中国结算'
			WHEN 'Z001160' THEN
			'中国希格玛'
			WHEN 'M000041' THEN
			'金申投资集团'
			WHEN 'S000806' THEN
			'汾西矿业'
			WHEN 'F000131' THEN
			'福泉国资'
			WHEN 'L000181' THEN
			'老百姓'
			WHEN 'X000152' THEN
			'生产建设兵团投资'
			WHEN 'S007830' THEN
			'电能实业'
			WHEN 'S007831' THEN
			'香港金融集团'
			WHEN 'S007832' THEN
			'东方报业集团'
			WHEN 'Q000112' THEN
			'侨鑫集团'
			WHEN 'S007833' THEN
			'大中华地产'
			WHEN 'S007834' THEN
			'茂盛控股'
			WHEN 'P000086' THEN
			'鹏华资产'
			WHEN 'H000312' THEN
			'海航旅游'
			WHEN 'H000884' THEN
			'新蔡农商行'
			WHEN 'X000379' THEN
			'汇和银行'
			WHEN 'S007835' THEN
			'恒辉安防'
			WHEN 'S007836' THEN
			'菱电电控'
			WHEN 'S007837' THEN
			'中望软件'
			WHEN 'S007838' THEN
			'赛生药业'
			WHEN 'S007839' THEN
			'环联连讯'
			WHEN 'S007840' THEN
			'宝威控股'
			WHEN 'S007841' THEN
			'其士国际'
			WHEN 'S007842' THEN
			'中华汽车'
			WHEN 'S007843' THEN
			'银河娱乐'
			WHEN 'S007844' THEN
			'天安'
			WHEN 'S007845' THEN
			'达力集团'
			WHEN 'S007846' THEN
			'万隆控股集团'
			WHEN 'S007847' THEN
			'航天控股'
			WHEN 'S007848' THEN
			'港通控股'
			WHEN 'S007849' THEN
			'安山金控'
			WHEN 'S007850' THEN
			'九龙建业'
			WHEN 'S007851' THEN
			'远东控股国际'
			WHEN 'S007852' THEN
			'远东酒店实业'
			WHEN 'S007853' THEN
			'中国北大荒'
			WHEN 'S007854' THEN
			'金山工业'
			WHEN 'S007855' THEN
			'鹰君'
			WHEN 'S007856' THEN
			'卜蜂国际'
			WHEN 'S007857' THEN
			'大酒店'
			WHEN 'S007858' THEN
			'科联系统'
			WHEN 'S007859' THEN
			'合兴集团'
			WHEN 'S007860' THEN
			'中国汽车内饰'
			WHEN 'S007861' THEN
			'香港小轮(集团)'
			WHEN 'S007862' THEN
			'海港企业'
			WHEN 'S007863' THEN
			'大快活'
			WHEN 'S007864' THEN
			'国浩集团'
			WHEN 'S007865' THEN
			'中星集团控股'
			WHEN 'S007866' THEN
			'震雄集团'
			WHEN 'S007867' THEN
			'新威国际'
			WHEN 'S000753' THEN
			'大名城'
			WHEN 'S006668' THEN
			'新致软件'
			WHEN 'S007868' THEN
			'益民集团'
			WHEN 'S006669' THEN
			'确成股份'
			WHEN 'Y000239' THEN
			'永泰集团'
			WHEN 'S007869' THEN
			'香港食品投资'
			WHEN 'S007870' THEN
			'绿领控股'
			WHEN 'S007871' THEN
			'载通'
			WHEN 'S007872' THEN
			'中亚烯谷集团'
			WHEN 'S007873' THEN
			'结好控股'
			WHEN 'S007874' THEN
			'弘海高新资源'
			WHEN 'S006670' THEN
			'兆龙互连'
			WHEN 'S006671' THEN
			'联泓新科'
			WHEN 'S007875' THEN
			'旭光高新材料'
			WHEN 'S007876' THEN
			'利兴发展'
			WHEN 'S000807' THEN
			'山东出版集团'
			WHEN 'S006672' THEN
			'海融科技'
			WHEN 'S007877' THEN
			'金粤控股'
			WHEN 'S007878' THEN
			'美丽华酒店'
			WHEN 'Y000240' THEN
			'临港公司'
			WHEN 'H000574' THEN
			'中鸿煤化'
			WHEN 'C000222' THEN
			'常德交通建投集团'
			WHEN 'S007879' THEN
			'现代传播'
			WHEN 'S007880' THEN
			'亚洲果业'
			WHEN 'S007881' THEN
			'渝太地产'
			WHEN 'S007882' THEN
			'谊砾控股'
			WHEN 'S007883' THEN
			'进智公共交通'
			WHEN 'S007884' THEN
			'富豪酒店'
			WHEN 'S007885' THEN
			'世纪建业'
			WHEN 'S007886' THEN
			'中国新经济'
			WHEN 'S007887' THEN
			'第一视频'
			WHEN 'S007888' THEN
			'信和置业'
			WHEN 'S007889' THEN
			'宝光实业'
			WHEN 'S007890' THEN
			'中电华大科技'
			WHEN 'S007891' THEN
			'新鸿基公司'
			WHEN 'P000061' THEN
			'沛县城投'
			WHEN 'H000313' THEN
			'华福证券'
			WHEN 'H000314' THEN
			'磁湖科技'
			WHEN 'S001035' THEN
			'商河农商行'
			WHEN 'S007892' THEN
			'大昌集团'
			WHEN 'S007893' THEN
			'大生地产'
			WHEN 'S007894' THEN
			'普星能量'
			WHEN 'S007895' THEN
			'金禧国际控股'
			WHEN 'S007896' THEN
			'冠军科技集团'
			WHEN 'S007897' THEN
			'添利工业'
			WHEN 'S007898' THEN
			'绿心集团'
			WHEN 'S007899' THEN
			'友成控股'
			WHEN 'S007900' THEN
			'恒基发展'
			WHEN 'S007901' THEN
			'兴发铝业'
			WHEN 'S007902' THEN
			'王氏国际'
			WHEN 'S007903' THEN
			'白马户外媒体'
			WHEN 'S007904' THEN
			'凯升控股'
			WHEN 'S007905' THEN
			'首长宝佳'
			WHEN 'S007906' THEN
			'冠亚商业'
			WHEN 'S007907' THEN
			'凯联国际酒店'
			WHEN 'S007908' THEN
			'国锐地产'
			WHEN 'S007909' THEN
			'天成国际'
			WHEN 'S007910' THEN
			'中国长远'
			WHEN 'S007911' THEN
			'信达国际控股'
			WHEN 'S007912' THEN
			'勒泰集团'
			WHEN 'S007913' THEN
			'迪生创建'
			WHEN 'S007914' THEN
			'兴利集团'
			WHEN 'S007915' THEN
			'钧濠集团'
			WHEN 'S007916' THEN
			'周生生'
			WHEN 'S007917' THEN
			'天利控股集团'
			WHEN 'S007918' THEN
			'大同机械'
			WHEN 'S007919' THEN
			'保利置业集团'
			WHEN 'S007920' THEN
			'四海国际'
			WHEN 'S007921' THEN
			'鳄鱼恤'
			WHEN 'S007922' THEN
			'越秀地产'
			WHEN 'S007923' THEN
			'粤海置地'
			WHEN 'S007924' THEN
			'新兴光学'
			WHEN 'S007925' THEN
			'佳宁娜'
			WHEN 'S007926' THEN
			'华人置业'
			WHEN 'S007927' THEN
			'安宁控股'
			WHEN 'S007928' THEN
			'泛海集团'
			WHEN 'S007929' THEN
			'慕诗国际'
			WHEN 'S007930' THEN
			'卓能(集团)'
			WHEN 'S007931' THEN
			'中国兴业控股'
			WHEN 'S007932' THEN
			'交银康联'
			WHEN 'S007933' THEN
			'世茂新领域'
			WHEN 'S007934' THEN
			'兰州城乡公交'
			WHEN 'S007935' THEN
			'亦庄生物医药'
			WHEN 'Y000414' THEN
			'普者黑'
			WHEN 'Z001570' THEN
			'迪贝电气'
			WHEN 'D000269' THEN
			'迪贝控股'
			WHEN 'N000122' THEN
			'双欣能源'
			WHEN 'S000808' THEN
			'易见股份'
			WHEN 'A000117' THEN
			'塔河矿业'
			WHEN 'H000575' THEN
			'赫章贸易'
			WHEN 'S007936' THEN
			'恒腾网络'
			WHEN 'S007937' THEN
			'中建富通'
			WHEN 'S007938' THEN
			'中达集团控股'
			WHEN 'S007939' THEN
			'天禧海嘉控股'
			WHEN 'S007940' THEN
			'国安国际'
			WHEN 'S007941' THEN
			'香港建屋贷款'
			WHEN 'S007942' THEN
			'太平地毡'
			WHEN 'S007943' THEN
			'国际商业结算'
			WHEN 'S007944' THEN
			'建滔集团'
			WHEN 'S007945' THEN
			'中国农产品'
			WHEN 'S007946' THEN
			'招商局基金'
			WHEN 'S007947' THEN
			'Hypebeast'
			WHEN 'S007948' THEN
			'苏州西部生态'
			WHEN 'S007949' THEN
			'中国赛特'
			WHEN 'S007950' THEN
			'北京控股集团'
			WHEN 'S007951' THEN
			'中国源畅'
			WHEN 'N000211' THEN
			'内蒙古政府'
			WHEN 'Z001420' THEN
			'株洲芦淞国资'
			WHEN 'H000837' THEN
			'建三江农商行'
			WHEN 'A000224' THEN
			'安永广州分所'
			WHEN 'T000370' THEN
			'同安控股'
			WHEN 'F000197' THEN
			'德尔股份'
			WHEN 'A000152' THEN
			'皖新传媒'
			WHEN 'S001208' THEN
			'广信城投'
			WHEN 'Z001661' THEN
			'百达精工'
			WHEN 'H000975' THEN
			'天地人'
			WHEN 'Y000434' THEN
			'永高股份'
			WHEN 'J000830' THEN
			'公证天业'
			WHEN 'G000653' THEN
			'国浩(上海)'
			WHEN 'Z001662' THEN
			'光大银行沈阳分行'
			WHEN 'B000475' THEN
			'天元律所'
			WHEN 'S001392' THEN
			'浦发银行西安分行'
			WHEN 'A000181' THEN
			'安岳兴安城投'
			WHEN 'N000397' THEN
			'牛首山文旅'
			WHEN 'Z001663' THEN
			'邮储银行深圳分行'
			WHEN 'J000831' THEN
			'江苏银行杭州分行'
			WHEN 'B000249' THEN
			'联东集团'
			WHEN 'H000976' THEN
			'隆业律所'
			WHEN 'H000977' THEN
			'容诚'
			WHEN 'L000182' THEN
			'江阳农商行'
			WHEN 'S000435' THEN
			'中小企业'
			WHEN 'Z000685' THEN
			'漳州交发'
			WHEN 'Q000057' THEN
			'华实投资'
			WHEN 'S000436' THEN
			'中小企业'
			WHEN 'H000501' THEN
			'哈密商行'
			WHEN 'A000193' THEN
			'太湖农商行'
			WHEN 'K000024' THEN
			'库车城乡建投'
			WHEN 'J000267' THEN
			'荆州经开城投'
			WHEN 'W000101' THEN
			'武威经投'
			WHEN 'S001393' THEN
			'三祥新材'
			WHEN 'J000832' THEN
			'苏博特'
			WHEN 'H000978' THEN
			'雷迪克'
			WHEN 'H000979' THEN
			'红相股份'
			WHEN 'S000692' THEN
			'吴江城投'
			WHEN 'H000800' THEN
			'滑县农商行'
			WHEN 'S001394' THEN
			'华炬'
			WHEN 'B000476' THEN
			'中伦文德(天津)'
			WHEN 'S001395' THEN
			'联和投资'
			WHEN 'Z001664' THEN
			'民生银行南京分行'
			WHEN 'J000833' THEN
			'马健'
			WHEN 'Z001665' THEN
			'工行四川分行'
			WHEN 'Z001666' THEN
			'中信银行呼和浩特分行'
			WHEN 'E000020' THEN
			'null'
			WHEN 'J000726' THEN
			'江西省旅游集团'
			WHEN 'C000352' THEN
			'赤水城投'
			WHEN 'S001209' THEN
			'革新百集'
			WHEN 'S007952' THEN
			'力宝华润'
			WHEN 'S007953' THEN
			'自然美'
			WHEN 'S007954' THEN
			'万邦投资'
			WHEN 'S007955' THEN
			'布莱克万矿业'
			WHEN 'S007956' THEN
			'汉国置业'
			WHEN 'S007957' THEN
			'世纪金花'
			WHEN 'S007958' THEN
			'中国宝力科技'
			WHEN 'S007959' THEN
			'新时代能源'
			WHEN 'S007960' THEN
			'万威国际'
			WHEN 'S007961' THEN
			'万达酒店发展'
			WHEN 'S007962' THEN
			'银建国际'
			WHEN 'S007963' THEN
			'金榜集团'
			WHEN 'S007964' THEN
			'嘉华国际'
			WHEN 'S007965' THEN
			'盛洋投资'
			WHEN 'S007966' THEN
			'吉利汽车'
			WHEN 'S007967' THEN
			'先机企业集团'
			WHEN 'S007968' THEN
			'莎莎国际'
			WHEN 'S007969' THEN
			'开达集团'
			WHEN 'S007970' THEN
			'闽港控股'
			WHEN 'S007971' THEN
			'宏辉集团'
			WHEN 'S007972' THEN
			'激成投资'
			WHEN 'S007973' THEN
			'敏捷控股'
			WHEN 'S007974' THEN
			'新华汇富金融'
			WHEN 'S007975' THEN
			'东岳集团'
			WHEN 'S007976' THEN
			'香港建设(控股)'
			WHEN 'S007977' THEN
			'冠中地产'
			WHEN 'S007978' THEN
			'廖创兴企业'
			WHEN 'S007979' THEN
			'绿科科技国际'
			WHEN 'S007980' THEN
			'亨泰'
			WHEN 'S007981' THEN
			'新濠国际发展'
			WHEN 'S007982' THEN
			'华大酒店'
			WHEN 'S007983' THEN
			'润中国际控股'
			WHEN 'S007984' THEN
			'中国投资开发'
			WHEN 'S007985' THEN
			'财讯传媒'
			WHEN 'S007986' THEN
			'华商国际'
			WHEN 'S007987' THEN
			'保利达资产'
			WHEN 'S007988' THEN
			'瀛晟科学'
			WHEN 'S007989' THEN
			'达芙妮国际'
			WHEN 'S007990' THEN
			'大凌集团'
			WHEN 'S007991' THEN
			'南洋集团'
			WHEN 'S007992' THEN
			'乐声电子'
			WHEN 'S007993' THEN
			'汇汉控股'
			WHEN 'S007994' THEN
			'和记电讯香港'
			WHEN 'S007995' THEN
			'建业实业'
			WHEN 'S007996' THEN
			'诚通发展'
			WHEN 'S007997' THEN
			'申万宏源香港'
			WHEN 'S007998' THEN
			'顺豪物业'
			WHEN 'S007999' THEN
			'统一企业中国'
			WHEN 'S008000' THEN
			'闽信集团'
			WHEN 'S008001' THEN
			'易生活控股'
			WHEN 'Y000123' THEN
			'沃森生物'
			WHEN 'D000091' THEN
			'晋控煤业'
			WHEN 'S008002' THEN
			'天府水城文旅'
			WHEN 'S008003' THEN
			'徐州交控桥梁'
			WHEN 'S008004' THEN
			'重庆高开建投'
			WHEN 'J000710' THEN
			'桦甸农商行'
			WHEN 'H000801' THEN
			'修武农商行'
			WHEN 'B000381' THEN
			'金隅财务'
			WHEN 'B000382' THEN
			'北讯集团'
			WHEN 'W000254' THEN
			'联兴科技'
			WHEN 'F000114' THEN
			'福州城建'
			WHEN 'H000838' THEN
			'威帝股份'
			WHEN 'S001210' THEN
			'万顺新材'
			WHEN 'Z001446' THEN
			'中国一拖'
			WHEN 'S000693' THEN
			'北方企业集团'
			WHEN 'T000324' THEN
			'九龙地矿投资'
			WHEN 'Z001667' THEN
			'招行重庆分行'
			WHEN 'J000727' THEN
			'宏圣建筑'
			WHEN 'L000271' THEN
			'洛阳LYC轴承'
			WHEN 'W000257' THEN
			'乌鲁木齐交投'
			WHEN 'Z001447' THEN
			'中建交通'
			WHEN 'S001211' THEN
			'陕鼓集团'
			WHEN 'H000839' THEN
			'湖南交水建集团'
			WHEN 'Z001668' THEN
			'光大银行合肥分行'
			WHEN 'J000728' THEN
			'方大钢铁集团'
			WHEN 'X000420' THEN
			'西藏道衡'
			WHEN 'G000557' THEN
			'飞企互联'
			WHEN 'B000477' THEN
			'兰台律所'
			WHEN 'J000834' THEN
			'凯伦股份'
			WHEN 'J000835' THEN
			'嘉兴科技城'
			WHEN 'J000836' THEN
			'江苏资管'
			WHEN 'H000980' THEN
			'新业建投'
			WHEN 'H000981' THEN
			'吴兴城投'
			WHEN 'H000982' THEN
			'钱江开投'
			WHEN 'T000371' THEN
			'天长城镇发展'
			WHEN 'Z001669' THEN
			'农行深圳分行'
			WHEN 'G000332' THEN
			'时代控股'
			WHEN 'B000478' THEN
			'兴华'
			WHEN 'G000623' THEN
			'国电南瑞'
			WHEN 'J000378' THEN
			'嘉兴银行'
			WHEN 'Z001017' THEN
			'农行广东分行'
			WHEN 'H000502' THEN
			'华立医药'
			WHEN 'G000654' THEN
			'法制盛邦'
			WHEN 'S001396' THEN
			'正策'
			WHEN 'F000228' THEN
			'法商法国兴业银行'
			WHEN 'B000479' THEN
			'中咨'
			WHEN 'R000085' THEN
			'瑞元资管'
			WHEN 'Z001670' THEN
			'新华'
			WHEN 'J000837' THEN
			'交行海南分行'
			WHEN 'Z001671' THEN
			'中信银行重庆分行'
			WHEN 'S001397' THEN
			'浦发银行南京分行'
			WHEN 'Z001672' THEN
			'中信银行深圳分行'
			WHEN 'F000229' THEN
			'东乡城投'
			WHEN 'J000838' THEN
			'江苏铁路集团'
			WHEN 'G000333' THEN
			'广西金投集团'
			WHEN 'S000694' THEN
			'宿迁交通集团'
			WHEN 'G000334' THEN
			'甘肃政府'
			WHEN 'Z001673' THEN
			'中信银行成都分行'
			WHEN 'J000839' THEN
			'交行苏州分行'
			WHEN 'S006673' THEN
			'菏泽城投'
			WHEN 'S006155' THEN
			'康达所'
			WHEN 'S006674' THEN
			'光谷金控'
			WHEN 'S006675' THEN
			'东海城投'
			WHEN 'S006676' THEN
			'华明高新'
			WHEN 'S006677' THEN
			'信安国际'
			WHEN 'S006678' THEN
			'中交租赁广州'
			WHEN 'S006679' THEN
			'惠誉博华'
			WHEN 'S006680' THEN
			'淄博国投'
			WHEN 'J000711' THEN
			'进贤农商行'
			WHEN 'Z001421' THEN
			'中远海运'
			WHEN 'S001398' THEN
			'四川金控'
			WHEN 'S001399' THEN
			'浦发银行深圳分行'
			WHEN 'J000648' THEN
			'君创租赁'
			WHEN 'Z001674' THEN
			'招行济南分行'
			WHEN 'F000198' THEN
			'富海集团'
			WHEN 'T000285' THEN
			'托克'
			WHEN 'B000250' THEN
			'宝信租赁'
			WHEN 'H000983' THEN
			'天乾资管'
			WHEN 'Y000435' THEN
			'双江湖开发'
			WHEN 'H000984' THEN
			'莫干山高新'
			WHEN 'Z001018' THEN
			'中铁投资'
			WHEN 'X000238' THEN
			'西安建工集团'
			WHEN 'N000212' THEN
			'宁波政府'
			WHEN 'J000840' THEN
			'徐矿发电'
			WHEN 'Q000100' THEN
			'青海政府'
			WHEN 'Q000101' THEN
			'青海银行'
			WHEN 'Z001340' THEN
			'义乌村镇行'
			WHEN 'Z001675' THEN
			'建行苏州分行'
			WHEN 'C000099' THEN
			'川财证券'
			WHEN 'C000100' THEN
			'天晟新材'
			WHEN 'H000315' THEN
			'海南瑞泽'
			WHEN 'B000147' THEN
			'嘉寓股份'
			WHEN 'S000438' THEN
			'山西证券'
			WHEN 'S000439' THEN
			'国信投资'
			WHEN 'J000268' THEN
			'交行大理分行'
			WHEN 'J000649' THEN
			'灌南农商行'
			WHEN 'J000650' THEN
			'敦化农商行'
			WHEN 'N000235' THEN
			'金谷农商行'
			WHEN 'W000192' THEN
			'乌海银行'
			WHEN 'E000015' THEN
			'鄂尔多斯银行'
			WHEN 'G000232' THEN
			'凯里城投'
			WHEN 'C000101' THEN
			'财达证券'
			WHEN 'C000102' THEN
			'滨湖建设集团'
			WHEN 'Z000686' THEN
			'诸暨越都投资'
			WHEN 'T000137' THEN
			'成兴国资'
			WHEN 'Z000687' THEN
			'中信银行泰州分行'
			WHEN 'L000229' THEN
			'联合光伏'
			WHEN 'Z001341' THEN
			'长兴农商行'
			WHEN 'F000162' THEN
			'莆田农商行'
			WHEN 'G000531' THEN
			'新兴农商行'
			WHEN 'M000069' THEN
			'民权德商村镇行'
			WHEN 'F000230' THEN
			'福清核电'
			WHEN 'S001168' THEN
			'沙迦酋长国'
			WHEN 'Y000383' THEN
			'禹州物业'
			WHEN 'K000091' THEN
			'凯京融资租赁'
			WHEN 'W000174' THEN
			'江岸国资经营'
			WHEN 'C000167' THEN
			'长安银行宝鸡分行'
			WHEN 'H000985' THEN
			'临安控股'
			WHEN 'J000729' THEN
			'金元荣泰'
			WHEN 'S001212' THEN
			'平安金融'
			WHEN 'F000074' THEN
			'府谷国有资产运营'
			WHEN 'Z000688' THEN
			'工行府谷县支行'
			WHEN 'S001169' THEN
			'康泰生物'
			WHEN 'H000802' THEN
			'太平农商行'
			WHEN 'J000712' THEN
			'泾县国资'
			WHEN 'S001264' THEN
			'尚荣医疗'
			WHEN 'A000182' THEN
			'阿尔特'
			WHEN 'N000338' THEN
			'创启科技'
			WHEN 'E000013' THEN
			'峨眉山旅游'
			WHEN 'Y000361' THEN
			'阳羡村镇行'
			WHEN 'H000840' THEN
			'荥阳农商行'
			WHEN 'F000115' THEN
			'东百集团'
			WHEN 'Z001676' THEN
			'中邮保险'
			WHEN 'T000372' THEN
			'振东建投'
			WHEN 'C000293' THEN
			'钟楼城投'
			WHEN 'N000350' THEN
			'横河模具'
			WHEN 'J000713' THEN
			'吉湖发展'
			WHEN 'N000398' THEN
			'南钢钢铁'
			WHEN 'S001266' THEN
			'锦程'
			WHEN 'Z001677' THEN
			'天铁股份'
			WHEN 'A000183' THEN
			'安溪农信社'
			WHEN 'N000213' THEN
			'南通保障房'
			WHEN 'G000655' THEN
			'广州自来水'
			WHEN 'Y000199' THEN
			'建城实业'
			WHEN 'J000730' THEN
			'滨海控股'
			WHEN 'W000295' THEN
			'武汉港发'
			WHEN 'Z001678' THEN
			'橡胶公司'
			WHEN 'F000116' THEN
			'福建政府'
			WHEN 'S000809' THEN
			'介休农商行'
			WHEN 'S000810' THEN
			'苏州旅游'
			WHEN 'S000811' THEN
			'玉舍森林'
			WHEN 'Y000384' THEN
			'中宠股份'
			WHEN 'Y000385' THEN
			'中幸生物科技'
			WHEN 'G000532' THEN
			'贵州银行盘县支行'
			WHEN 'C000168' THEN
			'迪马股份'
			WHEN 'J000269' THEN
			'即墨城开'
			WHEN 'G000632' THEN
			'国开行北京分行'
			WHEN 'S000437' THEN
			'浦发银行青岛分行'
			WHEN 'Z001019' THEN
			'中飞租融'
			WHEN 'J000841' THEN
			'久吾高科'
			WHEN 'T000325' THEN
			'凯发电气'
			WHEN 'H000885' THEN
			'华宝租赁'
			WHEN 'X000439' THEN
			'徐州粤海水务'
			WHEN 'Z001020' THEN
			'大唐能源'
			WHEN 'N000214' THEN
			'建邺高投集团'
			WHEN 'C000169' THEN
			'康达股份'
			WHEN 'T000373' THEN
			'泰山城乡建设'
			WHEN 'Z001021' THEN
			'珠海华润银行'
			WHEN 'X000497' THEN
			'西安港实业'
			WHEN 'H000841' THEN
			'兰考农商行'
			WHEN 'S001400' THEN
			'禾裕科技金融'
			WHEN 'Q000184' THEN
			'市北城发'
			WHEN 'C000429' THEN
			'金牛环境投资'
			WHEN 'X000498' THEN
			'兴业银行深圳分行'
			WHEN 'S005319' THEN
			'天地在线'
			WHEN 'S005320' THEN
			'西域旅游'
			WHEN 'S005321' THEN
			'华丰股份'
			WHEN 'Q000185' THEN
			'祁县农商行'
			WHEN 'Z001679' THEN
			'招商局融租'
			WHEN 'S001401' THEN
			'申通快递'
			WHEN 'Z001696' THEN
			'康隆达'
			WHEN 'N000403' THEN
			'健友股份'
			WHEN 'A000083' THEN
			'鞍钢集团'
			WHEN 'J000845' THEN
			'龙蟠科技'
			WHEN 'X000291' THEN
			'新疆中泰'
			WHEN 'X000292' THEN
			'迈科集团'
			WHEN 'A000082' THEN
			'安徽广电集团'
			WHEN 'S001170' THEN
			'中成融资租赁'
			WHEN 'N000215' THEN
			'宁波保税区投资'
			WHEN 'B000480' THEN
			'首都航空'
			WHEN 'D000233' THEN
			'冰山冷热'
			WHEN 'D000278' THEN
			'达美航空'
			WHEN 'N000216' THEN
			'杭州湾开发'
			WHEN 'S001213' THEN
			'凯中精密'
			WHEN 'X000421' THEN
			'西藏金融租赁'
			WHEN 'G000335' THEN
			'广东盐业'
			WHEN 'C000370' THEN
			'迪马工业'
			WHEN 'S000695' THEN
			'融通资本'
			WHEN 'S001402' THEN
			'深圳高新投'
			WHEN 'X000499' THEN
			'新苏环保'
			WHEN 'Z001022' THEN
			'中国能建'
			WHEN 'H000503' THEN
			'湖南政府'
			WHEN 'Z001680' THEN
			'农行常州新北支行'
			WHEN 'H000576' THEN
			'河北旅投集团'
			WHEN 'C000433' THEN
			'长城人寿'
			WHEN 'N000171' THEN
			'南京报业集团'
			WHEN 'D000234' THEN
			'大族激光'
			WHEN 'S001171' THEN
			'和安投资'
			WHEN 'B000251' THEN
			'北巴传媒'
			WHEN 'B000252' THEN
			'北京公交'
			WHEN 'N000217' THEN
			'南京高科'
			WHEN 'C000371' THEN
			'长兴滨湖建设'
			WHEN 'W000296' THEN
			'万载国资'
			WHEN 'W000175' THEN
			'乌鲁木齐银行喀什分行'
			WHEN 'J000761' THEN
			'宿城国资经营管理'
			WHEN 'Z001023' THEN
			'农行无锡锡山支行'
			WHEN 'S001267' THEN
			'陕西铁路'
			WHEN 'Y000386' THEN
			'嵩明农商行'
			WHEN 'F000163' THEN
			'纳川股份'
			WHEN 'N000399' THEN
			'河海建投'
			WHEN 'X000500' THEN
			'碑林城投'
			WHEN 'W000151' THEN
			'武汉控股'
			WHEN 'Y000436' THEN
			'宜春国资'
			WHEN 'B000481' THEN
			'国枫'
			WHEN 'B000482' THEN
			'中翰'
			WHEN 'G000656' THEN
			'恒益'
			WHEN 'P000113' THEN
			'普华永道深圳分所'
			WHEN 'B000483' THEN
			'金诚同达'
			WHEN 'Z001681' THEN
			'中审华'
			WHEN 'B000393' THEN
			'滨海农旅'
			WHEN 'S001214' THEN
			'亚宝投资'
			WHEN 'H000730' THEN
			'渑池农商行'
			WHEN 'H000731' THEN
			'黄石农商行'
			WHEN 'J000651' THEN
			'上栗农商行'
			WHEN 'F000132' THEN
			'福州文化旅游'
			WHEN 'C000223' THEN
			'曹妃甸港集团'
			WHEN 'J000524' THEN
			'融和农商行'
			WHEN 'S000812' THEN
			'世博发展集团'
			WHEN 'P000111' THEN
			'平安银行北京分行'
			WHEN 'Z000832' THEN
			'二七国资'
			WHEN 'H000577' THEN
			'宏泰集团'
			WHEN 'H000578' THEN
			'湖北农资'
			WHEN 'S000813' THEN
			'银鹰化纤'
			WHEN 'J000270' THEN
			'江苏吴中'
			WHEN 'B000148' THEN
			'波鸿集团'
			WHEN 'S001036' THEN
			'东方海洋'
			WHEN 'H000732' THEN
			'宏氏投资'
			WHEN 'S000579' THEN
			'市北高新'
			WHEN 'H000316' THEN
			'河池城投'
			WHEN 'G000479' THEN
			'广水城投'
			WHEN 'Z001342' THEN
			'农发行广水市支行'
			WHEN 'D000220' THEN
			'东营农商行'
			WHEN 'D000221' THEN
			'德化农信社'
			WHEN 'S000814' THEN
			'卓越世纪'
			WHEN 'Q000145' THEN
			'鼎信通讯'
			WHEN 'W000135' THEN
			'卧龙控股'
			WHEN 'J000525' THEN
			'金圆股份'
			WHEN 'G000402' THEN
			'东怀矿业'
			WHEN 'S000815' THEN
			'吴中国裕资产经营'
			WHEN 'L000245' THEN
			'芦溪城建'
			WHEN 'T000138' THEN
			'天津住宅集团'
			WHEN 'H000317' THEN
			'海城金财土地房屋投资'
			WHEN 'N000309' THEN
			'未来城经发'
			WHEN 'Q000058' THEN
			'清远交建'
			WHEN 'S001353' THEN
			'埇桥城投集团'
			WHEN 'H000410' THEN
			'华气股份'
			WHEN 'B000212' THEN
			'玉渊潭农工商'
			WHEN 'N000310' THEN
			'康居建设'
			WHEN 'Y000419' THEN
			'国丰投资控股'
			WHEN 'S000583' THEN
			'浦发银行盐城分行'
			WHEN 'J000357' THEN
			'交行福建分行'
			WHEN 'L000230' THEN
			'洛阳农商行'
			WHEN 'F000094' THEN
			'龙岩市经发建设'
			WHEN 'C000294' THEN
			'万盛集团'
			WHEN 'Z001431' THEN
			'正荣地产控股'
			WHEN 'B000281' THEN
			'电子城'
			WHEN 'W000208' THEN
			'威海城投'
			WHEN 'G000274' THEN
			'保利久联集团'
			WHEN 'Y000124' THEN
			'云煤能源'
			WHEN 'H000318' THEN
			'华域汽车'
			WHEN 'S000440' THEN
			'宝德'
			WHEN 'P000067' THEN
			'普洱交通建设'
			WHEN 'H000579' THEN
			'洪业化工'
			WHEN 'Z001161' THEN
			'湘投集团'
			WHEN 'G000403' THEN
			'林都园林工程'
			WHEN 'S000816' THEN
			'富控互动'
			WHEN 'Z000689' THEN
			'民生银行武汉分行'
			WHEN 'A000060' THEN
			'鞍山高新产投'
			WHEN 'Z000690' THEN
			'光大银行鞍山分行'
			WHEN 'Y000125' THEN
			'银泰证券'
			WHEN 'G000336' THEN
			'广西农信社'
			WHEN 'H000886' THEN
			'湖南财信管理'
			WHEN 'K000096' THEN
			'美吉特灯都'
			WHEN 'S000696' THEN
			'长峰集团'
			WHEN 'W000297' THEN
			'北大科技园'
			WHEN 'H000842' THEN
			'长垣农商行'
			WHEN 'Z001448' THEN
			'驻马店农商行'
			WHEN 'D000237' THEN
			'郸城农联社'
			WHEN 'S000697' THEN
			'上海纺织'
			WHEN 'A000153' THEN
			'歙县农商行'
			WHEN 'D000244' THEN
			'华银电力'
			WHEN 'Z001024' THEN
			'义乌农商行'
			WHEN 'L000231' THEN
			'联邦制药'
			WHEN 'G000480' THEN
			'龙门农商行'
			WHEN 'H000319' THEN
			'天易集团'
			WHEN 'H000887' THEN
			'恒力石化'
			WHEN 'B000149' THEN
			'北京华联集团'
			WHEN 'T000139' THEN
			'天津保障房建投'
			WHEN 'H000504' THEN
			'江苏华电'
			WHEN 'Z001343' THEN
			'和佳医疗'
			WHEN 'S001403' THEN
			'同德化工'
			WHEN 'Z001449' THEN
			'罗欣药业'
			WHEN 'K000085' THEN
			'坤鼎集团'
			WHEN 'N000400' THEN
			'建邺国资集团'
			WHEN 'S001404' THEN
			'新网银行'
			WHEN 'W000301' THEN
			'潍州控股'
			WHEN 'D000092' THEN
			'大连时泰'
			WHEN 'B000489' THEN
			'首创大气'
			WHEN 'G000662' THEN
			'高邮水投集团'
			WHEN 'G000337' THEN
			'甘肃路建'
			WHEN 'H000986' THEN
			'长沙会展中心'
			WHEN 'J000368' THEN
			'九台农商行'
			WHEN 'Z001682' THEN
			'周口城投'
			WHEN 'S001268' THEN
			'招商平安资管'
			WHEN 'H000843' THEN
			'沧州农商行'
			WHEN 'G000558' THEN
			'桂东农合行'
			WHEN 'P000114' THEN
			'莆田兴发'
			WHEN 'X000293' THEN
			'西部航空'
			WHEN 'H000437' THEN
			'天润包装'
			WHEN 'T000250' THEN
			'天生产业'
			WHEN 'Z001162' THEN
			'镇江文化广电'
			WHEN 'T000251' THEN
			'天津滨海资管'
			WHEN 'Y000172' THEN
			'三七科技'
			WHEN 'S000817' THEN
			'恒澄建设'
			WHEN 'S001269' THEN
			'中来股份'
			WHEN 'H000419' THEN
			'恒丰银行莱州支行'
			WHEN 'Z000988' THEN
			'工行江汉支行'
			WHEN 'S000569' THEN
			'川盐总'
			WHEN 'N000362' THEN
			'宁海交通集团'
			WHEN 'K000066' THEN
			'开封文投集团'
			WHEN 'S001215' THEN
			'中科曙光'
			WHEN 'Y000200' THEN
			'皇城相府集团'
			WHEN 'L000124' THEN
			'莱州国资'
			WHEN 'N000342' THEN
			'宁波建工'
			WHEN 'H000844' THEN
			'金湖交投'
			WHEN 'S001405' THEN
			'宝汉高速公路'
			WHEN 'S000698' THEN
			'富诚海富通'
			WHEN 'G000338' THEN
			'工银瑞信投资'
			WHEN 'J000731' THEN
			'京源环保'
			WHEN 'Q000113' THEN
			'青岛双星'
			WHEN 'C000277' THEN
			'恒屹智能'
			WHEN 'H000950' THEN
			'钱塘建投'
			WHEN 'Q000114' THEN
			'衢江农商行'
			WHEN 'H000951' THEN
			'农副物流管理'
			WHEN 'H000580' THEN
			'随州农商行'
			WHEN 'T000221' THEN
			'天保基建'
			WHEN 'S001406' THEN
			'华体科技'
			WHEN 'C000372' THEN
			'魏桥金保'
			WHEN 'W000289' THEN
			'太湖城传感信息中心'
			WHEN 'X000476' THEN
			'新安建投'
			WHEN 'G000481' THEN
			'广汽商贸'
			WHEN 'Z001025' THEN
			'中信富通'
			WHEN 'Y000201' THEN
			'宜昌房地产投发'
			WHEN 'Z001026' THEN
			'郑州地产集团'
			WHEN 'S000699' THEN
			'泉兴能源'
			WHEN 'H000987' THEN
			'弘创融资'
			WHEN 'N000218' THEN
			'宁德交投'
			WHEN 'F000117' THEN
			'富阳水务'
			WHEN 'H000845' THEN
			'湖北交投'
			WHEN 'H000846' THEN
			'汇丰前海证券'
			WHEN 'S001216' THEN
			'树业环保'
			WHEN 'B000484' THEN
			'北京保险产业园'
			WHEN 'F000164' THEN
			'龙岩农商行'
			WHEN 'N000177' THEN
			'余姚农合行'
			WHEN 'F000089' THEN
			'福特汽车金融'
			WHEN 'G000404' THEN
			'万和集团'
			WHEN 'Z001163' THEN
			'中牧实业'
			WHEN 'W000209' THEN
			'万向三农集团'
			WHEN 'S000818' THEN
			'山东铁路建投'
			WHEN 'S000819' THEN
			'振东制药'
			WHEN 'Z001164' THEN
			'招商财富'
			WHEN 'W000302' THEN
			'财通融资租赁'
			WHEN 'F000133' THEN
			'抚顺银行'
			WHEN 'Y000241' THEN
			'烟台农商行'
			WHEN 'N000255' THEN
			'宁海城建'
			WHEN 'S000441' THEN
			'南科集团'
			WHEN 'S000442' THEN
			'浑南新区管会'
			WHEN 'Z000691' THEN
			'农发行黄冈市分行'
			WHEN 'F000165' THEN
			'颍泉农商行'
			WHEN 'S001037' THEN
			'文登农商行'
			WHEN 'B000353' THEN
			'邦银租赁'
			WHEN 'C000408' THEN
			'成华旧城改造'
			WHEN 'J000652' THEN
			'双阳农商行'
			WHEN 'Z001165' THEN
			'中化工油气'
			WHEN 'H000581' THEN
			'伊川农商行'
			WHEN 'G000405' THEN
			'茅台农商行'
			WHEN 'H000400' THEN
			'恒泰长财'
			WHEN 'P000068' THEN
			'普信城建'
			WHEN 'Q000115' THEN
			'齐河城市建设'
			WHEN 'Z001166' THEN
			'工行齐河支行'
			WHEN 'Z001344' THEN
			'诸城同路人'
			WHEN 'H000733' THEN
			'华融汇通'
			WHEN 'Y000316' THEN
			'岳阳经开建投'
			WHEN 'P000115' THEN
			'平安银行广州分行'
			WHEN 'C000295' THEN
			'国兴金融租赁'
			WHEN 'G000663' THEN
			'连越律师事务所'
			WHEN 'B000490' THEN
			'渤海银行天津分行'
			WHEN 'S000820' THEN
			'天源迪科'
			WHEN 'Z001167' THEN
			'招商积余'
			WHEN 'D000174' THEN
			'大唐租赁公司'
			WHEN 'H000582' THEN
			'热联集团'
			WHEN 'N000256' THEN
			'浦口城乡建设'
			WHEN 'C000224' THEN
			'常德文化旅游'
			WHEN 'B000485' THEN
			'东方国信'
			WHEN 'L000324' THEN
			'利群股份'
			WHEN 'H000988' THEN
			'临安城投'
			WHEN 'C000430' THEN
			'慈溪交通'
			WHEN 'G000657' THEN
			'蓉江建投'
			WHEN 'S001407' THEN
			'水发'
			WHEN 'S001408' THEN
			'苏州甪直集团'
			WHEN 'G000658' THEN
			'乌当经开建投'
			WHEN 'C000170' THEN
			'康达环保'
			WHEN 'Z001450' THEN
			'乐清联合村镇行'
			WHEN 'Z001683' THEN
			'中铁光大(上海)'
			WHEN 'M000053' THEN
			'闽侯农信社'
			WHEN 'W000134' THEN
			'临港国资'
			WHEN 'S000443' THEN
			'盛屯矿业'
			WHEN 'Z001493' THEN
			'今飞凯达'
			WHEN 'F000206' THEN
			'富源今飞房地产'
			WHEN 'Z000692' THEN
			'中国一汽'
			WHEN 'H000505' THEN
			'黑龙江政府'
			WHEN 'H000734' THEN
			'杭州高新融资'
			WHEN 'F000166' THEN
			'华兴城投'
			WHEN 'Y000437' THEN
			'亿达中国'
			WHEN 'G000482' THEN
			'赣州农商行'
			WHEN 'J000271' THEN
			'江苏银行大丰支行'
			WHEN 'G000233' THEN
			'格尔木投控'
			WHEN 'J000732' THEN
			'吉致汽车金融'
			WHEN 'A000194' THEN
			'涡阳农商行'
			WHEN 'Z001684' THEN
			'龙城建投'
			WHEN 'W000298' THEN
			'潍坊建投'
			WHEN 'D000279' THEN
			'德清文旅'
			WHEN 'D000280' THEN
			'德清建发'
			WHEN 'S001409' THEN
			'鑫诚恒业'
			WHEN 'S001410' THEN
			'浦东房地产'
			WHEN 'F000118' THEN
			'漳州城投'
			WHEN 'J000379' THEN
			'晋城投资'
			WHEN 'G000559' THEN
			'红腾投资'
			WHEN 'Z001594' THEN
			'招行广州分行'
			WHEN 'N000123' THEN
			'东达蒙古王集团'
			WHEN 'Z001494' THEN
			'长城科技'
			WHEN 'J000762' THEN
			'富祥股份'
			WHEN 'H000438' THEN
			'海盐农商行'
			WHEN 'Z001027' THEN
			'成泰农商行'
			WHEN 'S000700' THEN
			'德胜东弇'
			WHEN 'T000222' THEN
			'null'
			WHEN 'S001270' THEN
			'国金融资租赁'
			WHEN 'Y000154' THEN
			'余姚城投'
			WHEN 'S001336' THEN
			'大发地产'
			WHEN 'Z001685' THEN
			'中国医药'
			WHEN 'G000659' THEN
			'贵阳控股'
			WHEN 'X000501' THEN
			'金投资管'
			WHEN 'N000401' THEN
			'浦口自来水'
			WHEN 'J000801' THEN
			'集美控股'
			WHEN 'Z001574' THEN
			'中梁控股'
			WHEN 'A000195' THEN
			'砀山农商行'
			WHEN 'N000219' THEN
			'通商银行'
			WHEN 'Y000242' THEN
			'云南农垦集团'
			WHEN 'X000294' THEN
			'新田公司'
			WHEN 'J000526' THEN
			'保千里'
			WHEN 'D000245' THEN
			'东台城建'
			WHEN 'D000146' THEN
			'万达商业'
			WHEN 'Y000362' THEN
			'沂源宏鼎'
			WHEN 'Z001459' THEN
			'中铁建设'
			WHEN 'J000842' THEN
			'天津晋能融资'
			WHEN 'S001217' THEN
			'中华发电'
			WHEN 'Z001028' THEN
			'经开投发公司'
			WHEN 'Y000387' THEN
			'袁州国资'
			WHEN 'N000363' THEN
			'内江农商行'
			WHEN 'W000176' THEN
			'万家共赢'
			WHEN 'Y000243' THEN
			'盐城建投集团'
			WHEN 'L000183' THEN
			'蓝盾股份'
			WHEN 'N000257' THEN
			'南科创投'
			WHEN 'S000821' THEN
			'泰阳实业'
			WHEN 'B000282' THEN
			'翠微股份'
			WHEN 'L000184' THEN
			'钟山城投'
			WHEN 'G000406' THEN
			'国贸地产'
			WHEN 'D000175' THEN
			'铁峰煤业'
			WHEN 'Z001168' THEN
			'青田农商行'
			WHEN 'S000822' THEN
			'乡宁农商行'
			WHEN 'G000587' THEN
			'贵广网络'
			WHEN 'G000588' THEN
			'西江投资'
			WHEN 'J000733' THEN
			'江油农信社'
			WHEN 'Z001451' THEN
			'中再产险'
			WHEN 'W000270' THEN
			'瓯海经济投'
			WHEN 'N000220' THEN
			'南昌轨道交通集团'
			WHEN 'W000299' THEN
			'五华公共事业工程'
			WHEN 'Z001029' THEN
			'工行江西分行'
			WHEN 'D000147' THEN
			'东港城市建投'
			WHEN 'S000701' THEN
			'三菱银行'
			WHEN 'B000486' THEN
			'中伦(深圳)'
			WHEN 'D000148' THEN
			'东莞农商行'
			WHEN 'X000502' THEN
			'小米集团'
			WHEN 'S001038' THEN
			'襄垣农商行'
			WHEN 'Z001169' THEN
			'国药国际'
			WHEN 'S000823' THEN
			'汇丰石化'
			WHEN 'R000048' THEN
			'新城开发'
			WHEN 'F000134' THEN
			'抚顺特钢'
			WHEN 'B000283' THEN
			'国华置业'
			WHEN 'C000225' THEN
			'财鑫融资担保'
			WHEN 'H000320' THEN
			'海西州国资'
			WHEN 'J000272' THEN
			'交行宁波分行'
			WHEN 'S001039' THEN
			'鄄城农商行'
			WHEN 'W000210' THEN
			'武汉公积金'
			WHEN 'Z001170' THEN
			'工行阿克苏分行'
			WHEN 'S000824' THEN
			'苏州农业发展集团'
			WHEN 'B000284' THEN
			'北大资源'
			WHEN 'J000527' THEN
			'济南农商行'
			WHEN 'Z000693' THEN
			'中铝国际'
			WHEN 'S001040' THEN
			'山东路桥'
			WHEN 'S001041' THEN
			'药明康德'
			WHEN 'G000483' THEN
			'金桂浆纸'
			WHEN 'Z001345' THEN
			'资兴成诚投资'
			WHEN 'C000296' THEN
			'兴农担保集团'
			WHEN 'J000653' THEN
			'润丰村镇行'
			WHEN 'Z001346' THEN
			'上虞富民村镇银行'
			WHEN 'Z001171' THEN
			'郡原地产'
			WHEN 'H000583' THEN
			'银丰棉花'
			WHEN 'H000584' THEN
			'杭报集团'
			WHEN 'S000825' THEN
			'山东重工集团'
			WHEN 'B000285' THEN
			'鸿坤伟业'
			WHEN 'B000286' THEN
			'北大青鸟环宇'
			WHEN 'H000585' THEN
			'下城区城市建投'
			WHEN 'H000586' THEN
			'杭州银行环北支行'
			WHEN 'D000176' THEN
			'德意志银行'
			WHEN 'A000201' THEN
			'黟县农商行'
			WHEN 'K000044' THEN
			'昆药集团'
			WHEN 'S001271' THEN
			'平陆农商行'
			WHEN 'T000223' THEN
			'天安数码城'
			WHEN 'J000429' THEN
			'金华城建'
			WHEN 'S000702' THEN
			'国利货币'
			WHEN 'M000070' THEN
			'梅州客村镇行'
			WHEN 'Z001452' THEN
			'南浔经开发'
			WHEN 'Z001453' THEN
			'中民筑友科投'
			WHEN 'S006681' THEN
			'工银安盛人寿'
			WHEN 'J000273' THEN
			'金红叶纸业'
			WHEN 'S001272' THEN
			'拓邦股份'
			WHEN 'H000321' THEN
			'华鑫证券'
			WHEN 'T000140' THEN
			'天一证券'
			WHEN 'X000153' THEN
			'新华信托'
			WHEN 'B000150' THEN
			'北方证券'
			WHEN 'X000154' THEN
			'信泰证券'
			WHEN 'M000020' THEN
			'闽发证券'
			WHEN 'J000763' THEN
			'雅仕集团'
			WHEN 'A000061' THEN
			'爱建证券'
			WHEN 'X000440' THEN
			'咸阳金控集团'
			WHEN 'Z001030' THEN
			'中煤平朔集团'
			WHEN 'Q000186' THEN
			'青岛机场集团'
			WHEN 'D000281' THEN
			'东方时尚'
			WHEN 'L000325' THEN
			'鲁泰'
			WHEN 'G000660' THEN
			'长青集团'
			WHEN 'J000843' THEN
			'晶科科技'
			WHEN 'Z001031' THEN
			'珠海农商行'
			WHEN 'S001042' THEN
			'普陀城投'
			WHEN 'B000354' THEN
			'首钢地产'
			WHEN 'S001411' THEN
			'奇信股份'
			WHEN 'L000326' THEN
			'兰创投资'
			WHEN 'Z001686' THEN
			'浙越资管'
			WHEN 'D000222' THEN
			'东乡城投'
			WHEN 'W000177' THEN
			'渤海水产'
			WHEN 'Q000187' THEN
			'泉港水利水务'
			WHEN 'Y000202' THEN
			'义乌水务'
			WHEN 'G000339' THEN
			'南海农商行'
			WHEN 'Y000438' THEN
			'null'
			WHEN 'D000093' THEN
			'大通证券'
			WHEN 'Z000694' THEN
			'大唐财务'
			WHEN 'D000094' THEN
			'大鹏证券'
			WHEN 'Y000126' THEN
			'英大信托'
			WHEN 'P000103' THEN
			'思茅国拓'
			WHEN 'X000441' THEN
			'息烽城投'
			WHEN 'J000764' THEN
			'江铜国际商业保理'
			WHEN 'S001218' THEN
			'苏银金融'
			WHEN 'Z001687' THEN
			'中船应急'
			WHEN 'Z001688' THEN
			'华统股份'
			WHEN 'H000989' THEN
			'华统集团'
			WHEN 'H000506' THEN
			'好民居'
			WHEN 'A000101' THEN
			'奥园集团'
			WHEN 'H000990' THEN
			'湖南轨道'
			WHEN 'T000335' THEN
			'桐乡工投集'
			WHEN 'B000487' THEN
			'宝湾物流'
			WHEN 'H000587' THEN
			'杭州公积金'
			WHEN 'H000588' THEN
			'湖州公积金'
			WHEN 'Z001172' THEN
			'汇盛投资'
			WHEN 'J000765' THEN
			'绝味食品'
			WHEN 'G000589' THEN
			'视源股份'
			WHEN 'N000221' THEN
			'南通汽运集团'
			WHEN 'S001412' THEN
			'君悦'
			WHEN 'L000286' THEN
			'兰考城投'
			WHEN 'D000246' THEN
			'大华银行'
			WHEN 'S006682' THEN
			'洞头城发'
			WHEN 'C000431' THEN
			'昆承湖开发'
			WHEN 'S000703' THEN
			'浦发银行漳州分行'
			WHEN 'Z001689' THEN
			'中兴财光华'
			WHEN 'Y000363' THEN
			'宜昌交旅'
			WHEN 'C000353' THEN
			'财鑫金控集团'
			WHEN 'Z001032' THEN
			'永嘉农村行'
			WHEN 'C000171' THEN
			'长治银行'
			WHEN 'S000704' THEN
			'宁阳农商行'
			WHEN 'Z001173' THEN
			'中国电建市政集团'
			WHEN 'H000589' THEN
			'淮安经开'
			WHEN 'T000252' THEN
			'唐山金控集团'
			WHEN 'Z001174' THEN
			'招行深圳深纺大厦支行'
			WHEN 'J000528' THEN
			'交行上海分行'
			WHEN 'Z001175' THEN
			'中电投'
			WHEN 'J000529' THEN
			'龙虎山旅游'
			WHEN 'Y000388' THEN
			'永赢租赁'
			WHEN 'Y000244' THEN
			'盐都国投'
			WHEN 'Z001176' THEN
			'招行苏州路支行'
			WHEN 'Z001033' THEN
			'碧桂园物业'
			WHEN 'B000253' THEN
			'碧桂园'
			WHEN 'G000661' THEN
			'岑溪农商行'
			WHEN 'N000222' THEN
			'大榭开发'
			WHEN 'L000327' THEN
			'丽丰控股'
			WHEN 'S001413' THEN
			'春秋电子'
			WHEN 'S001414' THEN
			'聚飞光电'
			WHEN 'J000766' THEN
			'济南城建'
			WHEN 'Q000154' THEN
			'清镇城投'
			WHEN 'D000149' THEN
			'当涂城投'
			WHEN 'B000414' THEN
			'宝马金融'
			WHEN 'Y000439' THEN
			'扬州建工控股'
			WHEN 'N000402' THEN
			'江北城建'
			WHEN 'N000351' THEN
			'高淳建发集团'
			WHEN 'H000590' THEN
			'湖北科技投资集团'
			WHEN 'Z001177' THEN
			'交行湖北分行'
			WHEN 'Z001178' THEN
			'招行光谷支行'
			WHEN 'Z001179' THEN
			'国电投江苏电力'
			WHEN 'S000826' THEN
			'金螳螂企业'
			WHEN 'Q000116' THEN
			'启东交通投资'
			WHEN 'S000827' THEN
			'山东财金集团'
			WHEN 'H000591' THEN
			'钱江世纪城开发'
			WHEN 'B000287' THEN
			'石榴集团'
			WHEN 'J000530' THEN
			'华西股份'
			WHEN 'J000531' THEN
			'京东方'
			WHEN 'T000253' THEN
			'太平人寿'
			WHEN 'J000274' THEN
			'江海证券'
			WHEN 'T000141' THEN
			'天津水务投资'
			WHEN 'X000295' THEN
			'星展银行上海分行'
			WHEN 'S000444' THEN
			'晋控电力'
			WHEN 'Y000127' THEN
			'亚洲证券'
			WHEN 'T000142' THEN
			'泰阳证券'
			WHEN 'B000151' THEN
			'北京证券'
			WHEN 'Y000317' THEN
			'盐城交控'
			WHEN 'S000828' THEN
			'TCL华星'
			WHEN 'S000445' THEN
			'三峡财务'
			WHEN 'S000446' THEN
			'远东证券'
			WHEN 'H000592' THEN
			'景峰医药'
			WHEN 'Z001347' THEN
			'火炬建发'
			WHEN 'F000167' THEN
			'铭城建投'
			WHEN 'N000236' THEN
			'中电物流'
			WHEN 'H000593' THEN
			'红楼集团'
			WHEN 'B000288' THEN
			'北京水投'
			WHEN 'S006683' THEN
			'博迁新材'
			WHEN 'S006684' THEN
			'朗特智能'
			WHEN 'B000289' THEN
			'暴风集团'
			WHEN 'C000226' THEN
			'长江租赁'
			WHEN 'J000532' THEN
			'北辰投资'
			WHEN 'C000227' THEN
			'蜀都川菜'
			WHEN 'S000829' THEN
			'石门城投'
			WHEN 'W000211' THEN
			'硕放经发'
			WHEN 'X000296' THEN
			'湘乡城建投开'
			WHEN 'G000234' THEN
			'白云机场'
			WHEN 'C000402' THEN
			'梁平建设开发'
			WHEN 'H000322' THEN
			'华金证券'
			WHEN 'G000590' THEN
			'长顺国有资本营运'
			WHEN 'C000192' THEN
			'苍南国投'
			WHEN 'F000075' THEN
			'丰城城投'
			WHEN 'S000705' THEN
			'盛和资源'
			WHEN 'J000654' THEN
			'众安集团'
			WHEN 'H000991' THEN
			'井陉农商行'
			WHEN 'B000488' THEN
			'波音'
			WHEN 'S001331' THEN
			'索通发展'
			WHEN 'B000152' THEN
			'滨州开投'
			WHEN 'H000992' THEN
			'徽银租赁'
			WHEN 'B000430' THEN
			'北方国际'
			WHEN 'S001043' THEN
			'遂宁银行'
			WHEN 'S001044' THEN
			'金乡农商行'
			WHEN 'J000655' THEN
			'嘉峪关农商行'
			WHEN 'J000430' THEN
			'荆门产业开发'
			WHEN 'Y000318' THEN
			'远洋集团'
			WHEN 'S001415' THEN
			'浦东软件园'
			WHEN 'R000072' THEN
			'仁隆投资开发'
			WHEN 'D000282' THEN
			'东航产投'
			WHEN 'Z001454' THEN
			'招商租赁'
			WHEN 'H000507' THEN
			'华夏幸福'
			WHEN 'S001416' THEN
			'中集产城'
			WHEN 'Z000695' THEN
			'中国科技证券'
			WHEN 'R000021' THEN
			'国民信托'
			WHEN 'N000124' THEN
			'南方证券'
			WHEN 'T000143' THEN
			'天同证券'
			WHEN 'Y000128' THEN
			'云南信托'
			WHEN 'H000323' THEN
			'恒信证券'
			WHEN 'J000276' THEN
			'金信证券'
			WHEN 'J000275' THEN
			'巨田投资'
			WHEN 'S000447' THEN
			'苏州银行'
			WHEN 'Z000696' THEN
			'中航财务'
			WHEN 'Z000697' THEN
			'中信万通'
			WHEN 'N000125' THEN
			'宁波经开区控股'
			WHEN 'G000235' THEN
			'贵旅集团'
			WHEN 'S000448' THEN
			'石家庄国控'
			WHEN 'J000277' THEN
			'健桥证券'
			WHEN 'K000025' THEN
			'开源证券'
			WHEN 'H000939' THEN
			'华夏航空'
			WHEN 'J000767' THEN
			'金乡城建'
			WHEN 'B000254' THEN
			'华业资本'
			WHEN 'A000102' THEN
			'滁宁高速'
			WHEN 'J000656' THEN
			'金龙控股'
			WHEN 'H000847' THEN
			'崇阳农商行'
			WHEN 'Z001034' THEN
			'农发行老河口市支行'
			WHEN 'L000155' THEN
			'老河口建投'
			WHEN 'G000340' THEN
			'花溪农商行'
			WHEN 'G000591' THEN
			'贵定农商行'
			WHEN 'Z001690' THEN
			'中交城投'
			WHEN 'H000993' THEN
			'衡水建投'
			WHEN 'S006164' THEN
			'null'
			WHEN 'X000239' THEN
			'锡林浩特给排水公司'
			WHEN 'J000431' THEN
			'北门旅游'
			WHEN 'G000341' THEN
			'开盛建设'
			WHEN 'J000734' THEN
			'建德资投'
			WHEN 'J000432' THEN
			'瀛洲集团'
			WHEN 'A000103' THEN
			'路网集团'
			WHEN 'H000508' THEN
			'海安水务'
			WHEN 'S000706' THEN
			'中鼎竹业'
			WHEN 'H000509' THEN
			'华兴建设'
			WHEN 'A000104' THEN
			'华安水务'
			WHEN 'S001417' THEN
			'山西文旅'
			WHEN 'S001045' THEN
			'青州农商行'
			WHEN 'S006685' THEN
			'拱墅投发'
			WHEN 'J000735' THEN
			'金海投资集团'
			WHEN 'H000848' THEN
			'南浔交投'
			WHEN 'X000259' THEN
			'厦门市政集团'
			WHEN 'S000449' THEN
			'同洲电子'
			WHEN 'Z001495' THEN
			'太阳能'
			WHEN 'X000442' THEN
			'伊力特'
			WHEN 'J000433' THEN
			'际华集团'
			WHEN 'R000038' THEN
			'荣安地产'
			WHEN 'D000150' THEN
			'大唐河北发电'
			WHEN 'S001273' THEN
			'首汽租车'
			WHEN 'M000036' THEN
			'木林森'
			WHEN 'L000156' THEN
			'鲁西集团'
			WHEN 'H000994' THEN
			'纵横通信'
			WHEN 'H000888' THEN
			'梅山城投'
			WHEN 'S000707' THEN
			'浦发银行丽水支行'
			WHEN 'L000157' THEN
			'丽水文旅投'
			WHEN 'F000231' THEN
			'南海金融投资'
			WHEN 'D000283' THEN
			'大新金融'
			WHEN 'Z001035' THEN
			'遵义高新产业园'
			WHEN 'W000178' THEN
			'安阳山产业'
			WHEN 'S000708' THEN
			'至纯科技'
			WHEN 'S001219' THEN
			'四川资管'
			WHEN 'Z001430' THEN
			'舟山旅游'
			WHEN 'S001418' THEN
			'人才安居'
			WHEN 'L000272' THEN
			'立根租赁(上海)'
			WHEN 'S006171' THEN
			'城发基金'
			WHEN 'S000830' THEN
			'苍溪农商行'
			WHEN 'Z001180' THEN
			'枣阳城建'
			WHEN 'H000594' THEN
			'湖北银行襄阳分行'
			WHEN 'H000595' THEN
			'湖南机场'
			WHEN 'Z001181' THEN
			'中信银行萧山支行'
			WHEN 'X000297' THEN
			'兴源环境'
			WHEN 'H000596' THEN
			'合生创展'
			WHEN 'D000177' THEN
			'金玺铜业'
			WHEN 'H000597' THEN
			'余杭金融'
			WHEN 'T000336' THEN
			'台州国资运营集团'
			WHEN 'S001419' THEN
			'浦东科创'
			WHEN 'M000071' THEN
			'孟州投资'
			WHEN 'S001420' THEN
			'山东铁路基金'
			WHEN 'W000300' THEN
			'潍坊文投'
			WHEN 'Z001691' THEN
			'遵义和投'
			WHEN 'S001421' THEN
			'相城国资'
			WHEN 'T000374' THEN
			'天台国资'
			WHEN 'Z001036' THEN
			'中葡股份'
			WHEN 'S001220' THEN
			'襄汾农商行'
			WHEN 'S000709' THEN
			'中陕核'
			WHEN 'S000710' THEN
			'山投集团'
			WHEN 'L000158' THEN
			'龙门旅游'
			WHEN 'G000342' THEN
			'平凉文旅'
			WHEN 'J000434' THEN
			'长江拆船'
			WHEN 'C000172' THEN
			'小康股份'
			WHEN 'X000240' THEN
			'曲文控'
			WHEN 'L000273' THEN
			'null'
			WHEN 'S000831' THEN
			'苏州北部新城'
			WHEN 'Y000245' THEN
			'云南云内动力'
			WHEN 'F000135' THEN
			'福汽集团'
			WHEN 'S000832' THEN
			'渤海油脂'
			WHEN 'Z001182' THEN
			'浙商银行泰州分行'
			WHEN 'Y000415' THEN
			'韵达股份'
			WHEN 'Z001183' THEN
			'中城建九局'
			WHEN 'B000290' THEN
			'迪信通'
			WHEN 'H000598' THEN
			'华泰汽车'
			WHEN 'Y000246' THEN
			'越秀交通基建'
			WHEN 'H000436' THEN
			'西保集团'
			WHEN 'S005322' THEN
			'希慎兴业'
			WHEN 'X000298' THEN
			'贾汪城市建设'
			WHEN 'Z001184' THEN
			'建行贾汪支行'
			WHEN 'M000042' THEN
			'奔驰金融'
			WHEN 'Z001185' THEN
			'中信银行杭州分行'
			WHEN 'Y000218' THEN
			'华阳股份'
			WHEN 'Z001037' THEN
			'中航高科'
			WHEN 'Z001496' THEN
			'中建科工'
			WHEN 'Z001038' THEN
			'路桥农商行'
			WHEN 'S001046' THEN
			'天泰实业'
			WHEN 'X000241' THEN
			'象山农信联社'
			WHEN 'B000356' THEN
			'北京电控'
			WHEN 'B000355' THEN
			'长安投资'
			WHEN 'C000432' THEN
			'常州滨江投资集团'
			WHEN 'Z001348' THEN
			'华融国际'
			WHEN 'H000735' THEN
			'华昌达'
			WHEN 'Z001039' THEN
			'洲际油气'
			WHEN 'J000435' THEN
			'江苏银宝'
			WHEN 'L000159' THEN
			'龙源电力'
			WHEN 'Z001692' THEN
			'铁四院'
			WHEN 'S001221' THEN
			'济阳农商行'
			WHEN 'S001222' THEN
			'临邑农商行'
			WHEN 'J000533' THEN
			'江南水务'
			WHEN 'S000833' THEN
			'宏华石油设备'
			WHEN 'B000291' THEN
			'高能环境'
			WHEN 'D000161' THEN
			'九龙高新创业服务'
			WHEN 'C000193' THEN
			'常熟污水处理' ELSE short_name
	END
	);

-- sql4
UPDATE qb_news_public_opinion
SET short_name = (
	CASE
			issuer_code
			WHEN 'Y000247' THEN
			'延安旅游集团'
			WHEN 'T000254' THEN
			'天地科技'
			WHEN 'Z001186' THEN
			'新芦淞集团'
			WHEN 'S000450' THEN
			'科瑞'
			WHEN 'B000292' THEN
			'宝应城建'
			WHEN 'W000212' THEN
			'乌兰察布国融投资'
			WHEN 'H000599' THEN
			'哈尔滨农商行'
			WHEN 'Y000248' THEN
			'永兴银都投发集团'
			WHEN 'J000278' THEN
			'江苏沿海开发集团'
			WHEN 'S001047' THEN
			'璞泰来'
			WHEN 'G000484' THEN
			'柳药股份'
			WHEN 'Z001349' THEN
			'淄博博山公有'
			WHEN 'S001048' THEN
			'灵石农商行'
			WHEN 'A000154' THEN
			'安庆农商行'
			WHEN 'N000258' THEN
			'伊品生物'
			WHEN 'X000299' THEN
			'西部担保'
			WHEN 'F000136' THEN
			'福州高新'
			WHEN 'S000834' THEN
			'侯马农商行'
			WHEN 'S000835' THEN
			'浦发银行贵阳分行'
			WHEN 'B000153' THEN
			'华远集团'
			WHEN 'G000407' THEN
			'共青财管'
			WHEN 'B000293' THEN
			'北票建投'
			WHEN 'S000836' THEN
			'三明交通建发'
			WHEN 'Z001187' THEN
			'建行瑞昌支行'
			WHEN 'J000534' THEN
			'兖州惠民城建投资'
			WHEN 'S000837' THEN
			'三盛宏业'
			WHEN 'D000178' THEN
			'东港集团'
			WHEN 'L000185' THEN
			'隆鑫集团'
			WHEN 'P000069' THEN
			'盘锦水务'
			WHEN 'Z001188' THEN
			'农发行随州市分行'
			WHEN 'S000838' THEN
			'随州高新技术'
			WHEN 'Z000698' THEN
			'镇江新区城投'
			WHEN 'H000736' THEN
			'合肥产投集团'
			WHEN 'C000297' THEN
			'中科控股'
			WHEN 'Y000319' THEN
			'赛尔达尼龙'
			WHEN 'M000063' THEN
			'美尚生态'
			WHEN 'H000600' THEN
			'湖北银行大冶新冶支行'
			WHEN 'X000300' THEN
			'特房集团'
			WHEN 'P000070' THEN
			'平安不动产'
			WHEN 'S000839' THEN
			'新金山工业'
			WHEN 'C000228' THEN
			'星城投资'
			WHEN 'J000535' THEN
			'滨江建投'
			WHEN 'S000840' THEN
			'瑞康医药'
			WHEN 'Q000173' THEN
			'西海岸旅游投资集团'
			WHEN 'S000451' THEN
			'中融新大'
			WHEN 'J000279' THEN
			'中南集团'
			WHEN 'F000137' THEN
			'奉化交投'
			WHEN 'Y000249' THEN
			'延边农商行'
			WHEN 'H000601' THEN
			'和田玉鑫'
			WHEN 'G000592' THEN
			'迪森股份'
			WHEN 'B000255' THEN
			'北京利尔'
			WHEN 'D000151' THEN
			'东华能源'
			WHEN 'Z001040' THEN
			'中交地产'
			WHEN 'S001049' THEN
			'欧菲控股'
			WHEN 'N000364' THEN
			'高淳文旅'
			WHEN 'Z001497' THEN
			'溇澧城建'
			WHEN 'S001223' THEN
			'世纪海翔'
			WHEN 'S001050' THEN
			'安丘农商行'
			WHEN 'H000849' THEN
			'衡阳发展'
			WHEN 'H000850' THEN
			'徽商银行马鞍山当涂支行'
			WHEN 'A000062' THEN
			'国祯集团'
			WHEN 'C000373' THEN
			'岱勒新材'
			WHEN 'Z001041' THEN
			'东阳农商行'
			WHEN 'Z001042' THEN
			'诸暨农商行'
			WHEN 'S001224' THEN
			'平阴农商行'
			WHEN 'W000103' THEN
			'武汉农商行江夏支行'
			WHEN 'W000102' THEN
			'江夏城投'
			WHEN 'J000280' THEN
			'华兴投资'
			WHEN 'Z000699' THEN
			'建行锦州天桥支行'
			WHEN 'F000168' THEN
			'三木集团'
			WHEN 'H000889' THEN
			'白马湖投资'
			WHEN 'S000711' THEN
			'五台农商行'
			WHEN 'N000126' THEN
			'晟晏集团'
			WHEN 'L000287' THEN
			'兰陵国资'
			WHEN 'Y000203' THEN
			'金中公司'
			WHEN 'W000179' THEN
			'物美控股'
			WHEN 'X000242' THEN
			'广弘公司'
			WHEN 'S001274' THEN
			'辉玥保理'
			WHEN 'C000354' THEN
			'天府新区投资集团'
			WHEN 'S000712' THEN
			'宝钢气体'
			WHEN 'T000237' THEN
			'桐城建投'
			WHEN 'S001275' THEN
			'山东海洋文化'
			WHEN 'Z001092' THEN
			'招行合肥分行'
			WHEN 'G000593' THEN
			'康县农商行'
			WHEN 'T000224' THEN
			'融创房地产'
			WHEN 'H000851' THEN
			'原阳农商行'
			WHEN 'S001225' THEN
			'宋都股份'
			WHEN 'P000097' THEN
			'濮阳农商行'
			WHEN 'S001226' THEN
			'睢县投资'
			WHEN 'G000343' THEN
			'粤电财务'
			WHEN 'S006170' THEN
			'龙岩大厦'
			WHEN 'K000047' THEN
			'昆明发展投资集团'
			WHEN 'C000189' THEN
			'云厦实业'
			WHEN 'D000160' THEN
			'岷江水务集团'
			WHEN 'C000190' THEN
			'铸康实业'
			WHEN 'C000191' THEN
			'茅山资产经营'
			WHEN 'Z001189' THEN
			'民生银行上海自贸分行'
			WHEN 'S000841' THEN
			'三湘印象'
			WHEN 'S000751' THEN
			'海越航运'
			WHEN 'H000540' THEN
			'常胜建设'
			WHEN 'T000255' THEN
			'临港港务'
			WHEN 'J000536' THEN
			'金诚信'
			WHEN 'S001422' THEN
			'华大基因'
			WHEN 'W000213' THEN
			'温州港城'
			WHEN 'S000842' THEN
			'宝城旅游'
			WHEN 'S000843' THEN
			'齐成石化'
			WHEN 'R000049' THEN
			'融科智地'
			WHEN 'A000118' THEN
			'安顺城投'
			WHEN 'B000294' THEN
			'北控水务'
			WHEN 'J000537' THEN
			'金海智造'
			WHEN 'J000538' THEN
			'盐城港建设'
			WHEN 'S000844' THEN
			'华鑫股份'
			WHEN 'N000259' THEN
			'白下国资'
			WHEN 'H000602' THEN
			'湖北银行当阳支行'
			WHEN 'G000594' THEN
			'工银投资'
			WHEN 'C000229' THEN
			'璧山城投'
			WHEN 'S005323' THEN
			'天正电气'
			WHEN 'S005324' THEN
			'亿华通'
			WHEN 'S005325' THEN
			'敏芯股份'
			WHEN 'G000283' THEN
			'冠城大通'
			WHEN 'B000415' THEN
			'百年人寿'
			WHEN 'Z001498' THEN
			'振石控股集团'
			WHEN 'D000152' THEN
			'东方汇智资管'
			WHEN 'S000845' THEN
			'浦发银行泰州分行'
			WHEN 'H000603' THEN
			'众品食品'
			WHEN 'C000230' THEN
			'长安资管'
			WHEN 'J000539' THEN
			'濂溪城投'
			WHEN 'S001276' THEN
			'中装建设'
			WHEN 'J000768' THEN
			'井冈山国资'
			WHEN 'Z001043' THEN
			'临海农商行'
			WHEN 'W000180' THEN
			'潍坊农商行'
			WHEN 'Z001044' THEN
			'永康农商行'
			WHEN 'N000381' THEN
			'宁德时代'
			WHEN 'J000436' THEN
			'智慧农业'
			WHEN 'Y000320' THEN
			'银河电子'
			WHEN 'N000311' THEN
			'空港枢纽投资'
			WHEN 'H000852' THEN
			'南黄海建'
			WHEN 'J000736' THEN
			'吉林投资'
			WHEN 'K000073' THEN
			'呈贡区联社'
			WHEN 'Z001045' THEN
			'安吉农商行'
			WHEN 'J000437' THEN
			'晋城银行'
			WHEN 'S000713' THEN
			'三门农商行'
			WHEN 'J000540' THEN
			'建信人寿'
			WHEN 'W000214' THEN
			'五矿地产'
			WHEN 'Y000129' THEN
			'雅戈尔'
			WHEN 'J000541' THEN
			'北固产业'
			WHEN 'Z000700' THEN
			'株洲国投集团'
			WHEN 'R000022' THEN
			'如皋经贸'
			WHEN 'S001051' THEN
			'首誉光控'
			WHEN 'D000238' THEN
			'德阳农商行'
			WHEN 'Y000250' THEN
			'一级汪看BOND'
			WHEN 'G000408' THEN
			'刚泰控股'
			WHEN 'J000353' THEN
			'靖煤集团'
			WHEN 'G000409' THEN
			'贵州大兴'
			WHEN 'Y000130' THEN
			'伊宁国资'
			WHEN 'H000952' THEN
			'华电金泰'
			WHEN 'Q000059' THEN
			'迁安城建投'
			WHEN 'G000485' THEN
			'文化长城'
			WHEN 'D000209' THEN
			'东台国资'
			WHEN 'G000537' THEN
			'惠水农商行'
			WHEN 'S001052' THEN
			'深圳益田集团'
			WHEN 'E000018' THEN
			'汇源停车场'
			WHEN 'J000418' THEN
			'联峰实业'
			WHEN 'S001173' THEN
			'临朐农商行'
			WHEN 'S001337' THEN
			'苏宁消费金融'
			WHEN 'S000609' THEN
			'乡宁焦煤集团'
			WHEN 'J000714' THEN
			'赣榆农商行'
			WHEN 'S000846' THEN
			'威海农商行'
			WHEN 'S000847' THEN
			'郓城农商行'
			WHEN 'H000604' THEN
			'华纺股份'
			WHEN 'Z001190' THEN
			'中盐安徽红四方'
			WHEN 'Y000251' THEN
			'烨辉(中国)'
			WHEN 'J000340' THEN
			'交运集团'
			WHEN 'T000180' THEN
			'华勘集团'
			WHEN 'Z001191' THEN
			'株洲教育投资'
			WHEN 'Y000173' THEN
			'永嘉投资'
			WHEN 'N000127' THEN
			'宝塔石化'
			WHEN 'Z001499' THEN
			'大丰实业'
			WHEN 'Q000155' THEN
			'启明星辰'
			WHEN 'H000510' THEN
			'清能集团'
			WHEN 'J000281' THEN
			'如皋沿江开发'
			WHEN 'P000033' THEN
			'宏财投资集团'
			WHEN 'D000247' THEN
			'东方创业'
			WHEN 'J000657' THEN
			'金洲慈航'
			WHEN 'Z001350' THEN
			'遂昌富民村镇银行'
			WHEN 'Z000701' THEN
			'浙商银行南通分行'
			WHEN 'T000286' THEN
			'滨江新城'
			WHEN 'B000154' THEN
			'金融街中心'
			WHEN 'B000416' THEN
			'泛华体育'
			WHEN 'Z000833' THEN
			'天津外经集团'
			WHEN 'S001277' THEN
			'比亚迪融资租赁'
			WHEN 'F000194' THEN
			'天马科技'
			WHEN 'X000243' THEN
			'厦门政府'
			WHEN 'Y000204' THEN
			'永安期货'
			WHEN 'C000173' THEN
			'三峡平湖'
			WHEN 'T000337' THEN
			'津融资管'
			WHEN 'S001278' THEN
			'成南公司'
			WHEN 'J000769' THEN
			'洪泽经开投资'
			WHEN 'F000207' THEN
			'永荣控股'
			WHEN 'C000298' THEN
			'融禾现代'
			WHEN 'S000714' THEN
			'龙光控股'
			WHEN 'J000658' THEN
			'金湖农商行'
			WHEN 'H000737' THEN
			'赤壁农商银行'
			WHEN 'S000715' THEN
			'明珠集团'
			WHEN 'H000738' THEN
			'湖北高新产投'
			WHEN 'S001053' THEN
			'东山精密'
			WHEN 'S001054' THEN
			'隆昌农商行'
			WHEN 'S000556' THEN
			'陆家嘴'
			WHEN 'N000163' THEN
			'南京浦口国资集团'
			WHEN 'W000271' THEN
			'精测电子'
			WHEN 'Y000389' THEN
			'渝农商金融租赁'
			WHEN 'B000417' THEN
			'宝业集团'
			WHEN 'S000716' THEN
			'兰山农商行'
			WHEN 'D000153' THEN
			'德州农商行'
			WHEN 'S000452' THEN
			'久隆水电'
			WHEN 'X000443' THEN
			'新兴际华融资租赁'
			WHEN 'G000486' THEN
			'奥马电器'
			WHEN 'H000739' THEN
			'淮安国联集团'
			WHEN 'T000338' THEN
			'郯城国资'
			WHEN 'G000487' THEN
			'光大国际'
			WHEN 'W000181' THEN
			'温州铁投集团'
			WHEN 'W000258' THEN
			'潍坊城投集团'
			WHEN 'Z001455' THEN
			'中原金控'
			WHEN 'N000352' THEN
			'农银国际'
			WHEN 'S000849' THEN
			'峨眉山旅游总公司'
			WHEN 'G000284' THEN
			'凯里合力'
			WHEN 'C000409' THEN
			'长石投资'
			WHEN 'S001423' THEN
			'国能集团能源'
			WHEN 'C000231' THEN
			'承德国控'
			WHEN 'S001279' THEN
			'现代制药'
			WHEN 'L000288' THEN
			'岚桥国际商业'
			WHEN 'H000890' THEN
			'衡阳高新投资'
			WHEN 'C000232' THEN
			'常山农商行'
			WHEN 'J000438' THEN
			'张家港农商行'
			WHEN 'Q000156' THEN
			'起步股份'
			WHEN 'D000248' THEN
			'定南城投'
			WHEN 'T000225' THEN
			'太仓科教'
			WHEN 'Z001046' THEN
			'外贸金融'
			WHEN 'N000365' THEN
			'南昌金开集团'
			WHEN 'H000853' THEN
			'太阳鸟控股'
			WHEN 'D000154' THEN
			'德州银行'
			WHEN 'Z001047' THEN
			'玉环农商行'
			WHEN 'Z001048' THEN
			'椒江农商行'
			WHEN 'C000174' THEN
			'承德银行'
			WHEN 'Z001049' THEN
			'黄岩农商行'
			WHEN 'S000717' THEN
			'费县农商行'
			WHEN 'Z001050' THEN
			'德清农商行'
			WHEN 'W000182' THEN
			'潍坊水务'
			WHEN 'X000244' THEN
			'天山铝业'
			WHEN 'G000344' THEN
			'豪美新材'
			WHEN 'C000175' THEN
			'null'
			WHEN 'J000439' THEN
			'丹化集团'
			WHEN 'P000055' THEN
			'磐安农商行'
			WHEN 'Z001192' THEN
			'遵义开投'
			WHEN 'W000215' THEN
			'网信证券'
			WHEN 'N000260' THEN
			'鑫隆国资'
			WHEN 'C000233' THEN
			'金坛建设'
			WHEN 'Y000252' THEN
			'海兴集团'
			WHEN 'G000410' THEN
			'锦绣投资'
			WHEN 'K000052' THEN
			'阳澄湖文商旅'
			WHEN 'Y000253' THEN
			'扬中交投'
			WHEN 'F000208' THEN
			'海峡环保'
			WHEN 'Z001500' THEN
			'亚太药业'
			WHEN 'S001424' THEN
			'锦天城(广州)'
			WHEN 'G000595' THEN
			'甘肃金控担保集团'
			WHEN 'B000214' THEN
			'光线传媒'
			WHEN 'Y000131' THEN
			'保山电力'
			WHEN 'S000718' THEN
			'金山股份'
			WHEN 'X000444' THEN
			'象山经开'
			WHEN 'W000147' THEN
			'无锡农商行'
			WHEN 'H000854' THEN
			'天易融通'
			WHEN 'C000415' THEN
			'中铁五局'
			WHEN 'H000511' THEN
			'海航期货'
			WHEN 'Z001051' THEN
			'新华航空'
			WHEN 'C000355' THEN
			'东方新城建设'
			WHEN 'J000440' THEN
			'金科股份'
			WHEN 'N000223' THEN
			'南方资本'
			WHEN 'T000326' THEN
			'梵能能源'
			WHEN 'H000855' THEN
			'浦城资产经营'
			WHEN 'Z001052' THEN
			'柯城农商行'
			WHEN 'B000448' THEN
			'君合'
			WHEN 'B000449' THEN
			'金杜'
			WHEN 'J000542' THEN
			'京能置业'
			WHEN 'Z000702' THEN
			'浙江农发集团'
			WHEN 'S000848' THEN
			'开源置业'
			WHEN 'S000850' THEN
			'苏展实业'
			WHEN 'J000282' THEN
			'圣泉集团'
			WHEN 'Z001193' THEN
			'中融双创'
			WHEN 'S000851' THEN
			'福华通达'
			WHEN 'N000261' THEN
			'南京建发集团'
			WHEN 'H000605' THEN
			'稻花香'
			WHEN 'G000411' THEN
			'刚泰集团'
			WHEN 'C000234' THEN
			'春秋航空'
			WHEN 'B000295' THEN
			'广安控股'
			WHEN 'T000256' THEN
			'姜堰交投'
			WHEN 'H000606' THEN
			'醴陵农商行'
			WHEN 'J000348' THEN
			'晋能控股电力'
			WHEN 'Z000834' THEN
			'金凤电子'
			WHEN 'H000402' THEN
			'鑫源农业'
			WHEN 'X000301' THEN
			'协合风电'
			WHEN 'H000607' THEN
			'呼伦贝尔城投集团'
			WHEN 'P000071' THEN
			'昌兴投资'
			WHEN 'Z000919' THEN
			'新昌农商行'
			WHEN 'D000095' THEN
			'东辰集团'
			WHEN 'C000235' THEN
			'长乐国资'
			WHEN 'S000852' THEN
			'上虞经开投'
			WHEN 'Z001194' THEN
			'农行绍兴上虞支行'
			WHEN 'H000608' THEN
			'西湖投资'
			WHEN 'S000853' THEN
			'华成房地产'
			WHEN 'H000609' THEN
			'夷陵经发集团'
			WHEN 'H000610' THEN
			'华建实业'
			WHEN 'G000412' THEN
			'劲达兴纸业'
			WHEN 'J000543' THEN
			'佳源集团'
			WHEN 'L000186' THEN
			'安泰城乡投资'
			WHEN 'H000611' THEN
			'河北农信社'
			WHEN 'H000403' THEN
			'河南交通集团'
			WHEN 'Y000321' THEN
			'游族网络'
			WHEN 'D000223' THEN
			'大兴安岭农商行'
			WHEN 'J000380' THEN
			'春辉生态农林'
			WHEN 'C000397' THEN
			'水城交通建投'
			WHEN 'Z000920' THEN
			'工行江阴支行'
			WHEN 'J000791' THEN
			'秀宏建设集团'
			WHEN 'Z001195' THEN
			'中国信达(香港)'
			WHEN 'A000119' THEN
			'凯盛科技'
			WHEN 'F000138' THEN
			'阜阳交能'
			WHEN 'C000236' THEN
			'天翔环境'
			WHEN 'H000324' THEN
			'太龙药业'
			WHEN 'S000453' THEN
			'帝泰发展'
			WHEN 'H000612' THEN
			'怀化交通建设'
			WHEN 'N000262' THEN
			'人和国资'
			WHEN 'D000249' THEN
			'大参林'
			WHEN 'D000250' THEN
			'德尔未来'
			WHEN 'C000237' THEN
			'合华开发'
			WHEN 'T000339' THEN
			'天堂硅谷'
			WHEN 'Y000390' THEN
			'鱼台鑫达投资'
			WHEN 'F000169' THEN
			'富安达资产管理'
			WHEN 'X000445' THEN
			'新津交通建投'
			WHEN 'Z001501' THEN
			'浙江衢州东方集团'
			WHEN 'W000272' THEN
			'惠玉投控'
			WHEN 'H000891' THEN
			'海门科技园'
			WHEN 'G000560' THEN
			'顾家家居'
			WHEN 'S000557' THEN
			'山西天然气'
			WHEN 'L000232' THEN
			'立根租赁'
			WHEN 'Y000322' THEN
			'北海新城建投'
			WHEN 'A000105' THEN
			'安粮集团'
			WHEN 'Y000323' THEN
			'蒲阳开投'
			WHEN 'G000345' THEN
			'北投建设公司'
			WHEN 'Y000324' THEN
			'惠华投发'
			WHEN 'S001055' THEN
			'简阳农商行'
			WHEN 'B000208' THEN
			'神雾集团'
			WHEN 'F000214' THEN
			'华兴集团'
			WHEN 'J000338' THEN
			'句容新农'
			WHEN 'S000558' THEN
			'惠泽农牧'
			WHEN 'N000164' THEN
			'null'
			WHEN 'Z000703' THEN
			'中建三局'
			WHEN 'L000289' THEN
			'乐亭投资'
			WHEN 'P000104' THEN
			'盘县郊农信社'
			WHEN 'S001280' THEN
			'屯留农商行'
			WHEN 'M000082' THEN
			'盛世城投'
			WHEN 'Z001053' THEN
			'金鸿控股'
			WHEN 'H000740' THEN
			'慈利农商行'
			WHEN 'J000770' THEN
			'瀚瑞金控'
			WHEN 'P000105' THEN
			'蓬冶公路'
			WHEN 'S001227' THEN
			'深圳运营'
			WHEN 'J000441' THEN
			'鸿飞投资'
			WHEN 'J000846' THEN
			'铜鼓城投'
			WHEN 'H000819' THEN
			'孝感农商行'
			WHEN 'L000160' THEN
			'绿城房产'
			WHEN 'S000979' THEN
			'华富利得'
			WHEN 'H000512' THEN
			'华融融德'
			WHEN 'Z001054' THEN
			'中铁房地产'
			WHEN 'S000719' THEN
			'上海世茂'
			WHEN 'X000245' THEN
			'新世纪运通'
			WHEN 'Z001055' THEN
			'浙商资产'
			WHEN 'Y000205' THEN
			'永诚保险'
			WHEN 'Q000130' THEN
			'奇瑞金融'
			WHEN 'S001231' THEN
			'联捷保理'
			WHEN 'C000357' THEN
			'创富融资租赁'
			WHEN 'W000273' THEN
			'武穴城市建设'
			WHEN 'Q000157' THEN
			'市北建投'
			WHEN 'N000386' THEN
			'宁海科创'
			WHEN 'Z001502' THEN
			'中铁四局'
			WHEN 'S001232' THEN
			'柏霖汇保理'
			WHEN 'S001354' THEN
			'柯桥建设'
			WHEN 'F000209' THEN
			'城资国资'
			WHEN 'S000720' THEN
			'苏州自来水厂'
			WHEN 'Z001056' THEN
			'天门旅游经投'
			WHEN 'C000176' THEN
			'龙泉现代'
			WHEN 'B000256' THEN
			'恒业程建'
			WHEN 'S000721' THEN
			'吴中管委会'
			WHEN 'G000346' THEN
			'广西建工一建'
			WHEN 'S001228' THEN
			'渭滨农商行'
			WHEN 'X000189' THEN
			'新余晟东建投'
			WHEN 'F000199' THEN
			'君凯经济'
			WHEN 'C000345' THEN
			'富民银行'
			WHEN 'H000953' THEN
			'临安交投'
			WHEN 'H000892' THEN
			'河南资管'
			WHEN 'J000771' THEN
			'鼎胜新材'
			WHEN 'B000257' THEN
			'九鼎集团'
			WHEN 'J000442' THEN
			'九州证券'
			WHEN 'Z001503' THEN
			'东南网架'
			WHEN 'G000596' THEN
			'新蒲经开'
			WHEN 'H000513' THEN
			'花样年集团'
			WHEN 'Y000206' THEN
			'银亿'
			WHEN 'L000161' THEN
			'联发集团'
			WHEN 'G000347' THEN
			'贵州高速投资'
			WHEN 'T000226' THEN
			'天虹股份'
			WHEN 'G000561' THEN
			'泉丰文化'
			WHEN 'S000722' THEN
			'四川瀚华小额贷款'
			WHEN 'H000514' THEN
			'海航技术'
			WHEN 'H000515' THEN
			'易成新能'
			WHEN 'D000155' THEN
			'恒丰建设'
			WHEN 'N000224' THEN
			'农副产品物流配送'
			WHEN 'S001229' THEN
			'山东国惠'
			WHEN 'H000856' THEN
			'三湘银行'
			WHEN 'C000356' THEN
			'崇左城建集团'
			WHEN 'B000296' THEN
			'北银丰业'
			WHEN 'Z001196' THEN
			'长兴金控集团'
			WHEN 'L000187' THEN
			'兴业经济'
			WHEN 'Z001197' THEN
			'农行重庆南岸支行'
			WHEN 'Z001198' THEN
			'嵊州农商行'
			WHEN 'X000302' THEN
			'兴业银行上海分行'
			WHEN 'L000188' THEN
			'龙岩铁路建设'
			WHEN 'S000854' THEN
			'都梁投资'
			WHEN 'Y000254' THEN
			'越州水务'
			WHEN 'S000855' THEN
			'玉龙供水'
			WHEN 'S001056' THEN
			'天图投资'
			WHEN 'X000422' THEN
			'秀山华兴'
			WHEN 'G000348' THEN
			'国能云南电力'
			WHEN 'G000488' THEN
			'清远农商行'
			WHEN 'Z001309' THEN
			'高科汽博园'
			WHEN 'N000263' THEN
			'南京建工'
			WHEN 'B000297' THEN
			'亳州城建'
			WHEN 'X000303' THEN
			'秀山工业公司'
			WHEN 'C000238' THEN
			'新梁投资'
			WHEN 'H000741' THEN
			'邵东农商行'
			WHEN 'C000299' THEN
			'长葛金财'
			WHEN 'H000742' THEN
			'巩义农商行'
			WHEN 'T000257' THEN
			'泰港实业'
			WHEN 'G000413' THEN
			'赣州稀土集团'
			WHEN 'H000613' THEN
			'海航国际'
			WHEN 'H000614' THEN
			'盱眙资产经营'
			WHEN 'T000258' THEN
			'和平国资'
			WHEN 'G000414' THEN
			'国开东方'
			WHEN 'Z001199' THEN
			'中国光大集团'
			WHEN 'Y000325' THEN
			'伍家城投'
			WHEN 'S001057' THEN
			'新兴置业'
			WHEN 'T000287' THEN
			'泰康资产'
			WHEN 'Z001351' THEN
			'长兴村镇行'
			WHEN 'C000239' THEN
			'麓城置业'
			WHEN 'Z001200' THEN
			'中国林产品'
			WHEN 'S000856' THEN
			'外高桥'
			WHEN 'C000240' THEN
			'财信集团'
			WHEN 'G000415' THEN
			'国融证券'
			WHEN 'F000155' THEN
			'威立雅'
			WHEN 'H000893' THEN
			'明泰铝业'
			WHEN 'Z001504' THEN
			'浙商创投'
			WHEN 'Z001057' THEN
			'般阳资产'
			WHEN 'S001058' THEN
			'永东股份'
			WHEN 'G000349' THEN
			'开元城投'
			WHEN 'G000350' THEN
			'贵州银行凯里迎宾支行'
			WHEN 'Z001456' THEN
			'葛洲坝绿园'
			WHEN 'Y000207' THEN
			'云南城投'
			WHEN 'G000351' THEN
			'贵州省公路工程集团'
			WHEN 'S001281' THEN
			'中建东孚'
			WHEN 'H000516' THEN
			'双汇集团'
			WHEN 'Z001457' THEN
			'中金同盛商业'
			WHEN 'S001059' THEN
			'裕丰资产'
			WHEN 'K000086' THEN
			'康欣新材'
			WHEN 'S000723' THEN
			'禹城农商行'
			WHEN 'Y000364' THEN
			'蒙自农商行'
			WHEN 'Y000326' THEN
			'延安新投开建'
			WHEN 'H000857' THEN
			'通山农商行'
			WHEN 'G000562' THEN
			'大方农商行'
			WHEN 'N000366' THEN
			'南通新农建设'
			WHEN 'J000772' THEN
			'京津冀铁投'
			WHEN 'B000330' THEN
			'新华富时'
			WHEN 'S001230' THEN
			'朔州建设'
			WHEN 'Y000327' THEN
			'仪十二圩新建'
			WHEN 'L000290' THEN
			'蓝思科技'
			WHEN 'J000659' THEN
			'建信资本'
			WHEN 'C000300' THEN
			'福冠投资'
			WHEN 'J000443' THEN
			'苏州农商行'
			WHEN 'H000517' THEN
			'海南矿业'
			WHEN 'N000225' THEN
			'南通文旅'
			WHEN 'H000518' THEN
			'通和资产'
			WHEN 'W000183' THEN
			'浙商中拓'
			WHEN 'S000724' THEN
			'邵武城建'
			WHEN 'Z001058' THEN
			'长兴农合行'
			WHEN 'Y000208' THEN
			'红塔农商行'
			WHEN 'S001060' THEN
			'山东金晶节能玻璃'
			WHEN 'J000660' THEN
			'简阳投资'
			WHEN 'J000661' THEN
			'句容城建'
			WHEN 'Z001352' THEN
			'大横琴集团'
			WHEN 'N000312' THEN
			'六合国资'
			WHEN 'Q000158' THEN
			'青岛城投金融'
			WHEN 'K000092' THEN
			'凯里交建'
			WHEN 'M000072' THEN
			'弥勒农投'
			WHEN 'Z001458' THEN
			'中民投租赁'
			WHEN 'N000226' THEN
			'东和旅游'
			WHEN 'S000725' THEN
			'郯城农商行'
			WHEN 'S006686' THEN
			'洋河新投'
			WHEN 'Z001059' THEN
			'农发行邵武市支行'
			WHEN 'H000519' THEN
			'河南有线'
			WHEN 'C000177' THEN
			'黑山谷'
			WHEN 'J000444' THEN
			'太仓农商行'
			WHEN 'N000227' THEN
			'南华期货'
			WHEN 'S006687' THEN
			'工行重庆分行'
			WHEN 'S000857' THEN
			'华侨城'
			WHEN 'J000544' THEN
			'吴中集团'
			WHEN 'G000416' THEN
			'珠江实业'
			WHEN 'F000139' THEN
			'恒源建设'
			WHEN 'X000304' THEN
			'新疆银隆农业'
			WHEN 'Y000132' THEN
			'宜华集团'
			WHEN 'G000236' THEN
			'粤泰股份'
			WHEN 'C000374' THEN
			'创维数字'
			WHEN 'H000325' THEN
			'瑞贝卡'
			WHEN 'H000326' THEN
			'瑞贝卡控股'
			WHEN 'Z001201' THEN
			'肇庆国资'
			WHEN 'Z000704' THEN
			'中国高科集团'
			WHEN 'G000237' THEN
			'天成控股'
			WHEN 'G000238' THEN
			'银河集团'
			WHEN 'Z001505' THEN
			'中垠租赁'
			WHEN 'J000737' THEN
			'黄岗山投资'
			WHEN 'N000367' THEN
			'众和融资'
			WHEN 'Z001506' THEN
			'株洲金城集团'
			WHEN 'Y000391' THEN
			'君山建投'
			WHEN 'M000073' THEN
			'龙盛投资'
			WHEN 'N000264' THEN
			'南京软件谷'
			WHEN 'Z001202' THEN
			'中源协和'
			WHEN 'H000615' THEN
			'黄石国资'
			WHEN 'J000545' THEN
			'新沂农商行'
			WHEN 'J000773' THEN
			'永鼎股份'
			WHEN 'Y000255' THEN
			'远东宏信'
			WHEN 'H000616' THEN
			'红日交投'
			WHEN 'J000546' THEN
			'金澳科技'
			WHEN 'G000597' THEN
			'独山农商行'
			WHEN 'J000774' THEN
			'荆门城投'
			WHEN 'Z001507' THEN
			'象山城南开建'
			WHEN 'X000446' THEN
			'先锋租赁'
			WHEN 'Y000392' THEN
			'玉投集团'
			WHEN 'H000894' THEN
			'财信金控'
			WHEN 'Z001353' THEN
			'枞阳投发'
			WHEN 'H000743' THEN
			'黄石众邦'
			WHEN 'S000858' THEN
			'新国都'
			WHEN 'A000120' THEN
			'新路建设'
			WHEN 'X000305' THEN
			'金龙汽车'
			WHEN 'Z000705' THEN
			'中信信托'
			WHEN 'Z000706' THEN
			'工行北京分行'
			WHEN 'H000617' THEN
			'海安建投'
			WHEN 'Z000707' THEN
			'大东吴杭萧绿建'
			WHEN 'N000128' THEN
			'宁西道路桥梁工程'
			WHEN 'N000129' THEN
			'北方重工'
			WHEN 'P000041' THEN
			'平安银行南京分行'
			WHEN 'A000065' THEN
			'宣酒集团'
			WHEN 'A000064' THEN
			'蓝博旺三家企业'
			WHEN 'A000063' THEN
			'华岳矿材'
			WHEN 'B000174' THEN
			'中实混凝土'
			WHEN 'B000173' THEN
			'中关村四环'
			WHEN 'B000172' THEN
			'正和生态'
			WHEN 'B000171' THEN
			'北京信威'
			WHEN 'B000170' THEN
			'新华空港航食'
			WHEN 'B000169' THEN
			'大医股份'
			WHEN 'B000168' THEN
			'看丹混凝土'
			WHEN 'B000167' THEN
			'派特罗尔科技'
			WHEN 'B000166' THEN
			'绿润食品'
			WHEN 'B000165' THEN
			'联飞翔'
			WHEN 'B000164' THEN
			'蓝天航空'
			WHEN 'B000163' THEN
			'凯英信业'
			WHEN 'B000162' THEN
			'九恒星'
			WHEN 'B000161' THEN
			'精彩无限'
			WHEN 'B000160' THEN
			'嘉林药业'
			WHEN 'B000159' THEN
			'鸿仪四方'
			WHEN 'B000158' THEN
			'宝塔石化'
			WHEN 'B000157' THEN
			'安期生'
			WHEN 'B000156' THEN
			'红卫日化'
			WHEN 'B000155' THEN
			'共兴冶金'
			WHEN 'C000107' THEN
			'春秋淹城'
			WHEN 'C000106' THEN
			'科试集团'
			WHEN 'C000105' THEN
			'常州国际机场'
			WHEN 'C000104' THEN
			'长青集团'
			WHEN 'C000103' THEN
			'长兴公路工程'
			WHEN 'D000101' THEN
			'青雨传媒'
			WHEN 'D000100' THEN
			'广厦传媒'
			WHEN 'D000099' THEN
			'御景湾酒店'
			WHEN 'D000098' THEN
			'东飞马佐里'
			WHEN 'D000097' THEN
			'德御坊'
			WHEN 'D000096' THEN
			'江南面粉'
			WHEN 'E000011' THEN
			'恩施山寨皮革'
			WHEN 'E000010' THEN
			'通惠供热燃气集团'
			WHEN 'F000080' THEN
			'福建客家土楼旅游'
			WHEN 'F000079' THEN
			'利树浆纸'
			WHEN 'F000078' THEN
			'建通混凝土'
			WHEN 'F000077' THEN
			'富士宝电器科技'
			WHEN 'F000076' THEN
			'丰县经开'
			WHEN 'G000249' THEN
			'国美电器内蒙古'
			WHEN 'G000248' THEN
			'森瑞管业'
			WHEN 'G000247' THEN
			'冠誉&耀轮'
			WHEN 'G000246' THEN
			'南菱汽车'
			WHEN 'G000245' THEN
			'华工百川'
			WHEN 'G000244' THEN
			'威壮交通'
			WHEN 'G000243' THEN
			'昭信照明'
			WHEN 'G000242' THEN
			'新大禹'
			WHEN 'G000241' THEN
			'东瑞集团'
			WHEN 'G000240' THEN
			'乐陶陶'
			WHEN 'G000239' THEN
			'海纳农业'
			WHEN 'H000341' THEN
			'环球石材'
			WHEN 'H000340' THEN
			'康嘉实业'
			WHEN 'H000339' THEN
			'华珠泉州鞋业'
			WHEN 'H000338' THEN
			'南浔振浔'
			WHEN 'H000337' THEN
			'湖北世纪新峰'
			WHEN 'H000336' THEN
			'金叶玉阳化纤'
			WHEN 'H000335' THEN
			'福星生物'
			WHEN 'H000334' THEN
			'北京黑乳商贸'
			WHEN 'H000333' THEN
			'浩蓝环保'
			WHEN 'H000332' THEN
			'帷盛科技'
			WHEN 'H000331' THEN
			'杭州安装'
			WHEN 'H000330' THEN
			'杭州建工混凝土'
			WHEN 'H000329' THEN
			'汉柏科技'
			WHEN 'H000328' THEN
			'海宁交通投资集团'
			WHEN 'H000327' THEN
			'森德皮革'
			WHEN 'J000291' THEN
			'骏浩科技(中国)'
			WHEN 'J000290' THEN
			'华光食品'
			WHEN 'J000289' THEN
			'华春色纺'
			WHEN 'J000288' THEN
			'扬安建设'
			WHEN 'J000287' THEN
			'科地现代农业'
			WHEN 'J000286' THEN
			'恒星钨钼'
			WHEN 'J000285' THEN
			'恒顺达生物'
			WHEN 'J000284' THEN
			'八达园林'
			WHEN 'J000283' THEN
			'中科环保'
			WHEN 'K000027' THEN
			'龙腾电子'
			WHEN 'K000026' THEN
			'中营津桥科教'
			WHEN 'L000096' THEN
			'北山煤矿'
			WHEN 'L000095' THEN
			'天喜实业'
			WHEN 'L000094' THEN
			'莲花山园林'
			WHEN 'A000155' THEN
			'华安国资'
			WHEN 'N000136' THEN
			'远古水业'
			WHEN 'N000135' THEN
			'新明经开'
			WHEN 'N000134' THEN
			'西部路桥'
			WHEN 'N000133' THEN
			'汤山旅游'
			WHEN 'N000132' THEN
			'瑞源建设'
			WHEN 'N000131' THEN
			'奈伦农业'
			WHEN 'N000130' THEN
			'奶联科技'
			WHEN 'Q000061' THEN
			'汉威机械'
			WHEN 'Q000060' THEN
			'青岛澳柯玛'
			WHEN 'R000024' THEN
			'润百计算机'
			WHEN 'R000023' THEN
			'如皋港务集团'
			WHEN 'Y000328' THEN
			'阳新城投'
			WHEN 'H000744' THEN
			'华润医药商业'
			WHEN 'M000054' THEN
			'美年健康'
			WHEN 'J000662' THEN
			'济宁农商行'
			WHEN 'G000489' THEN
			'国网节能'
			WHEN 'Z001354' THEN
			'中储粮油脂'
			WHEN 'N000313' THEN
			'宁波轨道交通'
			WHEN 'H000745' THEN
			'金松集团'
			WHEN 'A000156' THEN
			'定远农商行'
			WHEN 'T000259' THEN
			'滕州城建'
			WHEN 'H000618' THEN
			'以岭医药'
			WHEN 'J000547' THEN
			'金华盛纸业'
			WHEN 'S000470' THEN
			'致富皮业'
			WHEN 'S000469' THEN
			'苏州高新污水'
			WHEN 'S000468' THEN
			'光发彩印'
			WHEN 'S000467' THEN
			'嵊州宾馆'
			WHEN 'S000466' THEN
			'拓奇智造'
			WHEN 'S000465' THEN
			'龙丹食品'
			WHEN 'S000464' THEN
			'巨龙科教'
			WHEN 'S000463' THEN
			'嘉力达'
			WHEN 'S000462' THEN
			'千禧之星'
			WHEN 'S000461' THEN
			'申环电缆'
			WHEN 'S000460' THEN
			'海希'
			WHEN 'S000459' THEN
			'国德电气'
			WHEN 'S000458' THEN
			'中磁视讯'
			WHEN 'S000457' THEN
			'胜伟集团'
			WHEN 'S000456' THEN
			'赛特股份'
			WHEN 'S000455' THEN
			'锦昉棉业'
			WHEN 'S000454' THEN
			'新天阳化工'
			WHEN 'T000149' THEN
			'婷美'
			WHEN 'T000148' THEN
			'天地伟业'
			WHEN 'T000147' THEN
			'泰亨气体'
			WHEN 'T000146' THEN
			'天津松江生态产业'
			WHEN 'T000145' THEN
			'赛恩能源'
			WHEN 'T000144' THEN
			'泰州东星精密机器'
			WHEN 'W000112' THEN
			'武汉医药'
			WHEN 'W000111' THEN
			'新诚高铁'
			WHEN 'W000110' THEN
			'武汉四方交通物流'
			WHEN 'W000109' THEN
			'开来建设'
			WHEN 'W000108' THEN
			'吴江盛泽水处理发展'
			WHEN 'W000107' THEN
			'惠山软件'
			WHEN 'W000106' THEN
			'无锡高新物流中心'
			WHEN 'W000105' THEN
			'张家埠新港工程'
			WHEN 'W000104' THEN
			'金正食品'
			WHEN 'X000157' THEN
			'百商电线电缆'
			WHEN 'X000156' THEN
			'圣达威服饰'
			WHEN 'X000155' THEN
			'梅花光电'
			WHEN 'Y000135' THEN
			'宝悦厂建'
			WHEN 'Y000134' THEN
			'旭长实业'
			WHEN 'Y000133' THEN
			'三峡机场公司'
			WHEN 'Z000729' THEN
			'诸城威仕达'
			WHEN 'Z000728' THEN
			'永鹏网络科技'
			WHEN 'Z000727' THEN
			'亚德科技'
			WHEN 'Z000726' THEN
			'天彩铝业'
			WHEN 'Z000725' THEN
			'重庆原卤食品'
			WHEN 'Z000724' THEN
			'重庆福星门业'
			WHEN 'Z000723' THEN
			'涪陵民用爆破'
			WHEN 'Z000722' THEN
			'涪陵宏伟公路'
			WHEN 'Z000721' THEN
			'华联商厦鸿瑞'
			WHEN 'Z000720' THEN
			'广建股份'
			WHEN 'Z000719' THEN
			'中兴能源'
			WHEN 'Z000718' THEN
			'中科恒源'
			WHEN 'Z000717' THEN
			'中欣氟材'
			WHEN 'Z000716' THEN
			'天台公路运输'
			WHEN 'Z000715' THEN
			'森禾花卉科技'
			WHEN 'Z000714' THEN
			'华龙股份'
			WHEN 'Z000713' THEN
			'浙江南浔旅发'
			WHEN 'Z000712' THEN
			'康迪车业'
			WHEN 'Z000711' THEN
			'富立轴承'
			WHEN 'Z000710' THEN
			'浙江大东吴建材'
			WHEN 'Z000709' THEN
			'昭仪新天地'
			WHEN 'Z000708' THEN
			'漳州发展水务'
			WHEN 'X000158' THEN
			'新鑫矿业'
			WHEN 'S000859' THEN
			'长子农商行'
			WHEN 'G000490' THEN
			'毅德商贸'
			WHEN 'K000074' THEN
			'昆明住房建设'
			WHEN 'B000357' THEN
			'易华录'
			WHEN 'S000726' THEN
			'平安汇通'
			WHEN 'Z001355' THEN
			'渌湘集团'
			WHEN 'C000178' THEN
			'长江资管'
			WHEN 'Z001356' THEN
			'资兴城投'
			WHEN 'G000367' THEN
			'桂林交控'
			WHEN 'S000860' THEN
			'西部集团'
			WHEN 'X000306' THEN
			'思明控股'
			WHEN 'J000548' THEN
			'吉林化纤'
			WHEN 'W000113' THEN
			'威海商行'
			WHEN 'H000619' THEN
			'杭州银行西城支行'
			WHEN 'S001282' THEN
			'郑中设计'
			WHEN 'S001283' THEN
			'亚泰一兆'
			WHEN 'Z001508' THEN
			'珠江金融租赁'
			WHEN 'H000895' THEN
			'汉寿农商行'
			WHEN 'J000549' THEN
			'城镇开发'
			WHEN 'H000520' THEN
			'杭萧钢构'
			WHEN 'C000375' THEN
			'长城汽车'
			WHEN 'S000471' THEN
			'同捷科技'
			WHEN 'X000246' THEN
			'厦门港务'
			WHEN 'F000081' THEN
			'凡登材料'
			WHEN 'C000108' THEN
			'武进广投'
			WHEN 'A000157' THEN
			'富煌集团'
			WHEN 'N000314' THEN
			'裕人投资'
			WHEN 'S001061' THEN
			'上海佳船企业'
			WHEN 'Z001357' THEN
			'东港投资'
			WHEN 'T000288' THEN
			'华天电子'
			WHEN 'C000376' THEN
			'弘辉控股'
			WHEN 'Y000329' THEN
			'鹰高投资'
			WHEN 'Y000209' THEN
			'红塔商行'
			WHEN 'W000274' THEN
			'锡山资产经营'
			WHEN 'S001284' THEN
			'惠农建投'
			WHEN 'H000896' THEN
			'淮安新型城镇集团'
			WHEN 'Y000330' THEN
			'宜昌建投控股'
			WHEN 'B000258' THEN
			'北京国投公路'
			WHEN 'N000228' THEN
			'汤山温泉'
			WHEN 'H000521' THEN
			'恒兴综合大市场'
			WHEN 'W000184' THEN
			'长绿城投'
			WHEN 'L000162' THEN
			'六盘水水务'
			WHEN 'W000241' THEN
			'双岛湾投资'
			WHEN 'S001062' THEN
			'秦巴集团'
			WHEN 'G000352' THEN
			'高邮建投'
			WHEN 'J000663' THEN
			'雪松控股'
			WHEN 'G000491' THEN
			'贵龙实业'
			WHEN 'Z001358' THEN
			'遵义播州城投'
			WHEN 'J000664' THEN
			'丰源城投'
			WHEN 'Z001093' THEN
			'水电十四局'
			WHEN 'L000097' THEN
			'临商银行'
			WHEN 'Q000062' THEN
			'千禧之星'
			WHEN 'W000114' THEN
			'五洋建设'
			WHEN 'Z000730' THEN
			'白云伟业'
			WHEN 'B000418' THEN
			'北京银行乌鲁木齐分行'
			WHEN 'K000028' THEN
			'卡森国际'
			WHEN 'Z000731' THEN
			'浙江卡森实业'
			WHEN 'G000353' THEN
			'甘肃电投'
			WHEN 'Y000210' THEN
			'阳光电源'
			WHEN 'S001063' THEN
			'神州租车'
			WHEN 'S001064' THEN
			'豪园创投'
			WHEN 'C000301' THEN
			'新航建设'
			WHEN 'R000039' THEN
			'汝州鑫源投资'
			WHEN 'Z001060' THEN
			'中行汝州支行'
			WHEN 'H000897' THEN
			'和信保理'
			WHEN 'H000746' THEN
			'海思科'
			WHEN 'B000358' THEN
			'北京文投集团'
			WHEN 'L000233' THEN
			'六盘水交投'
			WHEN 'C000179' THEN
			'南太湖投资'
			WHEN 'C000180' THEN
			'丰碑建设'
			WHEN 'P000056' THEN
			'兴彭建设'
			WHEN 'A000106' THEN
			'兴业投资'
			WHEN 'G000354' THEN
			'广宇集团'
			WHEN 'F000119' THEN
			'福星惠誉'
			WHEN 'S001065' THEN
			'博雅城建'
			WHEN 'S006151' THEN
			'国安达'
			WHEN 'F000216' THEN
			'漳州长运'
			WHEN 'X000380' THEN
			'西安高新中心'
			WHEN 'B000442' THEN
			'君合(深圳)'
			WHEN 'Z000732' THEN
			'五洲新春'
			WHEN 'C000109' THEN
			'常州投建'
			WHEN 'L000291' THEN
			'六盘水农投'
			WHEN 'C000377' THEN
			'国投兴城'
			WHEN 'S001285' THEN
			'大唐租赁'
			WHEN 'Z001509' THEN
			'中贝九洲'
			WHEN 'J000775' THEN
			'明升建设'
			WHEN 'D000251' THEN
			'德清联创'
			WHEN 'W000275' THEN
			'锡西新城发展'
			WHEN 'H000522' THEN
			'华泰期货'
			WHEN 'T000340' THEN
			'太平资产'
			WHEN 'J000445' THEN
			'宜兴农商行'
			WHEN 'Z001203' THEN
			'南都电源'
			WHEN 'D000179' THEN
			'当代节能'
			WHEN 'Z001204' THEN
			'轻纺城集团'
			WHEN 'S000861' THEN
			'四川路桥'
			WHEN 'Z001205' THEN
			'鼎湖农信社'
			WHEN 'T000260' THEN
			'泰山控股'
			WHEN 'Q000117' THEN
			'青岛海洋集团'
			WHEN 'L000189' THEN
			'洛阳城建'
			WHEN 'C000181' THEN
			'长春城投'
			WHEN 'G000355' THEN
			'广珠城轨'
			WHEN 'W000276' THEN
			'滨湖城投'
			WHEN 'H000898' THEN
			'和县城投'
			WHEN 'H000523' THEN
			'海安新农村'
			WHEN 'D000156' THEN
			'都江堰建工建材'
			WHEN 'D000157' THEN
			'棒棰岛海产'
			WHEN 'J000446' THEN
			'伟驰控股集团'
			WHEN 'Z001061' THEN
			'中建投工程'
			WHEN 'C000182' THEN
			'八方建筑'
			WHEN 'J000369' THEN
			'建湖建设投资'
			WHEN 'H000620' THEN
			'黄河万家寨水利枢纽'
			WHEN 'J000550' THEN
			'辉丰股份'
			WHEN 'X000307' THEN
			'东方财富证券'
			WHEN 'R000050' THEN
			'新东港控股'
			WHEN 'A000121' THEN
			'高速地产集团'
			WHEN 'X000308' THEN
			'鑫沅资产'
			WHEN 'A000122' THEN
			'阿特斯'
			WHEN 'C000241' THEN
			'长春轨道交通'
			WHEN 'Y000256' THEN
			'宜城建投'
			WHEN 'Z001206' THEN
			'农发行宜城市支行'
			WHEN 'Z001094' THEN
			'株洲循环经投'
			WHEN 'J000776' THEN
			'寻乌农商行'
			WHEN 'S006156' THEN
			'点金保理'
			WHEN 'S000754' THEN
			'绍兴国投'
			WHEN 'Z001062' THEN
			'正奇金融'
			WHEN 'N000237' THEN
			'金熙开发'
			WHEN 'S001286' THEN
			'商丘铁路'
			WHEN 'P000106' THEN
			'平煤神马建工集团'
			WHEN 'J000777' THEN
			'曲水园建投'
			WHEN 'H000899' THEN
			'黄石新港开发'
			WHEN 'C000378' THEN
			'成都石化'
			WHEN 'Z001510' THEN
			'中化能源'
			WHEN 'P000107' THEN
			'天津平安国际融资'
			WHEN 'G000598' THEN
			'贵合投资发展'
			WHEN 'W000277' THEN
			'渭南产业投资'
			WHEN 'N000315' THEN
			'徐庄高新创投'
			WHEN 'G000356' THEN
			'福泉磷矿'
			WHEN 'T000227' THEN
			'泰禾集团'
			WHEN 'L000163' THEN
			'利辛城发'
			WHEN 'T000228' THEN
			'东丽湖能源'
			WHEN 'Z001063' THEN
			'中信产业基金'
			WHEN 'S000727' THEN
			'运城农商行'
			WHEN 'Z001064' THEN
			'海宁农商行'
			WHEN 'A000158' THEN
			'五河农商行'
			WHEN 'X000309' THEN
			'厦航'
			WHEN 'S005326' THEN
			'中国长城国际'
			WHEN 'S005691' THEN
			'翔丰华'
			WHEN 'S005692' THEN
			'惠云钛业'
			WHEN 'S005693' THEN
			'壶化股份'
			WHEN 'A000123' THEN
			'安吉城投'
			WHEN 'B000175' THEN
			'兴展融达担保'
			WHEN 'G000417' THEN
			'歌山集团'
			WHEN 'W000216' THEN
			'芜湖交通投资'
			WHEN 'D000102' THEN
			'天宝食品'
			WHEN 'J000551' THEN
			'金沙建投集团'
			WHEN 'X000310' THEN
			'襄州区建投公司'
			WHEN 'N000265' THEN
			'宁波市区农信社'
			WHEN 'J000292' THEN
			'江苏冶金设计院'
			WHEN 'H000621' THEN
			'鄂三峡农商行'
			WHEN 'S000862' THEN
			'四川煤气化'
			WHEN 'S005694' THEN
			'钱塘城投'
			WHEN 'T000289' THEN
			'兴原城镇建设'
			WHEN 'S001066' THEN
			'兖州农商行'
			WHEN 'Y000331' THEN
			'力帆骏马'
			WHEN 'X000381' THEN
			'新疆机场'
			WHEN 'N000316' THEN
			'钟山资管'
			WHEN 'S005695' THEN
			'盐城交投'
			WHEN 'B000298' THEN
			'北控水务集团'
			WHEN 'H000622' THEN
			'淮安城市资产'
			WHEN 'A000068' THEN
			'安徽金农'
			WHEN 'A000067' THEN
			'美亚高新'
			WHEN 'A000066' THEN
			'华安达'
			WHEN 'B000188' THEN
			'博瑞医药'
			WHEN 'B000187' THEN
			'中海北方'
			WHEN 'B000186' THEN
			'中电华强'
			WHEN 'B000185' THEN
			'大地环境工程'
			WHEN 'B000184' THEN
			'蓝天环保'
			WHEN 'B000183' THEN
			'精英伟业影视'
			WHEN 'B000182' THEN
			'金豪制药'
			WHEN 'B000181' THEN
			'桀亚莱福'
			WHEN 'B000180' THEN
			'星美集团'
			WHEN 'B000179' THEN
			'德鑫物联'
			WHEN 'B000178' THEN
			'安德固'
			WHEN 'B000177' THEN
			'五洲电力'
			WHEN 'B000176' THEN
			'泰弘生态'
			WHEN 'J000552' THEN
			'吉林技术开发'
			WHEN 'D000104' THEN
			'东霖食品'
			WHEN 'D000103' THEN
			'大丰港'
			WHEN 'C000110' THEN
			'尚湖旅游'
			WHEN 'F000082' THEN
			'三明纺织'
			WHEN 'G000252' THEN
			'广州中电物业投资'
			WHEN 'G000251' THEN
			'百色电力'
			WHEN 'G000250' THEN
			'南方传媒集团'
			WHEN 'Z001207' THEN
			'工行嘉兴分行'
			WHEN 'H000355' THEN
			'尧塘装饰'
			WHEN 'H000354' THEN
			'淮安软件园'
			WHEN 'H000353' THEN
			'淮安开发物流'
			WHEN 'H000352' THEN
			'珍贝羊绒'
			WHEN 'H000351' THEN
			'展望药业'
			WHEN 'H000350' THEN
			'天外绿色包装印刷'
			WHEN 'H000349' THEN
			'南太湖龟鳖'
			WHEN 'H000348' THEN
			'金泰科技'
			WHEN 'H000347' THEN
			'黄山头'
			WHEN 'H000346' THEN
			'华丽食品'
			WHEN 'H000345' THEN
			'益维汽车工业'
			WHEN 'H000344' THEN
			'西子孚信'
			WHEN 'H000343' THEN
			'钱江四桥'
			WHEN 'H000342' THEN
			'海安广播电视'
			WHEN 'J000309' THEN
			'鸿润食品'
			WHEN 'J000308' THEN
			'中瑞路桥'
			WHEN 'J000307' THEN
			'枣林湾'
			WHEN 'J000306' THEN
			'宇迪光学'
			WHEN 'J000305' THEN
			'天楹环保'
			WHEN 'J000304' THEN
			'苏元建设'
			WHEN 'J000303' THEN
			'山河水泥'
			WHEN 'J000302' THEN
			'容丰农科'
			WHEN 'J000301' THEN
			'茅山福地旅游'
			WHEN 'J000300' THEN
			'淮阴水利'
			WHEN 'J000299' THEN
			'恒瑞投资'
			WHEN 'J000298' THEN
			'飞达钻头'
			WHEN 'J000297' THEN
			'东升水务'
			WHEN 'J000296' THEN
			'大宏纺织集团'
			WHEN 'J000295' THEN
			'大港股份'
			WHEN 'J000294' THEN
			'北极皓天'
			WHEN 'J000293' THEN
			'港区供水和港区污水处理'
			WHEN 'L000100' THEN
			'临沂医药'
			WHEN 'L000099' THEN
			'桃盛熔融石英'
			WHEN 'L000098' THEN
			'宏伟石英'
			WHEN 'S000863' THEN
			'秦农农商行'
			WHEN 'X000159' THEN
			'新华联'
			WHEN 'Z000733' THEN
			'人寿资管'
			WHEN 'N000137' THEN
			'恒达公路发展'
			WHEN 'N000138' THEN
			'南化工业'
			WHEN 'N000139' THEN
			'江宁滨江物流'
			WHEN 'N000140' THEN
			'江宁水务'
			WHEN 'N000141' THEN
			'晨曦焊业'
			WHEN 'N000142' THEN
			'泰禾集团'
			WHEN 'N000143' THEN
			'宁波绿能'
			WHEN 'R000027' THEN
			'瑞安水务'
			WHEN 'R000026' THEN
			'如皋交通服务'
			WHEN 'R000025' THEN
			'顾庄生态园'
			WHEN 'P000072' THEN
			'莆田高新开发'
			WHEN 'S000501' THEN
			'金田塑业'
			WHEN 'S000500' THEN
			'null'
			WHEN 'S000499' THEN
			'阳澄湖旅游'
			WHEN 'S000498' THEN
			'新宁自来水'
			WHEN 'S000497' THEN
			'琳桥绿化'
			WHEN 'S000496' THEN
			'同里旅游'
			WHEN 'S000495' THEN
			'苏州松鹤楼'
			WHEN 'S000494' THEN
			'华东镀膜玻璃'
			WHEN 'S000493' THEN
			'漕湖科技'
			WHEN 'S000492' THEN
			'寿县农业发展投资'
			WHEN 'S000491' THEN
			'新达通'
			WHEN 'S000490' THEN
			'振能天然气'
			WHEN 'S000489' THEN
			'中锐教育'
			WHEN 'S000488' THEN
			'中河金属'
			WHEN 'S000487' THEN
			'杨浦创业'
			WHEN 'S000486' THEN
			'雅润'
			WHEN 'S000485' THEN
			'香榭丽传媒'
			WHEN 'S000484' THEN
			'上建机电'
			WHEN 'S000483' THEN
			'三航奔腾'
			WHEN 'S000482' THEN
			'派芬自控'
			WHEN 'S000481' THEN
			'朗诗建筑'
			WHEN 'S000480' THEN
			'金丰建设'
			WHEN 'S000479' THEN
			'复展智能'
			WHEN 'S000478' THEN
			'中文实业'
			WHEN 'S000477' THEN
			'天宝建设'
			WHEN 'S000476' THEN
			'泰丰制动'
			WHEN 'S000475' THEN
			'润峰新能源'
			WHEN 'S000474' THEN
			'博特'
			WHEN 'S000473' THEN
			'山东博润'
			WHEN 'S000472' THEN
			'博瑞格'
			WHEN 'Z000734' THEN
			'中海信达'
			WHEN 'T000158' THEN
			'天政建设'
			WHEN 'T000157' THEN
			'天联滨海'
			WHEN 'T000156' THEN
			'天房科技'
			WHEN 'T000155' THEN
			'凯泰建材'
			WHEN 'T000154' THEN
			'海王星'
			WHEN 'T000153' THEN
			'朝日科贸'
			WHEN 'T000152' THEN
			'天津第六市政公路'
			WHEN 'T000151' THEN
			'泰州新生源'
			WHEN 'T000150' THEN
			'泰凌医药'
			WHEN 'W000118' THEN
			'天捷重装'
			WHEN 'W000117' THEN
			'南华黄冈江北造船'
			WHEN 'W000116' THEN
			'凯迪电力工程'
			WHEN 'W000115' THEN
			'威海中玻'
			WHEN 'X000163' THEN
			'中伟新材'
			WHEN 'X000162' THEN
			'新源水务'
			WHEN 'X000161' THEN
			'新丽传媒'
			WHEN 'X000160' THEN
			'杰行体育'
			WHEN 'S000864' THEN
			'舒城城镇建设'
			WHEN 'N000266' THEN
			'南阳高新发投'
			WHEN 'G000418' THEN
			'金控资本'
			WHEN 'Y000142' THEN
			'上海优必胜'
			WHEN 'Y000141' THEN
			'营口海产物流'
			WHEN 'Y000140' THEN
			'仪征水交'
			WHEN 'Y000139' THEN
			'九泰热力'
			WHEN 'Y000138' THEN
			'扬州供热'
			WHEN 'Y000137' THEN
			'鼎兴开建'
			WHEN 'Y000136' THEN
			'大纵湖开发'
			WHEN 'S006688' THEN
			'联新投管'
			WHEN 'S005696' THEN
			'国电湖北电力'
			WHEN 'Z000735' THEN
			'安吉修竹绿化'
			WHEN 'Z000736' THEN
			'东冠通信技术'
			WHEN 'Z000737' THEN
			'安吉华逸化纤'
			WHEN 'Z000738' THEN
			'画之都文创'
			WHEN 'Z000739' THEN
			'绩丰岩土'
			WHEN 'Z000740' THEN
			'骆氏企业'
			WHEN 'Z000741' THEN
			'浦江百炼化工'
			WHEN 'Z000742' THEN
			'宏谱邦锦实业'
			WHEN 'Z000743' THEN
			'天子湖实业'
			WHEN 'Z000744' THEN
			'西塘旅游文化'
			WHEN 'Z000745' THEN
			'新三印印染'
			WHEN 'Z000746' THEN
			'永利经编'
			WHEN 'Z000747' THEN
			'浙大图灵'
			WHEN 'Z000748' THEN
			'镇江旅发'
			WHEN 'Z000749' THEN
			'镇江索普化工'
			WHEN 'Z000750' THEN
			'志诚动力'
			WHEN 'Z000751' THEN
			'中昌恒远'
			WHEN 'Z000752' THEN
			'中成新星'
			WHEN 'Z000753' THEN
			'中海阳'
			WHEN 'Z000754' THEN
			'钟祥宏达实业'
			WHEN 'Z000755' THEN
			'北鼎建设'
			WHEN 'Z000756' THEN
			'升厦集团'
			WHEN 'Z000757' THEN
			'鸿业实业'
			WHEN 'Z000758' THEN
			'渝宏公路'
			WHEN 'S006689' THEN
			'美团小贷'
			WHEN 'G000253' THEN
			'临海工业'
			WHEN 'G000492' THEN
			'阳普医疗'
			WHEN 'T000159' THEN
			'铜仁国资'
			WHEN 'Z000759' THEN
			'工行铜仁分行'
			WHEN 'F000083' THEN
			'泉州江南'
			WHEN 'H000291' THEN
			'黄山旅游'
			WHEN 'S000865' THEN
			'荣成农商行'
			WHEN 'T000261' THEN
			'泰达城发集团'
			WHEN 'Z001208' THEN
			'玉环城建'
			WHEN 'P000034' THEN
			'平安银行大连分行'
			WHEN 'J000553' THEN
			'海州发展'
			WHEN 'C000242' THEN
			'百盐投资'
			WHEN 'Z000760' THEN
			'中国宝安'
			WHEN 'S005327' THEN
			'江苏科贷'
			WHEN 'S005328' THEN
			'汇泉资管'
			WHEN 'S005329' THEN
			'中油工程'
			WHEN 'S005330' THEN
			'金开祯泰地产'
			WHEN 'S005331' THEN
			'正荣商业'
			WHEN 'S005332' THEN
			'云南能投'
			WHEN 'S005333' THEN
			'京口文体'
			WHEN 'S005334' THEN
			'合肥世纪金源'
			WHEN 'S005335' THEN
			'昆明爱琴海'
			WHEN 'S005336' THEN
			'中信兴业'
			WHEN 'S005337' THEN
			'招商漳州'
			WHEN 'S005338' THEN
			'大唐陕西发电'
			WHEN 'S005339' THEN
			'云南建投'
			WHEN 'S005340' THEN
			'丰城创投'
			WHEN 'S005341' THEN
			'鑫达集团'
			WHEN 'S005342' THEN
			'融信通达保理'
			WHEN 'H000356' THEN
			'神火股份'
			WHEN 'Z001209' THEN
			'农行无锡分行'
			WHEN 'Y000257' THEN
			'阳明文旅'
			WHEN 'C000243' THEN
			'花园水城'
			WHEN 'R000028' THEN
			'融众资本'
			WHEN 'Y000143' THEN
			'榆神能源'
			WHEN 'S000502' THEN
			'高铁建投公司'
			WHEN 'Z000761' THEN
			'招行榆林分行'
			WHEN 'H000357' THEN
			'兆瑞担保'
			WHEN 'S000755' THEN
			'爱施德'
			WHEN 'H000358' THEN
			'霍邱城投'
			WHEN 'A000069' THEN
			'安吉国资'
			WHEN 'X000260' THEN
			'星辉娱乐'
			WHEN 'H000359' THEN
			'海安县经开'
			WHEN 'Y000144' THEN
			'云南路桥'
			WHEN 'H000747' THEN
			'西藏亿纬控股'
			WHEN 'J000665' THEN
			'中超集团'
			WHEN 'Z000762' THEN
			'浙江格励奥'
			WHEN 'S001287' THEN
			'深能南京'
			WHEN 'Y000211' THEN
			'远东股份'
			WHEN 'Z001065' THEN
			'中民投'
			WHEN 'S000503' THEN
			'华滋奔腾'
			WHEN 'H000360' THEN
			'杰之行'
			WHEN 'Z000763' THEN
			'中元国信'
			WHEN 'B000190' THEN
			'海淀科技担保公司'
			WHEN 'B000189' THEN
			'再担保公司'
			WHEN 'G000254' THEN
			'正润集团'
			WHEN 'Z000764' THEN
			'中建海峡'
			WHEN 'H000361' THEN
			'凯乐科技'
			WHEN 'S000504' THEN
			'相城交通建设'
			WHEN 'S005697' THEN
			'贵州出版集团'
			WHEN 'A000202' THEN
			'旺通投资'
			WHEN 'S000505' THEN
			'劲嘉创投'
			WHEN 'Z000765' THEN
			'中锐控股'
			WHEN 'T000160' THEN
			'天龙控股'
			WHEN 'S000506' THEN
			'联合融资担保'
			WHEN 'E000012' THEN
			'圣圆集团'
			WHEN 'Z000766' THEN
			'安吉经济发展'
			WHEN 'X000247' THEN
			'新疆金投公司'
			WHEN 'S000507' THEN
			'向东岛房产'
			WHEN 'J000310' THEN
			'金帝联合能源'
			WHEN 'K000029' THEN
			'开原建投'
			WHEN 'Z000767' THEN
			'中行铁岭开原支行'
			WHEN 'X000248' THEN
			'厦门百城建投'
			WHEN 'H000524' THEN
			'华夏保险'
			WHEN 'Y000212' THEN
			'宜宾商行'
			WHEN 'D000252' THEN
			'东莞金控'
			WHEN 'S000728' THEN
			'苏宁电器集团'
			WHEN 'S000729' THEN
			'泉兴中联'
			WHEN 'S000730' THEN
			'中洲控股'
			WHEN 'S001328' THEN
			'静安置业集团'
			WHEN 'L000164' THEN
			'泸州工投集团'
			WHEN 'S000756' THEN
			'河津农商行'
			WHEN 'H000748' THEN
			'蓝山农商行'
			WHEN 'J000464' THEN
			'姜堰农商行'
			WHEN 'Z001095' THEN
			'上虞农商行'
			WHEN 'J000465' THEN
			'泰州农商行'
			WHEN 'J000466' THEN
			'涟水农商行'
			WHEN 'X000164' THEN
			'仙桃城建'
			WHEN 'J000311' THEN
			'酒泉经开集团'
			WHEN 'X000165' THEN
			'湘财证券'
			WHEN 'J000312' THEN
			'交行酒泉分行'
			WHEN 'Z000768' THEN
			'中信银行兰州分行'
			WHEN 'Z000769' THEN
			'建行甘肃支行'
			WHEN 'J000313' THEN
			'交行甘肃分行'
			WHEN 'L000101' THEN
			'兰石集团'
			WHEN 'S000508' THEN
			'陆家嘴集团'
			WHEN 'D000253' THEN
			'财金投资'
			WHEN 'B000191' THEN
			'毕节开源建投'
			WHEN 'H000362' THEN
			'湖北省融资担保集团'
			WHEN 'N000368' THEN
			'高淳国资集团'
			WHEN 'Z001066' THEN
			'中行伊犁州分行'
			WHEN 'X000166' THEN
			'湘潭政府'
			WHEN 'P000057' THEN
			'攀枝花农商行'
			WHEN 'T000238' THEN
			'泰顺农商行'
			WHEN 'S001288' THEN
			'晋中国资'
			WHEN 'Z001067' THEN
			'中国燃气'
			WHEN 'S000731' THEN
			'宝龙实业'
			WHEN 'J000447' THEN
			'博融农业'
			WHEN 'J000448' THEN
			'昆山农商行'
			WHEN 'G000621' THEN
			'广东电力开发'
			WHEN 'Z001210' THEN
			'郑州通航建设'
			WHEN 'S000866' THEN
			'上饶投资'
			WHEN 'C000244' THEN
			'三联花木'
			WHEN 'Y000258' THEN
			'悦达资本'
			WHEN 'S006176' THEN
			'历下控股'
			WHEN 'Y000416' THEN
			'宜宾新兴产投'
			WHEN 'N000229' THEN
			'南宁新技术产业建设'
			WHEN 'G000357' THEN
			'珠三角城际轨道交通'
			WHEN 'W000139' THEN
			'武钢集团昆明钢铁'
			WHEN 'J000449' THEN
			'嘉禾自来水'
			WHEN 'X000249' THEN
			'禹洲鸿图'
			WHEN 'S005343' THEN
			'先惠技术'
			WHEN 'C000245' THEN
			'常州城市照明'
			WHEN 'S000867' THEN
			'神雾环保'
			WHEN 'F000140' THEN
			'淼城建投'
			WHEN 'G000419' THEN
			'国泰元鑫资管'
			WHEN 'Z001211' THEN
			'嘉化能源'
			WHEN 'H000623' THEN
			'工投科技'
			WHEN 'S005698' THEN
			'兴福村镇行'
			WHEN 'S005699' THEN
			'东阳富民镇行'
			WHEN 'S005700' THEN
			'中核汇能'
			WHEN 'T000341' THEN
			'津诚资本'
			WHEN 'T000342' THEN
			'天津国有资本'
			WHEN 'S001289' THEN
			'联合保理'
			WHEN 'Y000393' THEN
			'虹桥坊酒店'
			WHEN 'Z000866' THEN
			'中信银行郑州分行'
			WHEN 'W000185' THEN
			'文成农商行'
			WHEN 'J000450' THEN
			'北山建筑'
			WHEN 'J000451' THEN
			'松花湖生态示范园'
			WHEN 'P000058' THEN
			'统一建设集团'
			WHEN 'S005344' THEN
			'如皋城控'
			WHEN 'S005345' THEN
			'绍兴滨海新区'
			WHEN 'C000246' THEN
			'四面山投资'
			WHEN 'Y000259' THEN
			'云南国资'
			WHEN 'S000868' THEN
			'金通投资'
			WHEN 'G000420' THEN
			'凯华'
			WHEN 'H000363' THEN
			'华数'
			WHEN 'G000255' THEN
			'广东铁路建设投资集团'
			WHEN 'J000554' THEN
			'汪清农商行'
			WHEN 'X000467' THEN
			'远东传动'
			WHEN 'B000192' THEN
			'同仁堂'
			WHEN 'S000509' THEN
			'博汇纸业'
			WHEN 'S006178' THEN
			'联想集团'
			WHEN 'Z000770' THEN
			'中行佳木斯分行'
			WHEN 'P000035' THEN
			'莆田城投集团'
			WHEN 'J000314' THEN
			'南湖投资'
			WHEN 'T000161' THEN
			'唐山城投'
			WHEN 'S006179' THEN
			'金开连泰'
			WHEN 'S006180' THEN
			'佳沃'
			WHEN 'S006181' THEN
			'中铁一局'
			WHEN 'J000315' THEN
			'双良空调'
			WHEN 'S006182' THEN
			'浙南科技建投'
			WHEN 'B000193' THEN
			'歌华有线'
			WHEN 'H000749' THEN
			'怀集农商行'
			WHEN 'Z000771' THEN
			'中国重工'
			WHEN 'N000144' THEN
			'宁波海运'
			WHEN 'M000021' THEN
			'眉山国资运营'
			WHEN 'S000510' THEN
			'兴城发展'
			WHEN 'Z000772' THEN
			'渝中国有资产'
			WHEN 'T000162' THEN
			'临港投资'
			WHEN 'G000256' THEN
			'国开行浙江分行'
			WHEN 'S006183' THEN
			'环球租赁'
			WHEN 'S006184' THEN
			'江北开投'
			WHEN 'S006185' THEN
			'青田国资'
			WHEN 'S006186' THEN
			'八达岭奥莱'
			WHEN 'S006187' THEN
			'金牛兴业'
			WHEN 'S006188' THEN
			'焱九保理'
			WHEN 'S006189' THEN
			'中梁地产'
			WHEN 'S006190' THEN
			'众邦银行'
			WHEN 'S006191' THEN
			'中龙租赁'
			WHEN 'S006165' THEN
			'洪通燃气'
			WHEN 'C000302' THEN
			'建桥实业'
			WHEN 'Z001697' THEN
			'中华人寿'
			WHEN 'S000580' THEN
			'山东高速'
			WHEN 'N000267' THEN
			'江北新城投资'
			WHEN 'S000869' THEN
			'山田实业'
			WHEN 'Z000773' THEN
			'中国平安'
			WHEN 'J000555' THEN
			'金花投资集团'
			WHEN 'Q000063' THEN
			'群升集团'
			WHEN 'S000511' THEN
			'川投能源'
			WHEN 'M000022' THEN
			'恒丰纸业'
			WHEN 'B000194' THEN
			'燕京啤酒'
			WHEN 'S000512' THEN
			'南山铝业'
			WHEN 'Z000774' THEN
			'中信海直'
			WHEN 'A000070' THEN
			'泰尔股份'
			WHEN 'S006192' THEN
			'香港电讯'
			WHEN 'D000105' THEN
			'东华软件'
			WHEN 'T000163' THEN
			'华天科技'
			WHEN 'S001290' THEN
			'威新软件'
			WHEN 'W000119' THEN
			'文山城投'
			WHEN 'S000513' THEN
			'江苏银行苏州分行'
			WHEN 'S006193' THEN
			'来宾农合行'
			WHEN 'S006194' THEN
			'国房集团'
			WHEN 'Y000145' THEN
			'伊州财通国资'
			WHEN 'C000111' THEN
			'麓山控股集团'
			WHEN 'X000167' THEN
			'兴业银行长沙分行'
			WHEN 'W000120' THEN
			'武汉车都集团'
			WHEN 'S006195' THEN
			'国祥投发'
			WHEN 'S006196' THEN
			'惠众置业'
			WHEN 'S006197' THEN
			'中鑫集团'
			WHEN 'S005346' THEN
			'上海银行深圳分行'
			WHEN 'J000354' THEN
			'欧邦塑胶'
			WHEN 'Z001212' THEN
			'郑州公用集团'
			WHEN 'N000268' THEN
			'南京港华燃气'
			WHEN 'Q000064' THEN
			'青岛啤酒'
			WHEN 'B000196' THEN
			'宝钢股份'
			WHEN 'B000195' THEN
			'中国宝武'
			WHEN 'J000316' THEN
			'江西铜业'
			WHEN 'S000514' THEN
			'四川长虹'
			WHEN 'D000106' THEN
			'弘佳物流'
			WHEN 'J000317' THEN
			'江南阀门'
			WHEN 'Z000863' THEN
			'镇江大港建筑'
			WHEN 'D000107' THEN
			'高鑫投资'
			WHEN 'S000515' THEN
			'鲁丽木业'
			WHEN 'S005347' THEN
			'老坝港开发'
			WHEN 'J000318' THEN
			'瑞洁管业'
			WHEN 'N000145' THEN
			'null'
			WHEN 'T000164' THEN
			'中科遥感'
			WHEN 'N000146' THEN
			'浦口水务建设'
			WHEN 'D000108' THEN
			'大丰港农业'
			WHEN 'J000319' THEN
			'古运河投资'
			WHEN 'D000109' THEN
			'德天御生态'
			WHEN 'A000071' THEN
			'恩龙园林'
			WHEN 'S005348' THEN
			'交行山东分行'
			WHEN 'Z000855' THEN
			'新澳实业'
			WHEN 'Z001068' THEN
			'英特集团'
			WHEN 'S005349' THEN
			'民生银行长沙分行'
			WHEN 'H000900' THEN
			'望海潮建设'
			WHEN 'S000516' THEN
			'威楠高科'
			WHEN 'H000901' THEN
			'河钢融资租赁'
			WHEN 'Z001511' THEN
			'中建投融资租赁(上海)'
			WHEN 'S000732' THEN
			'江泉热电'
			WHEN 'H000525' THEN
			'邢台农商行'
			WHEN 'C000379' THEN
			'赤峰国资集团'
			WHEN 'Y000332' THEN
			'二滩水务'
			WHEN 'F000170' THEN
			'安居投资'
			WHEN 'C000410' THEN
			'长安新生'
			WHEN 'G000664' THEN
			'国投'
			WHEN 'J000320' THEN
			'龙腾坤鑫'
			WHEN 'N000147' THEN
			'中陆港(宁夏)建设'
			WHEN 'J000321' THEN
			'太湖湾旅游'
			WHEN 'T000165' THEN
			'帝达地热'
			WHEN 'J000778' THEN
			'京源科技'
			WHEN 'Z000775' THEN
			'长兴经开建设'
			WHEN 'C000380' THEN
			'南岸资管'
			WHEN 'X000447' THEN
			'新疆九鼎'
			WHEN 'S001291' THEN
			'机场集团'
			WHEN 'L000292' THEN
			'芦山农信社'
			WHEN 'C000303' THEN
			'白沙建设'
			WHEN 'A000159' THEN
			'安踏体育'
			WHEN 'R000029' THEN
			'金鑫交通工程'
			WHEN 'H000364' THEN
			'杭州余杭经济开发建设'
			WHEN 'C000112' THEN
			'长影集团'
			WHEN 'Z000776' THEN
			'中国宏桥'
			WHEN 'Z001359' THEN
			'晟众城建'
			WHEN 'G000493' THEN
			'国能四川发电'
			WHEN 'S001067' THEN
			'潞安环能'
			WHEN 'Y000302' THEN
			'云南房产开发'
			WHEN 'Z001069' THEN
			'格力房产'
			WHEN 'T000343' THEN
			'天洁集团'
			WHEN 'L000293' THEN
			'泸州高投集团'
			WHEN 'Z001070' THEN
			'浙江交工'
			WHEN 'W000186' THEN
			'武汉政建设集团'
			WHEN 'S000733' THEN
			'十一冶集团'
			WHEN 'T000229' THEN
			'天自有源'
			WHEN 'L000130' THEN
			'绿能集团'
			WHEN 'S000517' THEN
			'上汽财务'
			WHEN 'S000518' THEN
			'汕头投资'
			WHEN 'N000148' THEN
			'南京银行南通分行'
			WHEN 'H000365' THEN
			'淮安新城投资开发'
			WHEN 'S000519' THEN
			'上海银行南京分行'
			WHEN 'D000158' THEN
			'亿达发展'
			WHEN 'J000381' THEN
			'海安农商行'
			WHEN 'S006198' THEN
			'大华银行'
			WHEN 'S006199' THEN
			'时代瑞鼎'
			WHEN 'S006200' THEN
			'华侨银行'
			WHEN 'S006201' THEN
			'新加坡港务'
			WHEN 'S006202' THEN
			'UPL'
			WHEN 'S006203' THEN
			'科翔股份'
			WHEN 'B000259' THEN
			'博时资本管理'
			WHEN 'H000526' THEN
			'上海华泰证券资管'
			WHEN 'N000230' THEN
			'农银汇理资管'
			WHEN 'Z001310' THEN
			'节能风电'
			WHEN 'G000469' THEN
			'关岭城建'
			WHEN 'S000980' THEN
			'丰汇投资'
			WHEN 'H000701' THEN
			'中岳城投'
			WHEN 'C000278' THEN
			'金潼建投'
			WHEN 'S006204' THEN
			'美团'
			WHEN 'Y000213' THEN
			'月星集团'
			WHEN 'G000358' THEN
			'粤运交通'
			WHEN 'Z001071' THEN
			'中国银行(香港)'
			WHEN 'X000250' THEN
			'汇丰'
			WHEN 'S006205' THEN
			'豪森股份'
			WHEN 'S006206' THEN
			'金富科技'
			WHEN 'S006207' THEN
			'五洲特纸'
			WHEN 'H000420' THEN
			'淮安机场'
			WHEN 'Q000102' THEN
			'前海人寿'
			WHEN 'S006208' THEN
			'中建国际投资'
			WHEN 'S006209' THEN
			'象屿金控'
			WHEN 'W000187' THEN
			'无锡住房保障建设'
			WHEN 'Y000440' THEN
			'玉溪建投'
			WHEN 'S006210' THEN
			'皖投置业'
			WHEN 'H000527' THEN
			'绿能高科'
			WHEN 'S006211' THEN
			'北京银行石家庄分行'
			WHEN 'S006212' THEN
			'成都建工'
			WHEN 'S006213' THEN
			'成华国资'
			WHEN 'S006214' THEN
			'国立保理'
			WHEN 'S006215' THEN
			'城阳开发建投'
			WHEN 'S006216' THEN
			'中铁十一'
			WHEN 'S006217' THEN
			'柳州城建集团'
			WHEN 'S006218' THEN
			'西城投资'
			WHEN 'S006219' THEN
			'宁海新城建投'
			WHEN 'X000251' THEN
			'旭辉集团'
			WHEN 'S006220' THEN
			'宁乡文旅'
			WHEN 'D000180' THEN
			'东风雪铁龙金融'
			WHEN 'S000870' THEN
			'深圳彩生活'
			WHEN 'S006154' THEN
			'恒瑞高新'
			WHEN 'W000303' THEN
			'武汉开投'
			WHEN 'N000168' THEN
			'绿港集团'
			WHEN 'S006221' THEN
			'东正金融'
			WHEN 'D000159' THEN
			'远东企业集团'
			WHEN 'Y000333' THEN
			'盐城灌东开发公司'
			WHEN 'Z001072' THEN
			'天台农商行'
			WHEN 'S006222' THEN
			'宝丽迪'
			WHEN 'S006223' THEN
			'滨海远景城建'
			WHEN 'K000075' THEN
			'昆仑金融租赁'
			WHEN 'Z001565' THEN
			'中梁控股'
			WHEN 'H000624' THEN
			'衡水农商行'
			WHEN 'H000625' THEN
			'长淮信达'
			WHEN 'X000311' THEN
			'兴业银行青岛分行'
			WHEN 'X000168' THEN
			'富蕴国资'
			WHEN 'Z001213' THEN
			'兴业绿建'
			WHEN 'T000166' THEN
			'新滨江开发'
			WHEN 'S006224' THEN
			'北京宏利'
			WHEN 'S006225' THEN
			'中化香港集团'
			WHEN 'S006226' THEN
			'中泛控股'
			WHEN 'H000366' THEN
			'湖南公路建投'
			WHEN 'S000521' THEN
			'京博控股'
			WHEN 'S000520' THEN
			'红星美凯龙'
			WHEN 'Z000777' THEN
			'中国邮政'
			WHEN 'L000102' THEN
			'岚桥集团'
			WHEN 'Q000065' THEN
			'宿迁水务集团'
			WHEN 'S006227' THEN
			'吉凤投开'
			WHEN 'S006228' THEN
			'利扬芯片'
			WHEN 'S006229' THEN
			'蚂蚁集团'
			WHEN 'S006230' THEN
			'肥城城投'
			WHEN 'S006231' THEN
			'柳州文旅集团'
			WHEN 'S006232' THEN
			'紫金租赁'
			WHEN 'S006233' THEN
			'上海中心'
			WHEN 'S006234' THEN
			'电建物业'
			WHEN 'S006235' THEN
			'前海桂金租赁'
			WHEN 'D000181' THEN
			'东方日升'
			WHEN 'H000626' THEN
			'海南银行'
			WHEN 'Z001214' THEN
			'汇源果汁'
			WHEN 'C000122' THEN
			'常州公共住房'
			WHEN 'R000051' THEN
			'仁怀房建'
			WHEN 'C000247' THEN
			'新港经济发展'
			WHEN 'S000522' THEN
			'恒丰橡塑'
			WHEN 'X000169' THEN
			'恒源股份'
			WHEN 'S000523' THEN
			'东证资管'
			WHEN 'N000339' THEN
			'六合建设'
			WHEN 'N000149' THEN
			'海曙广聚资产'
			WHEN 'Q000066' THEN
			'莱西资产运营'
			WHEN 'T000195' THEN
			'台安供热'
			WHEN 'S006236' THEN
			'中马控股'
			WHEN 'S000524' THEN
			'开达投资'
			WHEN 'S006237' THEN
			'辽宁港口'
			WHEN 'Y000166' THEN
			'营口供热公司'
			WHEN 'S006238' THEN
			'东实集团'
			WHEN 'S006239' THEN
			'步科股份'
			WHEN 'S006240' THEN
			'金达莱'
			WHEN 'S006241' THEN
			'日月明'
			WHEN 'S006242' THEN
			'大唐资本'
			WHEN 'H000805' THEN
			'霍山应流'
			WHEN 'T000313' THEN
			'建安城投'
			WHEN 'J000666' THEN
			'古城国投'
			WHEN 'F000171' THEN
			'福州国资'
			WHEN 'A000160' THEN
			'阿克苏纺织城'
			WHEN 'Z001360' THEN
			'中建方程'
			WHEN 'B000384' THEN
			'海科金集团'
			WHEN 'G000421' THEN
			'南康城发集团'
			WHEN 'Z001215' THEN
			'高科发展'
			WHEN 'X000170' THEN
			'兴安盟城投'
			WHEN 'T000262' THEN
			'新金融投资'
			WHEN 'G000422' THEN
			'天健兴业'
			WHEN 'L000103' THEN
			'廊坊建设发展'
			WHEN 'A000144' THEN
			'利辛农商行'
			WHEN 'Z000778' THEN
			'工行廊坊开发区支行'
			WHEN 'Z001073' THEN
			'恒大人寿'
			WHEN 'L000219' THEN
			'罗源农信社'
			WHEN 'Z000921' THEN
			'大都会人寿'
			WHEN 'C000411' THEN
			'瀚宇投资'
			WHEN 'T000290' THEN
			'太仓民生村镇行'
			WHEN 'J000792' THEN
			'梅里投资'
			WHEN 'S000568' THEN
			'润企投资'
			WHEN 'X000365' THEN
			'昌吉农商行'
			WHEN 'S000525' THEN
			'金岭集团'
			WHEN 'S001292' THEN
			'大业股份'
			WHEN 'Z001311' THEN
			'中华保险'
			WHEN 'J000322' THEN
			'西城集团'
			WHEN 'C000113' THEN
			'长春现代农业'
			WHEN 'Y000146' THEN
			'云南路建集团'
			WHEN 'F000084' THEN
			'丰田通商'
			WHEN 'G000257' THEN
			'东太农业'
			WHEN 'H000367' THEN
			'易辰孚特'
			WHEN 'B000260' THEN
			'四方股份'
			WHEN 'Z001074' THEN
			'平阳农商行'
			WHEN 'S000734' THEN
			'华瑞银行'
			WHEN 'Z001075' THEN
			'光大银行上海分行'
			WHEN 'Q000067' THEN
			'城阳开投'
			WHEN 'H000368' THEN
			'高新创投'
			WHEN 'H000369' THEN
			'宏信证券'
			WHEN 'S001327' THEN
			'山东发展投资集团'
			WHEN 'Z001076' THEN
			'中天金融'
			WHEN 'Z000779' THEN
			'大足石刻国旅'
			WHEN 'Y000214' THEN
			'银川通联'
			WHEN 'T000167' THEN
			'天能动力'
			WHEN 'J000323' THEN
			'交行湖州分行'
			WHEN 'S006243' THEN
			'毕马威企业咨询北京分公司'
			WHEN 'C000183' THEN
			'武隆旅游'
			WHEN 'J000452' THEN
			'苏美达'
			WHEN 'Y000394' THEN
			'腾冲实兴邦'
			WHEN 'G000563' THEN
			'顺控城投'
			WHEN 'J000738' THEN
			'兴海港务'
			WHEN 'J000556' THEN
			'聚龙股份'
			WHEN 'Z000922' THEN
			'平安人寿'
			WHEN 'S000871' THEN
			'万通集团'
			WHEN 'C000248' THEN
			'昌吉城投'
			WHEN 'S000872' THEN
			'深圳东投'
			WHEN 'H000702' THEN
			'海安建投'
			WHEN 'H000627' THEN
			'惠州交投'
			WHEN 'J000453' THEN
			'晋中开发农商行'
			WHEN 'S006255' THEN
			'稼轩'
			WHEN 'S006256' THEN
			'会通股份'
			WHEN 'S006257' THEN
			'健之佳'
			WHEN 'S006258' THEN
			'清控保理'
			WHEN 'S006259' THEN
			'高新投'
			WHEN 'S006260' THEN
			'徐工集团'
			WHEN 'S006261' THEN
			'衢州金控'
			WHEN 'S006262' THEN
			'上投资产'
			WHEN 'S006263' THEN
			'迪链国际保理'
			WHEN 'S006264' THEN
			'深圳特建投'
			WHEN 'S006265' THEN
			'海盐城投'
			WHEN 'S006266' THEN
			'金坛晨林经发'
			WHEN 'S006267' THEN
			'嘉兴路通建投'
			WHEN 'S006268' THEN
			'金开国投'
			WHEN 'S006269' THEN
			'金投集团'
			WHEN 'S006270' THEN
			'北仑城投'
			WHEN 'S006271' THEN
			'宁波商贸'
			WHEN 'S006272' THEN
			'衢江建投'
			WHEN 'S006273' THEN
			'遂昌国投'
			WHEN 'S006274' THEN
			'财信投资'
			WHEN 'S006275' THEN
			'和惠保理'
			WHEN 'S006276' THEN
			'中煤三建'
			WHEN 'S006277' THEN
			'横琴人寿'
			WHEN 'S006278' THEN
			'三亚旅文集团'
			WHEN 'S006279' THEN
			'招商仁和人寿'
			WHEN 'S006280' THEN
			'中车保理'
			WHEN 'S006281' THEN
			'红高粱集团'
			WHEN 'S006282' THEN
			'长寿商贸物流'
			WHEN 'S006283' THEN
			'中冶建工'
			WHEN 'S006284' THEN
			'平江城投'
			WHEN 'S006285' THEN
			'东磁稀土'
			WHEN 'G000298' THEN
			'环投南沙'
			WHEN 'S000873' THEN
			'齐河农商行'
			WHEN 'Q000118' THEN
			'全椒城建'
			WHEN 'X000312' THEN
			'兴业银行滁州分行'
			WHEN 'G000299' THEN
			'广州环投集团'
			WHEN 'H000628' THEN
			'汇丰银行上海分行'
			WHEN 'N000269' THEN
			'余姚农商行'
			WHEN 'Z001216' THEN
			'中融信托'
			WHEN 'S006286' THEN
			'臻龙集团'
			WHEN 'S006287' THEN
			'市交投集团'
			WHEN 'S006288' THEN
			'灞桥投资'
			WHEN 'S006289' THEN
			'西湖城投'
			WHEN 'S006290' THEN
			'圆宏集团'
			WHEN 'S001068' THEN
			'花园水城城投'
			WHEN 'T000291' THEN
			'泰通投资'
			WHEN 'J000667' THEN
			'禹和水利'
			WHEN 'S006291' THEN
			'上海国际货币'
			WHEN 'S001069' THEN
			'兰陵村镇行'
			WHEN 'J000668' THEN
			'崇义农商行'
			WHEN 'H000629' THEN
			'华信信托'
			WHEN 'B000299' THEN
			'北方信托'
			WHEN 'Z001217' THEN
			'中铁信托'
			WHEN 'H000630' THEN
			'华澳信托'
			WHEN 'W000229' THEN
			'温州民商银行'
			WHEN 'L000190' THEN
			'东港农商行'
			WHEN 'Z001218' THEN
			'自贡银行'
			WHEN 'Z001219' THEN
			'中国外贸信托'
			WHEN 'A000124' THEN
			'国元信托'
			WHEN 'A000125' THEN
			'安信信托'
			WHEN 'B000300' THEN
			'百瑞信托'
			WHEN 'R000052' THEN
			'瑞士银行'
			WHEN 'P000073' THEN
			'平安信托'
			WHEN 'S000874' THEN
			'四川信托'
			WHEN 'J000557' THEN
			'维尔利'
			WHEN 'S000875' THEN
			'申万宏源西部证券'
			WHEN 'Z001220' THEN
			'中泰信托'
			WHEN 'J000558' THEN
			'吉林省信托'
			WHEN 'B000301' THEN
			'北京信托'
			WHEN 'H000631' THEN
			'淮北农商行'
			WHEN 'D000182' THEN
			'东莞信托'
			WHEN 'Z001221' THEN
			'中信证券(山东)'
			WHEN 'K000053' THEN
			'昆仑信托'
			WHEN 'Z001222' THEN
			'中粮信托'
			WHEN 'D000183' THEN
			'大华银行(中国)'
			WHEN 'S000526' THEN
			'东宇工贸集团'
			WHEN 'X000171' THEN
			'贾汪旅游投资'
			WHEN 'K000067' THEN
			'昆明基建'
			WHEN 'S006292' THEN
			'淄博金控'
			WHEN 'S006293' THEN
			'贝克麦坚时上海代表处'
			WHEN 'S006294' THEN
			'广鑫投发'
			WHEN 'S006296' THEN
			'奔驰租赁'
			WHEN 'H000750' THEN
			'洪雅联社'
			WHEN 'Z001223' THEN
			'浙金信托'
			WHEN 'H000632' THEN
			'华宸信托'
			WHEN 'G000423' THEN
			'国联信托'
			WHEN 'H000633' THEN
			'湖南信托'
			WHEN 'G000424' THEN
			'国盛资管'
			WHEN 'J000559' THEN
			'建信信托'
			WHEN 'G000425' THEN
			'揭阳农商行'
			WHEN 'A000126' THEN
			'岳西农商行'
			WHEN 'P000074' THEN
			'盘谷银行(中国)'
			WHEN 'D000184' THEN
			'达州商行'
			WHEN 'G000426' THEN
			'粤财信托'
			WHEN 'T000263' THEN
			'唐山银行'
			WHEN 'X000313' THEN
			'新时代信托'
			WHEN 'D000185' THEN
			'大业信托'
			WHEN 'Z001224' THEN
			'中建投信托'
			WHEN 'S000876' THEN
			'山西信托'
			WHEN 'W000217' THEN
			'万向信托'
			WHEN 'X000314' THEN
			'厦门国际信托'
			WHEN 'S000527' THEN
			'上海国泰君安'
			WHEN 'C000249' THEN
			'成都金融城'
			WHEN 'W000218' THEN
			'万和证券'
			WHEN 'S000877' THEN
			'陕国投'
			WHEN 'H000634' THEN
			'华宝信托'
			WHEN 'L000191' THEN
			'凉山商行'
			WHEN 'G000427' THEN
			'高明农商行'
			WHEN 'W000121' THEN
			'芜湖扬子农商行'
			WHEN 'A000127' THEN
			'无为农商行'
			WHEN 'Y000260' THEN
			'友利银行(中国)'
			WHEN 'S006297' THEN
			'万达香港'
			WHEN 'H000635' THEN
			'华鑫信托'
			WHEN 'S000878' THEN
			'上海信托'
			WHEN 'T000168' THEN
			'铁岭新城'
			WHEN 'T000169' THEN
			'铁岭财资经营'
			WHEN 'P000036' THEN
			'平安银行佛山分行'
			WHEN 'S006298' THEN
			'仲景食品'
			WHEN 'S006299' THEN
			'康平科技'
			WHEN 'S006300' THEN
			'汇创达'
			WHEN 'S006301' THEN
			'椒江社发集团'
			WHEN 'S006302' THEN
			'盈科(上海)'
			WHEN 'J000669' THEN
			'嘉禾集团'
			WHEN 'S006303' THEN
			'国浩杭州'
			WHEN 'S006304' THEN
			'中汇'
			WHEN 'S006305' THEN
			'西电保理'
			WHEN 'Z001361' THEN
			'中信银行(国际)'
			WHEN 'S006306' THEN
			'鲁能新能源'
			WHEN 'H000636' THEN
			'鹤山农商行'
			WHEN 'X000315' THEN
			'新余农商行'
			WHEN 'J000560' THEN
			'中旅银行'
			WHEN 'Y000261' THEN
			'阳泉商行'
			WHEN 'C000250' THEN
			'九华农商行'
			WHEN 'Z001225' THEN
			'中海信托'
			WHEN 'H000637' THEN
			'华润信托'
			WHEN 'B000302' THEN
			'北京高华证券'
			WHEN 'L000192' THEN
			'联储证券'
			WHEN 'X000172' THEN
			'厦门农商行'
			WHEN 'J000561' THEN
			'金通证券'
			WHEN 'S000879' THEN
			'苏格兰皇家银行'
			WHEN 'S000880' THEN
			'盂县农商行'
			WHEN 'Z001226' THEN
			'中诚信托'
			WHEN 'X000316' THEN
			'西藏信托'
			WHEN 'J000562' THEN
			'景德镇农商行'
			WHEN 'A000128' THEN
			'望江农商行'
			WHEN 'F000141' THEN
			'国通信托'
			WHEN 'Q000119' THEN
			'秦皇岛银行'
			WHEN 'X000173' THEN
			'电气集团'
			WHEN 'X000317' THEN
			'兴业国际信托'
			WHEN 'H000638' THEN
			'韩亚银行'
			WHEN 'Z001227' THEN
			'中原信托'
			WHEN 'B000197' THEN
			'海淀科技'
			WHEN 'Z000780' THEN
			'南川易博公路'
			WHEN 'Z001362' THEN
			'中行福建分行'
			WHEN 'A000161' THEN
			'枞阳农商行'
			WHEN 'N000150' THEN
			'南宁城建'
			WHEN 'D000110' THEN
			'东营鲁方'
			WHEN 'Z000781' THEN
			'宏达矿业'
			WHEN 'S000528' THEN
			'苏州交通投资'
			WHEN 'H000370' THEN
			'海晟控股'
			WHEN 'Z000782' THEN
			'农行海门市支行'
			WHEN 'H000371' THEN
			'湖州新城公用工程'
			WHEN 'L000104' THEN
			'涟缘水务'
			WHEN 'G000494' THEN
			'方圆地产'
			WHEN 'C000114' THEN
			'湘江集团'
			WHEN 'F000172' THEN
			'封开农商行'
			WHEN 'G000258' THEN
			'桂林银行'
			WHEN 'S001293' THEN
			'车家'
			WHEN 'G000259' THEN
			'高科集团'
			WHEN 'Z000783' THEN
			'南州水务'
			WHEN 'X000174' THEN
			'集合企业'
			WHEN 'D000186' THEN
			'大同银行'
			WHEN 'T000264' THEN
			'天津信托'
			WHEN 'X000318' THEN
			'新韩中国'
			WHEN 'G000428' THEN
			'揭西农商行'
			WHEN 'S000881' THEN
			'山东国信'
			WHEN 'Y000262' THEN
			'雅安商行'
			WHEN 'H000639' THEN
			'华融信托'
			WHEN 'L000193' THEN
			'东方农商行'
			WHEN 'T000265' THEN
			'皖江农商行'
			WHEN 'Q000120' THEN
			'企业银行(中国)'
			WHEN 'W000219' THEN
			'五矿信托'
			WHEN 'D000187' THEN
			'丹东银行'
			WHEN 'X000319' THEN
			'西藏银行'
			WHEN 'L000194' THEN
			'陆家嘴信托'
			WHEN 'D000188' THEN
			'东证融汇'
			WHEN 'B000303' THEN
			'渤海信托'
			WHEN 'H000640' THEN
			'通商农商行'
			WHEN 'A000129' THEN
			'石台农商行'
			WHEN 'J000563' THEN
			'高淳农商行'
			WHEN 'Z001228' THEN
			'华峰石化'
			WHEN 'S000882' THEN
			'四方电气'
			WHEN 'H000641' THEN
			'杭州工商信托'
			WHEN 'X000320' THEN
			'西部信托'
			WHEN 'H000642' THEN
			'鑫正担保'
			WHEN 'Z001229' THEN
			'中航信托'
			WHEN 'J000564' THEN
			'阜宁农商行'
			WHEN 'L000294' THEN
			'六枝农信社'
			WHEN 'S000883' THEN
			'邹平农商行'
			WHEN 'P000075' THEN
			'平安银行上海分行'
			WHEN 'H000528' THEN
			'合肥高新'
			WHEN 'S006307' THEN
			'立方制药'
			WHEN 'S006308' THEN
			'中控技术'
			WHEN 'S006309' THEN
			'明新旭腾'
			WHEN 'K000045' THEN
			'昆明高新技术产业开发'
			WHEN 'S006310' THEN
			'上海国投集团'
			WHEN 'S000735' THEN
			'浒墅技术'
			WHEN 'S006311' THEN
			'杭州水务'
			WHEN 'S006312' THEN
			'路桥城建集团'
			WHEN 'S006313' THEN
			'北仑服务发展'
			WHEN 'S006314' THEN
			'沂水城投'
			WHEN 'S006315' THEN
			'创元建投'
			WHEN 'S006316' THEN
			'新铜都投资'
			WHEN 'S006317' THEN
			'安徽高投'
			WHEN 'S006318' THEN
			'青岛国投'
			WHEN 'S006319' THEN
			'韵达'
			WHEN 'Y000263' THEN
			'营口沿海银行'
			WHEN 'C000251' THEN
			'创兴银行'
			WHEN 'F000142' THEN
			'平潭农商行'
			WHEN 'T000266' THEN
			'铁岭银行'
			WHEN 'A000130' THEN
			'泾县农商行'
			WHEN 'C000252' THEN
			'重庆国际信托'
			WHEN 'G000429' THEN
			'国电安徽电力'
			WHEN 'G000430' THEN
			'国投泰康信托'
			WHEN 'A000131' THEN
			'肥西农商行'
			WHEN 'J000565' THEN
			'江苏信托'
			WHEN 'N000270' THEN
			'南洋商行'
			WHEN 'C000253' THEN
			'长城新盛'
			WHEN 'S000884' THEN
			'爱建信托'
			WHEN 'H000644' THEN
			'华侨银行(中国)'
			WHEN 'N000271' THEN
			'扬子国投'
			WHEN 'G000431' THEN
			'null'
			WHEN 'D000189' THEN
			'大同农商行'
			WHEN 'Y000265' THEN
			'红塔国资'
			WHEN 'G000432' THEN
			'光大信托'
			WHEN 'Z001230' THEN
			'金谷信托'
			WHEN 'Z001231' THEN
			'民生信托'
			WHEN 'C000254' THEN
			'长安国际信托'
			WHEN 'S000885' THEN
			'苏州信托'
			WHEN 'Z001232' THEN
			'雪松国际信托'
			WHEN 'J000566' THEN
			'交银国际信托'
			WHEN 'H000645' THEN
			'华能贵诚信托'
			WHEN 'T000267' THEN
			'铜陵农商行'
			WHEN 'Z001233' THEN
			'紫金信托'
			WHEN 'J000567' THEN
			'睢宁农商行'
			WHEN 'S006320' THEN
			'中航安盟保险'
			WHEN 'C000381' THEN
			'武侯资本'
			WHEN 'W000188' THEN
			'威高集团'
			WHEN 'C000382' THEN
			'武侯发展集团'
			WHEN 'L000295' THEN
			'商城控股'
			WHEN 'S006321' THEN
			'泰华农行'
			WHEN 'G000359' THEN
			'广州投资集团'
			WHEN 'G000360' THEN
			'广州快速交通建设'
			WHEN 'S000736' THEN
			'顺风清洁能源'
			WHEN 'A000078' THEN
			'null'
			WHEN 'S006322' THEN
			'中驭租赁'
			WHEN 'N000231' THEN
			'高新技术开发'
			WHEN 'S000737' THEN
			'浦发银行上海分行'
			WHEN 'Z001077' THEN
			'招行上海分行'
			WHEN 'K000054' THEN
			'库尔勒银行'
			WHEN 'N000272' THEN
			'宁波富达'
			WHEN 'S000529' THEN
			'嘉麟杰'
			WHEN 'H000372' THEN
			'湖北能源'
			WHEN 'S006323' THEN
			'渑池会盟投资'
			WHEN 'H000751' THEN
			'华讯方舟'
			WHEN 'T000170' THEN
			'太原国投'
			WHEN 'G000260' THEN
			'贵阳交通集团'
			WHEN 'K000076' THEN
			'开平农商行'
			WHEN 'S006324' THEN
			'交行吉林分行'
			WHEN 'T000230' THEN
			'天津渤海租赁'
			WHEN 'N000232' THEN
			'兴元实业'
			WHEN 'S000738' THEN
			'如意集团'
			WHEN 'K000046' THEN
			'昆明国资投'
			WHEN 'H000529' THEN
			'null'
			WHEN 'B000261' THEN
			'包头城乡投资'
			WHEN 'A000107' THEN
			'安吉县城西北开发'
			WHEN 'S006325' THEN
			'彩虹新能源'
			WHEN 'S006326' THEN
			'奇峰化纤'
			WHEN 'S006327' THEN
			'中国通信服务'
			WHEN 'S006328' THEN
			'中国民航信息'
			WHEN 'S006329' THEN
			'沈阳公用发展'
			WHEN 'S006330' THEN
			'中教控股'
			WHEN 'S006331' THEN
			'天业节水'
			WHEN 'S006332' THEN
			'常茂生物'
			WHEN 'S006333' THEN
			'联华超市'
			WHEN 'S006334' THEN
			'北青传媒'
			WHEN 'S006335' THEN
			'威高股份'
			WHEN 'S006336' THEN
			'首都信息'
			WHEN 'S006337' THEN
			'大生农业金融'
			WHEN 'S006338' THEN
			'庆铃汽车股份'
			WHEN 'S006339' THEN
			'成都普天'
			WHEN 'S006340' THEN
			'天津津燃公用'
			WHEN 'S006341' THEN
			'盛力达科技'
			WHEN 'S006342' THEN
			'长安民生物流'
			WHEN 'S006343' THEN
			'诺奇'
			WHEN 'S006344' THEN
			'上海复旦'
			WHEN 'S006345' THEN
			'畅捷通'
			WHEN 'S006346' THEN
			'城建设计'
			WHEN 'S006347' THEN
			'三宝科技'
			WHEN 'S006348' THEN
			'中国机械工程'
			WHEN 'S006349' THEN
			'锦江资本'
			WHEN 'S006350' THEN
			'研祥智能'
			WHEN 'S006351' THEN
			'中石化炼化'
			WHEN 'S006352' THEN
			'元征科技'
			WHEN 'S006353' THEN
			'湖南有色金属'
			WHEN 'S006354' THEN
			'中生联合'
			WHEN 'S006355' THEN
			'先进半导体'
			WHEN 'S006356' THEN
			'中车时代电气'
			WHEN 'S006357' THEN
			'中海石油化学'
			WHEN 'S006358' THEN
			'南大苏富特'
			WHEN 'S006359' THEN
			'吉林长龙药业'
			WHEN 'S006360' THEN
			'罗欣药业'
			WHEN 'S006361' THEN
			'升华兰德'
			WHEN 'S006362' THEN
			'上海青浦消防'
			WHEN 'S006363' THEN
			'泰达生物'
			WHEN 'S006364' THEN
			'北斗嘉药业'
			WHEN 'S006365' THEN
			'交大慧谷'
			WHEN 'S006366' THEN
			'浙江永安'
			WHEN 'S006367' THEN
			'海天天线'
			WHEN 'S006368' THEN
			'赛迪顾问'
			WHEN 'S006369' THEN
			'宝德科技集团'
			WHEN 'S006370' THEN
			'大贺传媒'
			WHEN 'S006371' THEN
			'中生北控'
			WHEN 'S006372' THEN
			'瑞远智控'
			WHEN 'S006373' THEN
			'天元铝业'
			WHEN 'S006374' THEN
			'西北实业'
			WHEN 'S006375' THEN
			'浙江展望'
			WHEN 'S006376' THEN
			'长城微光'
			WHEN 'S006377' THEN
			'明华科技'
			WHEN 'S006378' THEN
			'海王英特龙'
			WHEN 'S006379' THEN
			'滨海泰达物流'
			WHEN 'S006380' THEN
			'春立医疗'
			WHEN 'S006381' THEN
			'佐力小贷'
			WHEN 'S006382' THEN
			'鲁证期货'
			WHEN 'S006383' THEN
			'天洁环境'
			WHEN 'S006384' THEN
			'康宁医院'
			WHEN 'S006385' THEN
			'达利食品'
			WHEN 'S006386' THEN
			'创美药业'
			WHEN 'S006387' THEN
			'铁建装备'
			WHEN 'S006388' THEN
			'中盈盛达'
			WHEN 'S006389' THEN
			'弘业期货'
			WHEN 'S006390' THEN
			'巨匠建设'
			WHEN 'S006391' THEN
			'康华医疗'
			WHEN 'S006392' THEN
			'爱得威集团'
			WHEN 'S006393' THEN
			'翼辰实业'
			WHEN 'S006394' THEN
			'泰和小贷'
			WHEN 'S006395' THEN
			'富银融资股份'
			WHEN 'S006396' THEN
			'内蒙古能建'
			WHEN 'S006397' THEN
			'金马能源'
			WHEN 'S006398' THEN
			'河北建设'
			WHEN 'S006399' THEN
			'雅生活服务'
			WHEN 'S006400' THEN
			'天保能源'
			WHEN 'S006401' THEN
			'汇付天下'
			WHEN 'S006402' THEN
			'杉杉品牌'
			WHEN 'S006403' THEN
			'苍南仪表'
			WHEN 'S006404' THEN
			'齐鲁高速'
			WHEN 'S006405' THEN
			'瑞威资管'
			WHEN 'S006406' THEN
			'佳兆业美好'
			WHEN 'S006407' THEN
			'成都高速'
			WHEN 'S006408' THEN
			'开元酒店'
			WHEN 'S006409' THEN
			'盛大在线'
			WHEN 'S006410' THEN
			'日照港裕廊'
			WHEN 'S006411' THEN
			'中集车辆'
			WHEN 'S006412' THEN
			'复宏汉霖'
			WHEN 'S006413' THEN
			'春城热力'
			WHEN 'S006414' THEN
			'蓝光嘉宝服务'
			WHEN 'S006415' THEN
			'云建投混凝土'
			WHEN 'S006416' THEN
			'远大住工'
			WHEN 'S006417' THEN
			'康德莱医械'
			WHEN 'S006418' THEN
			'启明医疗'
			WHEN 'S006419' THEN
			'保利物业'
			WHEN 'S006420' THEN
			'台州水务'
			WHEN 'S006421' THEN
			'华和控股'
			WHEN 'S006422' THEN
			'金融街物业'
			WHEN 'S006423' THEN
			'嘉兴燃气'
			WHEN 'S006424' THEN
			'凤祥股份'
			WHEN 'S006425' THEN
			'农夫山泉'
			WHEN 'Z001078' THEN
			'温岭农商行'
			WHEN 'P000059' THEN
			'浦江农商行'
			WHEN 'S006426' THEN
			'桑植农商行'
			WHEN 'S006427' THEN
			'荣昌生物'
			WHEN 'S006428' THEN
			'天兆猪业'
			WHEN 'B000304' THEN
			'昆仑万维'
			WHEN 'T000268' THEN
			'九江国际'
			WHEN 'G000261' THEN
			'立白集团'
			WHEN 'H000373' THEN
			'海伟集团'
			WHEN 'K000055' THEN
			'开化农商行'
			WHEN 'S000886' THEN
			'吴中城投'
			WHEN 'S000530' THEN
			'赛格集团'
			WHEN 'S000887' THEN
			'龙阳天府建投'
			WHEN 'B000305' THEN
			'同仁堂科技'
			WHEN 'Y000266' THEN
			'栖凤城投'
			WHEN 'Z000784' THEN
			'郑州华晶'
			WHEN 'H000646' THEN
			'咸宁农商行'
			WHEN 'A000072' THEN
			'豫北金铅'
			WHEN 'A000132' THEN
			'宿松农商行'
			WHEN 'Z000785' THEN
			'二公局'
			WHEN 'Z000786' THEN
			'重庆建工'
			WHEN 'Z000787' THEN
			'重庆经开区开发建'
			WHEN 'Z000788' THEN
			'长寿经开投'
			WHEN 'Z000789' THEN
			'涪陵新城开发'
			WHEN 'Z000790' THEN
			'建行涪陵分行'
			WHEN 'B000359' THEN
			'豆神教育'
			WHEN 'S006429' THEN
			'东亚药业'
			WHEN 'S005701' THEN
			'神州优车'
			WHEN 'S006690' THEN
			'莲都国投'
			WHEN 'S006691' THEN
			'石狮国发'
			WHEN 'S006692' THEN
			'合生地产'
			WHEN 'S006693' THEN
			'巨峰科创'
			WHEN 'S006694' THEN
			'甬兴证券'
			WHEN 'L000105' THEN
			'洛娃集团'
			WHEN 'Z001096' THEN
			'仲利国际'
			WHEN 'H000374' THEN
			'海宁皮城'
			WHEN 'F000085' THEN
			'马坑矿业'
			WHEN 'Y000267' THEN
			'远洲集团'
			WHEN 'X000252' THEN
			'江苏新华报业'
			WHEN 'Z001363' THEN
			'光大水务'
			WHEN 'D000224' THEN
			'亚通石化'
			WHEN 'S001070' THEN
			'卓越商管'
			WHEN 'Z000791' THEN
			'中信银行镇江分行'
			WHEN 'W000122' THEN
			'温州开投'
			WHEN 'X000253' THEN
			'彭寓公司'
			WHEN 'S001071' THEN
			'蛟龙投资'
			WHEN 'X000254' THEN
			'厦门住宅集团'
			WHEN 'J000670' THEN
			'丰县农商行'
			WHEN 'Z000792' THEN
			'重庆三峡银行黔江支行'
			WHEN 'T000171' THEN
			'天津环城基设'
			WHEN 'S000531' THEN
			'四川铁路集团'
			WHEN 'H000375' THEN
			'宜昌交运'
			WHEN 'X000175' THEN
			'厦门国际银行'
			WHEN 'G000262' THEN
			'粤科金融集团'
			WHEN 'X000255' THEN
			'西藏城投'
			WHEN 'H000376' THEN
			'菏泽投资发展集团'
			WHEN 'X000256' THEN
			'厦门金圆投资集团'
			WHEN 'Y000215' THEN
			'翠屏农商行'
			WHEN 'S001072' THEN
			'鹏欣集团'
			WHEN 'G000361' THEN
			'国能福建能源'
			WHEN 'N000233' THEN
			'南京公用'
			WHEN 'F000173' THEN
			'福日电子'
			WHEN 'Z001512' THEN
			'遵义住房建投'
			WHEN 'B000262' THEN
			'紫光通信'
			WHEN 'L000165' THEN
			'null'
			WHEN 'J000454' THEN
			'新会农商行'
			WHEN 'S006695' THEN
			'杭华股份'
			WHEN 'S005702' THEN
			'洋口港供水'
			WHEN 'Z000793' THEN
			'中航机电'
			WHEN 'Z000794' THEN
			'中建安装'
			WHEN 'N000151' THEN
			'蒙草生态'
			WHEN 'Z000795' THEN
			'德感建设'
			WHEN 'H000377' THEN
			'洪泽现代新农投'
			WHEN 'G000624' THEN
			'光阳安泰'
			WHEN 'Z000796' THEN
			'重庆三友制造'
			WHEN 'L000106' THEN
			'浏阳水利建投'
			WHEN 'S000532' THEN
			'星瀚材料'
			WHEN 'L000107' THEN
			'浏阳城建'
			WHEN 'N000152' THEN
			'珍珠泉经济发展'
			WHEN 'Z000797' THEN
			'招行南宁分行'
			WHEN 'L000166' THEN
			'临安农商行'
			WHEN 'B000263' THEN
			'宝钢资源'
			WHEN 'H000378' THEN
			'海航酒店'
			WHEN 'C000184' THEN
			'乌江电力'
			WHEN 'J000324' THEN
			'吉林交通投资集团'
			WHEN 'Q000103' THEN
			'青岛出版集团'
			WHEN 'S006430' THEN
			'声迅股份'
			WHEN 'S006431' THEN
			'瑞丰新材'
			WHEN 'N000234' THEN
			'东南国投'
			WHEN 'C000304' THEN
			'楚雄农商行'
			WHEN 'F000174' THEN
			'福建农信社'
			WHEN 'X000469' THEN
			'西藏天路'
			WHEN 'J000797' THEN
			'石英股份'
			WHEN 'F000217' THEN
			'富腾发展'
			WHEN 'B000306' THEN
			'掌趣科技'
			WHEN 'H000647' THEN
			'华润置地'
			WHEN 'Z001513' THEN
			'大搜车'
			WHEN 'S006696' THEN
			'淮安兴盛'
			WHEN 'L000167' THEN
			'金阳新城建设'
			WHEN 'T000231' THEN
			'三福集团'
			WHEN 'Z001079' THEN
			'浙国资本'
			WHEN 'S000739' THEN
			'陕西投资集团'
			WHEN 'S006432' THEN
			'国浩郑州'
			WHEN 'S006433' THEN
			'新韩金融'
			WHEN 'S006434' THEN
			'友利金融'
			WHEN 'S006435' THEN
			'明德控股'
			WHEN 'S006436' THEN
			'广东农垦'
			WHEN 'S006437' THEN
			'安建保理'
			WHEN 'S006438' THEN
			'华融资管'
			WHEN 'S006439' THEN
			'凯嘉发电'
			WHEN 'S006440' THEN
			'象山滨海投资'
			WHEN 'S006441' THEN
			'宣城城建'
			WHEN 'L000195' THEN
			'连云港房政'
			WHEN 'T000269' THEN
			'津劝业'
			WHEN 'J000568' THEN
			'沿海东方置业'
			WHEN 'R000053' THEN
			'任兴集团'
			WHEN 'Y000268' THEN
			'云南黄金集团'
			WHEN 'N000273' THEN
			'弘阳置地'
			WHEN 'J000779' THEN
			'万年国资'
			WHEN 'H000530' THEN
			'海航投资'
			WHEN 'Z001080' THEN
			'环球租赁'
			WHEN 'Q000159' THEN
			'青岛融海投资'
			WHEN 'S006442' THEN
			'盈科所'
			WHEN 'S000740' THEN
			'新华医疗'
			WHEN 'S006443' THEN
			'浙商银行北京分行'
			WHEN 'W000278' THEN
			'城开实业发展'
			WHEN 'G000599' THEN
			'绿色金控'
			WHEN 'Y000216' THEN
			'世纪新城公司'
			WHEN 'S006444' THEN
			'艾力斯'
			WHEN 'S006445' THEN
			'协和电子'
			WHEN 'S006446' THEN
			'泰兴城投'
			WHEN 'S006447' THEN
			'大唐保理'
			WHEN 'S006448' THEN
			'求雨山文投'
			WHEN 'S006449' THEN
			'邓州国控运营' ELSE short_name
	END
	);

-- sql5
UPDATE qb_news_public_opinion
SET short_name = (
	CASE
			issuer_code
			WHEN 'S006450' THEN
			'广物金属'
			WHEN 'S006451' THEN
			'西安城融租赁'
			WHEN 'S006452' THEN
			'晋宁国资'
			WHEN 'S006453' THEN
			'菏泽金地土开'
			WHEN 'W000189' THEN
			'万家基金'
			WHEN 'G000362' THEN
			'广厦控股'
			WHEN 'G000363' THEN
			'万通房地产'
			WHEN 'H000531' THEN
			'海航航空集团'
			WHEN 'T000232' THEN
			'唐钢集团'
			WHEN 'M000074' THEN
			'东坡益民工程'
			WHEN 'S006697' THEN
			'姜堰经开'
			WHEN 'S006698' THEN
			'丰城发投'
			WHEN 'H000643' THEN
			'宏光正商'
			WHEN 'J000569' THEN
			'金智科技'
			WHEN 'Z000798' THEN
			'中卫建投'
			WHEN 'Z000799' THEN
			'恩悠工贸'
			WHEN 'S000533' THEN
			'姜仔鸭'
			WHEN 'T000172' THEN
			'金泰环保热电'
			WHEN 'B000198' THEN
			'华耐立家'
			WHEN 'J000325' THEN
			'交行宁夏分行'
			WHEN 'K000030' THEN
			'昆山高新集团'
			WHEN 'S006454' THEN
			'亿田智能'
			WHEN 'S006455' THEN
			'经发集团'
			WHEN 'N000274' THEN
			'宁乡国资'
			WHEN 'G000433' THEN
			'国电融资'
			WHEN 'H000648' THEN
			'华侨城文旅'
			WHEN 'Q000121' THEN
			'黔西水资源开发'
			WHEN 'F000143' THEN
			'肥西城建'
			WHEN 'S005703' THEN
			'海国油'
			WHEN 'W000193' THEN
			'武汉新能实业'
			WHEN 'F000123' THEN
			'福建阳光集团'
			WHEN 'S006457' THEN
			'兰剑智能'
			WHEN 'S005704' THEN
			'奥锐特'
			WHEN 'S005705' THEN
			'品渥食品'
			WHEN 'S005706' THEN
			'百亚股份'
			WHEN 'S005707' THEN
			'天元股份'
			WHEN 'S005708' THEN
			'竞业达'
			WHEN 'S005709' THEN
			'思瑞浦'
			WHEN 'S005710' THEN
			'福然德'
			WHEN 'S006458' THEN
			'新惠建投'
			WHEN 'S005711' THEN
			'临沂罗美城建'
			WHEN 'X000145' THEN
			'新凤鸣'
			WHEN 'N000275' THEN
			'奥体建设'
			WHEN 'S000888' THEN
			'空港集团'
			WHEN 'Q000122' THEN
			'西海岸发展集团'
			WHEN 'Z001234' THEN
			'农行青岛市南第二支行'
			WHEN 'G000222' THEN
			'广州发展电力'
			WHEN 'C000255' THEN
			'盛锦资管'
			WHEN 'P000108' THEN
			'葡萄牙'
			WHEN 'G000263' THEN
			'国电建投内蒙古能源'
			WHEN 'J000326' THEN
			'德和生物'
			WHEN 'S000741' THEN
			'证通电子'
			WHEN 'F000175' THEN
			'苍源种植'
			WHEN 'W000190' THEN
			'芜湖新兴'
			WHEN 'C000383' THEN
			'兴锦现代农业'
			WHEN 'G000600' THEN
			'博远信用管理评估'
			WHEN 'Z001081' THEN
			'中天钢铁'
			WHEN 'F000120' THEN
			'佛山农商行'
			WHEN 'S000742' THEN
			'沂水农商行'
			WHEN 'T000292' THEN
			'太谷农商行'
			WHEN 'H000752' THEN
			'孟津农商行'
			WHEN 'Y000147' THEN
			'零陵城投'
			WHEN 'S000534' THEN
			'博发油脂'
			WHEN 'S000535' THEN
			'榆林能源'
			WHEN 'L000296' THEN
			'龙驰集团'
			WHEN 'G000364' THEN
			'国广控股'
			WHEN 'R000073' THEN
			'禹通河道整治公司'
			WHEN 'Q000104' THEN
			'青岛地铁'
			WHEN 'S000743' THEN
			'仪陇农商行'
			WHEN 'H000532' THEN
			'宁乡农商行'
			WHEN 'G000365' THEN
			'贵安建设'
			WHEN 'C000185' THEN
			'开乾投资'
			WHEN 'Z001082' THEN
			'资阳诚兴建设'
			WHEN 'J000455' THEN
			'如皋农商行'
			WHEN 'B000264' THEN
			'白银有色'
			WHEN 'E000014' THEN
			'鄂尔多斯农商行'
			WHEN 'N000382' THEN
			'兴奉开投'
			WHEN 'S001332' THEN
			'华西绿舍'
			WHEN 'N000383' THEN
			'红胜开发'
			WHEN 'Z001514' THEN
			'三星新材'
			WHEN 'N000369' THEN
			'农银金融'
			WHEN 'N000238' THEN
			'镇海农商行'
			WHEN 'G000264' THEN
			'织金马家田煤业'
			WHEN 'W000123' THEN
			'振富工贸'
			WHEN 'N000153' THEN
			'苏海特商贸'
			WHEN 'X000176' THEN
			'新沂物流'
			WHEN 'S000744' THEN
			'蓝光发展'
			WHEN 'J000456' THEN
			'兴化农商行'
			WHEN 'F000121' THEN
			'晋江农商行'
			WHEN 'L000108' THEN
			'集合企业'
			WHEN 'S000745' THEN
			'苏州名城'
			WHEN 'P000060' THEN
			'邳州经控'
			WHEN 'T000233' THEN
			'虹桥园工业开发'
			WHEN 'T000234' THEN
			'天地源'
			WHEN 'J000457' THEN
			'淮安农商行'
			WHEN 'J000458' THEN
			'江苏滨海农商行'
			WHEN 'S001333' THEN
			'金玉担保'
			WHEN 'S001329' THEN
			'铁投城乡'
			WHEN 'H000649' THEN
			'正赢富钟'
			WHEN 'S000746' THEN
			'山东海洋'
			WHEN 'G000601' THEN
			'国新租赁'
			WHEN 'Z001083' THEN
			'遵义新区建安'
			WHEN 'H000533' THEN
			'海岛建设集团'
			WHEN 'Z001235' THEN
			'中芯国际'
			WHEN 'K000056' THEN
			'我爱我家'
			WHEN 'L000196' THEN
			'阳光热力'
			WHEN 'K000057' THEN
			'康师傅'
			WHEN 'Y000269' THEN
			'扬州运和城投'
			WHEN 'H000650' THEN
			'河南焦煤能源'
			WHEN 'M000043' THEN
			'牡丹江城投'
			WHEN 'W000220' THEN
			'惠新资管'
			WHEN 'S005712' THEN
			'平安银行福州分行'
			WHEN 'S005713' THEN
			'平安银行深圳分行'
			WHEN 'X000321' THEN
			'信达金融租赁'
			WHEN 'A000203' THEN
			'安顺农商行'
			WHEN 'S005714' THEN
			'浦发银行大连分行'
			WHEN 'S001294' THEN
			'和而泰'
			WHEN 'S005715' THEN
			'浦发银行哈尔滨分行'
			WHEN 'S006173' THEN
			'新城河建投'
			WHEN 'Z001084' THEN
			'招商局香港'
			WHEN 'T000293' THEN
			'腾邦集团'
			WHEN 'J000780' THEN
			'金坛茅山旅游'
			WHEN 'G000602' THEN
			'福润集团'
			WHEN 'H000902' THEN
			'吴兴升农投资'
			WHEN 'S005350' THEN
			'昆明院'
			WHEN 'Z000867' THEN
			'中信银行舟山分行'
			WHEN 'F000232' THEN
			'佛山建投'
			WHEN 'H000651' THEN
			'卓越投资'
			WHEN 'D000190' THEN
			'东方资管'
			WHEN 'S000889' THEN
			'四川郎酒'
			WHEN 'W000124' THEN
			'乌房集团'
			WHEN 'S001425' THEN
			'世纪阳光'
			WHEN 'B000360' THEN
			'久其软件'
			WHEN 'G000495' THEN
			'汇川农商行'
			WHEN 'S005351' THEN
			'宏柏新材'
			WHEN 'S005352' THEN
			'康希诺'
			WHEN 'S005353' THEN
			'仕佳光子'
			WHEN 'S005354' THEN
			'奥海科技'
			WHEN 'F000093' THEN
			'富丽达集团'
			WHEN 'S000890' THEN
			'艾能电力'
			WHEN 'S000891' THEN
			'滨海新城投资'
			WHEN 'J000798' THEN
			'吉林金控'
			WHEN 'S000581' THEN
			'深福保集团'
			WHEN 'S000582' THEN
			'绍兴文旅'
			WHEN 'D000120' THEN
			'登封建投'
			WHEN 'Z000868' THEN
			'工行登封支行'
			WHEN 'L000234' THEN
			'兰州农商行'
			WHEN 'Y000270' THEN
			'文山铝业'
			WHEN 'X000322' THEN
			'新疆新能源'
			WHEN 'N000404' THEN
			'富通城建'
			WHEN 'Z000800' THEN
			'华电科工'
			WHEN 'W000125' THEN
			'万安集团'
			WHEN 'Q000123' THEN
			'中石大控股'
			WHEN 'S000536' THEN
			'柠檬生化'
			WHEN 'Z001515' THEN
			'恒基达鑫'
			WHEN 'Y000159' THEN
			'null'
			WHEN 'S000892' THEN
			'兰陵农商行'
			WHEN 'J000570' THEN
			'蛟河农商行'
			WHEN 'H000903' THEN
			'和林格尔农信社'
			WHEN 'H000995' THEN
			'衡南农商行'
			WHEN 'Y000395' THEN
			'伊川财源'
			WHEN 'A000204' THEN
			'宁国建投'
			WHEN 'C000186' THEN
			'兴永建设'
			WHEN 'Q000068' THEN
			'启东城投'
			WHEN 'G000293' THEN
			'广晟有色'
			WHEN 'Z001364' THEN
			'民生银行徐东支行'
			WHEN 'K000077' THEN
			'昆明空港投资集团'
			WHEN 'H000534' THEN
			'兴湘投资'
			WHEN 'X000257' THEN
			'厦门中骏集团'
			WHEN 'Z001365' THEN
			'中南院'
			WHEN 'S000571' THEN
			'四川能投发展'
			WHEN 'Z001085' THEN
			'浙商证券'
			WHEN 'S000747' THEN
			'光证资管'
			WHEN 'F000122' THEN
			'颍东农商行'
			WHEN 'S001236' THEN
			'什邡国资'
			WHEN 'B000199' THEN
			'大北农'
			WHEN 'N000154' THEN
			'宁波工业投资集团'
			WHEN 'S000537' THEN
			'世茂股份'
			WHEN 'S000600' THEN
			'陕文投集团'
			WHEN 'Z000801' THEN
			'夏之远船舶'
			WHEN 'X000382' THEN
			'巴州国信公司'
			WHEN 'T000294' THEN
			'天壕投资'
			WHEN 'Y000334' THEN
			'苏州永福投资'
			WHEN 'N000317' THEN
			'中金环境'
			WHEN 'Z001086' THEN
			'枣庄银行'
			WHEN 'G000470' THEN
			'惠东农商行'
			WHEN 'Z001087' THEN
			'中原银行'
			WHEN 'G000603' THEN
			'文灿股份'
			WHEN 'A000205' THEN
			'中环环保'
			WHEN 'W000126' THEN
			'滨湖商旅'
			WHEN 'S000538' THEN
			'新宇包装'
			WHEN 'H000379' THEN
			'西柳物流'
			WHEN 'J000459' THEN
			'靖江农商行'
			WHEN 'C000384' THEN
			'鑫华农业'
			WHEN 'J000460' THEN
			'江门交通建投'
			WHEN 'Y000396' THEN
			'一汽金融'
			WHEN 'Z000802' THEN
			'郑州污水净化'
			WHEN 'H000380' THEN
			'豫资集团'
			WHEN 'L000118' THEN
			'柳州产业集团'
			WHEN 'C000132' THEN
			'长春润德'
			WHEN 'J000604' THEN
			'金鹰商贸'
			WHEN 'M000037' THEN
			'绵阳交通发展集团'
			WHEN 'G000366' THEN
			'国美控股'
			WHEN 'S000748' THEN
			'新建元'
			WHEN 'H000535' THEN
			'滨江集团'
			WHEN 'S000749' THEN
			'花园集团'
			WHEN 'X000258' THEN
			'新城控股'
			WHEN 'G000471' THEN
			'花竹山置业'
			WHEN 'Z001088' THEN
			'中国诚信'
			WHEN 'J000461' THEN
			'民丰农商行'
			WHEN 'Z001089' THEN
			'平湖农商行'
			WHEN 'C000398' THEN
			'长子县国资经营'
			WHEN 'G000434' THEN
			'海印集团'
			WHEN 'Q000124' THEN
			'青海能源'
			WHEN 'N000276' THEN
			'高淳城投'
			WHEN 'A000133' THEN
			'安陆建投'
			WHEN 'X000448' THEN
			'蓝晓科技'
			WHEN 'Z001312' THEN
			'中国中药'
			WHEN 'Y000397' THEN
			'卓雅教育'
			WHEN 'T000235' THEN
			'太重煤机'
			WHEN 'X000366' THEN
			'厦门象屿'
			WHEN 'Z001090' THEN
			'华录集团'
			WHEN 'Q000105' THEN
			'青海物产集团'
			WHEN 'J000605' THEN
			'临港产业'
			WHEN 'S000750' THEN
			'十四冶建设'
			WHEN 'H000536' THEN
			'华宝投资'
			WHEN 'C000187' THEN
			'天心城投集团'
			WHEN 'C000188' THEN
			'元成建筑'
			WHEN 'T000236' THEN
			'通顺交投'
			WHEN 'H000537' THEN
			'海安交建'
			WHEN 'J000462' THEN
			'济康科技'
			WHEN 'Z001091' THEN
			'华峰能源'
			WHEN 'H000538' THEN
			'湖南德山建投'
			WHEN 'Y000217' THEN
			'中扬渔业'
			WHEN 'H000539' THEN
			'富阳交通集团'
			WHEN 'J000463' THEN
			'新会银海'
			WHEN 'W000191' THEN
			'威海国资'
			WHEN 'A000141' THEN
			'地矿投资'
			WHEN 'J000355' THEN
			'新庐陵投资'
			WHEN 'Z001236' THEN
			'光大实业集团'
			WHEN 'X000323' THEN
			'西安经发集团'
			WHEN 'F000144' THEN
			'福鼎农信社'
			WHEN 'L000328' THEN
			'振坪新农建设'
			WHEN 'N000318' THEN
			'南方资产'
			WHEN 'S001073' THEN
			'山东能源'
			WHEN 'L000329' THEN
			'临港资管'
			WHEN 'B000307' THEN
			'洪山国际大酒店'
			WHEN 'G000435' THEN
			'粤科租赁'
			WHEN 'Y000271' THEN
			'印纪传媒'
			WHEN 'S000893' THEN
			'深业物流'
			WHEN 'D000200' THEN
			'大方建投'
			WHEN 'Z001286' THEN
			'工行大方支行'
			WHEN 'C000123' THEN
			'元宝国资'
			WHEN 'J000382' THEN
			'花王股份'
			WHEN 'H000381' THEN
			'华夏银行沈阳分行'
			WHEN 'J000327' THEN
			'常熟农商行'
			WHEN 'C000305' THEN
			'长沙农商行'
			WHEN 'H000753' THEN
			'凯撒旅业'
			WHEN 'T000295' THEN
			'泰州高港建设'
			WHEN 'Z000803' THEN
			'中广核'
			WHEN 'N000319' THEN
			'金河建安'
			WHEN 'Z000856' THEN
			'潜能燃气'
			WHEN 'H000754' THEN
			'申太建设'
			WHEN 'H000428' THEN
			'佳源乳业'
			WHEN 'L000330' THEN
			'辽宁交投'
			WHEN 'S000572' THEN
			'铭可达物流'
			WHEN 'J000328' THEN
			'赣能股份'
			WHEN 'H000382' THEN
			'河北物流集团'
			WHEN 'X000503' THEN
			'新奥控股'
			WHEN 'Z000804' THEN
			'淄博高新城投'
			WHEN 'W000127' THEN
			'鸠江建投'
			WHEN 'H000383' THEN
			'徽商银行芜湖分行'
			WHEN 'J000671' THEN
			'郏县产业集聚'
			WHEN 'T000296' THEN
			'太仓产业园'
			WHEN 'C000306' THEN
			'新津国投'
			WHEN 'S001295' THEN
			'融通保理'
			WHEN 'L000297' THEN
			'金东方'
			WHEN 'S000941' THEN
			'合金投资'
			WHEN 'Y000335' THEN
			'扬州融通建设'
			WHEN 'J000672' THEN
			'恒盛化工'
			WHEN 'X000383' THEN
			'绿洲投控'
			WHEN 'S006159' THEN
			'国枫凯文(上海)'
			WHEN 'Y000148' THEN
			'清洁能源公司'
			WHEN 'Z001516' THEN
			'宋都控股'
			WHEN 'Z000805' THEN
			'格力海岛投资'
			WHEN 'K000031' THEN
			'昆旅集团'
			WHEN 'S001296' THEN
			'榆社农商行'
			WHEN 'Y000149' THEN
			'腾晋物流'
			WHEN 'T000353' THEN
			'天水城投'
			WHEN 'S001338' THEN
			'陕西信用增进'
			WHEN 'X000352' THEN
			'博通股份'
			WHEN 'C000267' THEN
			'博瑞传播'
			WHEN 'Z001517' THEN
			'嘉化集团'
			WHEN 'D000201' THEN
			'大悦城地产'
			WHEN 'S001074' THEN
			'盛屯集团'
			WHEN 'N000155' THEN
			'江宁技开集团'
			WHEN 'G000265' THEN
			'国开行江苏分行'
			WHEN 'G000266' THEN
			'广西城投'
			WHEN 'Q000131' THEN
			'德晟投资集团'
			WHEN 'Z001366' THEN
			'中行三门峡分行'
			WHEN 'S001426' THEN
			'陕西建工'
			WHEN 'J000793' THEN
			'产发集团'
			WHEN 'N000277' THEN
			'南京金融城'
			WHEN 'D000191' THEN
			'东至城投'
			WHEN 'X000449' THEN
			'华钰矿业'
			WHEN 'Z000864' THEN
			'郑州地坤'
			WHEN 'Q000188' THEN
			'衢州城投'
			WHEN 'S000981' THEN
			'肥城农商行'
			WHEN 'S000982' THEN
			'上饶农商行'
			WHEN 'J000622' THEN
			'洪泽农商行'
			WHEN 'J000571' THEN
			'积水住宅'
			WHEN 'S000894' THEN
			'蒙阴农商行'
			WHEN 'S000895' THEN
			'钜盛华'
			WHEN 'Z001698' THEN
			'民生银行广州分行'
			WHEN 'H000703' THEN
			'星沙农商行'
			WHEN 'L000220' THEN
			'连江农信社'
			WHEN 'H000449' THEN
			'城郊农信社'
			WHEN 'Q000160' THEN
			'金水控股'
			WHEN 'H000450' THEN
			'邯郸银行'
			WHEN 'Y000303' THEN
			'伊金霍洛旗矿区农信社'
			WHEN 'B000341' THEN
			'德溪建投'
			WHEN 'H000704' THEN
			'鹤壁农商行'
			WHEN 'W000304' THEN
			'蓝海银行'
			WHEN 'X000324' THEN
			'萧县建设投资公司'
			WHEN 'G000564' THEN
			'防城港文旅集团'
			WHEN 'Z001237' THEN
			'樟树国资'
			WHEN 'J000847' THEN
			'苏宁银行'
			WHEN 'G000280' THEN
			'贵州磷化集团'
			WHEN 'Q000125' THEN
			'兴安开发'
			WHEN 'D000254' THEN
			'大唐河南发电'
			WHEN 'M000083' THEN
			'眉山工业投资'
			WHEN 'S001297' THEN
			'上海宇培集团'
			WHEN 'X000384' THEN
			'皖南农商行'
			WHEN 'Z001518' THEN
			'中国物流资产'
			WHEN 'J000739' THEN
			'广湖建设'
			WHEN 'W000221' THEN
			'二十三冶建设集团'
			WHEN 'H000384' THEN
			'河北高速公路开发'
			WHEN 'H000385' THEN
			'哈尔滨工业投资集团'
			WHEN 'S000896' THEN
			'斐讯数据'
			WHEN 'H000652' THEN
			'襄阳农商行'
			WHEN 'F000086' THEN
			'港发控股'
			WHEN 'Q000069' THEN
			'庆阳经投'
			WHEN 'N000156' THEN
			'宁乡建投'
			WHEN 'W000128' THEN
			'威海经开'
			WHEN 'G000267' THEN
			'国开行甘肃分行'
			WHEN 'X000385' THEN
			'西南能矿'
			WHEN 'S001075' THEN
			'陕西煤业'
			WHEN 'S000897' THEN
			'阆中农商行'
			WHEN 'L000197' THEN
			'柳州房地产'
			WHEN 'Z001238' THEN
			'中行萧县支行'
			WHEN 'N000278' THEN
			'南通开元'
			WHEN 'H000386' THEN
			'合肥国资控股'
			WHEN 'T000173' THEN
			'天津农商行'
			WHEN 'N000279' THEN
			'栖霞国资'
			WHEN 'B000200' THEN
			'蚌埠高投集团'
			WHEN 'Y000150' THEN
			'益阳交投'
			WHEN 'S000539' THEN
			'遂宁河东开发建投'
			WHEN 'P000037' THEN
			'平湖经开'
			WHEN 'Y000151' THEN
			'永安国投'
			WHEN 'H000755' THEN
			'攸县农商行'
			WHEN 'Z000806' THEN
			'工行三明分行'
			WHEN 'Z000807' THEN
			'建行桐庐支行'
			WHEN 'J000673' THEN
			'亚邦股份'
			WHEN 'Z001367' THEN
			'中航资本'
			WHEN 'Z001239' THEN
			'遵义红花岗城建'
			WHEN 'C000256' THEN
			'null'
			WHEN 'Q000070' THEN
			'青岛港'
			WHEN 'Z000808' THEN
			'昆仑控股'
			WHEN 'J000329' THEN
			'吉翔股份'
			WHEN 'Y000152' THEN
			'瘦西湖旅游发展集团'
			WHEN 'Z000809' THEN
			'时代新材'
			WHEN 'H000904' THEN
			'华润资产'
			WHEN 'C000115' THEN
			'成都轨道交通'
			WHEN 'S000540' THEN
			'元禾控股'
			WHEN 'H000905' THEN
			'清水源'
			WHEN 'S001076' THEN
			'海王生物'
			WHEN 'J000331' THEN
			'交行新余分行'
			WHEN 'J000330' THEN
			'四通路桥'
			WHEN 'J000332' THEN
			'宜兴投资'
			WHEN 'H000387' THEN
			'余杭交通'
			WHEN 'N000157' THEN
			'崇川城投'
			WHEN 'C000116' THEN
			'雨花城投'
			WHEN 'B000361' THEN
			'中邮资产'
			WHEN 'G000496' THEN
			'赣州国资'
			WHEN 'X000177' THEN
			'供销集团'
			WHEN 'S000541' THEN
			'黄河矿业'
			WHEN 'T000174' THEN
			'北辰建开'
			WHEN 'Y000153' THEN
			'莱山城开中心'
			WHEN 'B000201' THEN
			'宝鸡高新投控'
			WHEN 'B000202' THEN
			'新城基业'
			WHEN 'Z000810' THEN
			'湛江新域基建'
			WHEN 'X000178' THEN
			'火炬集团'
			WHEN 'Z000811' THEN
			'招行厦门分行'
			WHEN 'Q000071' THEN
			'衢州国资经营'
			WHEN 'Y000336' THEN
			'易方达资管'
			WHEN 'W000242' THEN
			'威远国资'
			WHEN 'G000268' THEN
			'北盘江电力'
			WHEN 'H000388' THEN
			'黑龙江中盟集团'
			WHEN 'H000389' THEN
			'中亚交建集团'
			WHEN 'N000158' THEN
			'阿拉善百灵煤炭'
			WHEN 'Q000072' THEN
			'潜江城投'
			WHEN 'Z000812' THEN
			'农行潜江分行'
			WHEN 'W000129' THEN
			'东湖高新'
			WHEN 'B000203' THEN
			'昌鑫建投'
			WHEN 'H000390' THEN
			'湘江水投'
			WHEN 'X000179' THEN
			'凯迪投资'
			WHEN 'Z000813' THEN
			'中信银行衡阳分行'
			WHEN 'B000204' THEN
			'滨河新建'
			WHEN 'X000180' THEN
			'徐州高新'
			WHEN 'Z000814' THEN
			'淄博公有资产'
			WHEN 'T000175' THEN
			'铜山农信社'
			WHEN 'Z001519' THEN
			'中原金控(深圳)'
			WHEN 'C000385' THEN
			'点石化医'
			WHEN 'T000270' THEN
			'天顺风能'
			WHEN 'N000280' THEN
			'南京国资'
			WHEN 'S000898' THEN
			'泰山钢铁'
			WHEN 'R000054' THEN
			'汝城城建'
			WHEN 'J000572' THEN
			'金坛国发'
			WHEN 'G000436' THEN
			'国寿投资管理'
			WHEN 'Z001240' THEN
			'中铁置业'
			WHEN 'C000386' THEN
			'华森制药'
			WHEN 'S000899' THEN
			'上虞国投'
			WHEN 'S000900' THEN
			'建屋发展集团'
			WHEN 'C000257' THEN
			'长城嘉信'
			WHEN 'P000076' THEN
			'平顶山银行'
			WHEN 'C000387' THEN
			'綦江城投'
			WHEN 'Z001368' THEN
			'中能电气'
			WHEN 'Z001369' THEN
			'淄博鲁创建发'
			WHEN 'N000320' THEN
			'太仆寺农商行'
			WHEN 'A000162' THEN
			'濉溪农商行'
			WHEN 'Z001370' THEN
			'红花岗国资'
			WHEN 'G000497' THEN
			'珠江源实业'
			WHEN 'H000653' THEN
			'豫资建设'
			WHEN 'Y000272' THEN
			'null'
			WHEN 'X000325' THEN
			'仙居国投'
			WHEN 'J000573' THEN
			'天禾旅游'
			WHEN 'P000077' THEN
			'纵合城乡'
			WHEN 'K000058' THEN
			'凯盛集团'
			WHEN 'M000044' THEN
			'东坡发展'
			WHEN 'L000109' THEN
			'龙元建设'
			WHEN 'P000038' THEN
			'浦银安盛'
			WHEN 'T000176' THEN
			'姜堰鑫源'
			WHEN 'X000181' THEN
			'湘潭两型投'
			WHEN 'Z000815' THEN
			'青山湖科技城投资集团'
			WHEN 'S000542' THEN
			'嘉定路建'
			WHEN 'H000756' THEN
			'浏阳农商行'
			WHEN 'S001077' THEN
			'山西金控'
			WHEN 'J000417' THEN
			'新北投资'
			WHEN 'L000198' THEN
			'华金资本'
			WHEN 'H000391' THEN
			'好想你'
			WHEN 'X000326' THEN
			'雅本投资'
			WHEN 'S000543' THEN
			'浦东土控'
			WHEN 'H000393' THEN
			'哈尔滨排水集团'
			WHEN 'H000392' THEN
			'哈尔滨供水集团'
			WHEN 'C000117' THEN
			'隆博投资'
			WHEN 'L000110' THEN
			'红旗汇通控股'
			WHEN 'Z000816' THEN
			'中行林州支行'
			WHEN 'T000177' THEN
			'太原经开'
			WHEN 'S001078' THEN
			'秦都农商行'
			WHEN 'S001079' THEN
			'交城农商行'
			WHEN 'T000297' THEN
			'东方医药'
			WHEN 'S001080' THEN
			'金信新材'
			WHEN 'P000087' THEN
			'鄱阳投资'
			WHEN 'A000001' THEN
			'信诚投资'
			WHEN 'A000002' THEN
			'统众国资'
			WHEN 'A000003' THEN
			'安东'
			WHEN 'A000004' THEN
			'安徽出版集团'
			WHEN 'A000005' THEN
			'古井集团'
			WHEN 'A000006' THEN
			'国贸集团'
			WHEN 'A000007' THEN
			'海螺集团'
			WHEN 'A000008' THEN
			'华茂股份'
			WHEN 'A000009' THEN
			'淮海实业集团'
			WHEN 'A000010' THEN
			'null'
			WHEN 'A000011' THEN
			'安徽军工集团'
			WHEN 'A000012' THEN
			'全柴集团'
			WHEN 'A000013' THEN
			'山鹰国际'
			WHEN 'A000014' THEN
			'null'
			WHEN 'A000015' THEN
			'null'
			WHEN 'A000016' THEN
			'安徽省旅游集团'
			WHEN 'A000017' THEN
			'皖能集团'
			WHEN 'A000018' THEN
			'皖投集团'
			WHEN 'A000019' THEN
			'华安外经建设'
			WHEN 'A000020' THEN
			'皖北煤电'
			WHEN 'A000021' THEN
			'安徽省担保集团'
			WHEN 'A000022' THEN
			'安徽盐业'
			WHEN 'A000023' THEN
			'盛运环保'
			WHEN 'A000024' THEN
			'安徽建工'
			WHEN 'A000025' THEN
			'天大集团'
			WHEN 'A000026' THEN
			'皖维高新'
			WHEN 'A000027' THEN
			'新华发行控股'
			WHEN 'A000028' THEN
			'星马汽车'
			WHEN 'A000029' THEN
			'中鼎集团'
			WHEN 'A000030' THEN
			'安琪酵母'
			WHEN 'A000031' THEN
			'安庆城投'
			WHEN 'A000032' THEN
			'安顺国资'
			WHEN 'A000033' THEN
			'安信证券'
			WHEN 'A000034' THEN
			'安阳钢铁'
			WHEN 'A000035' THEN
			'安阳投资集团'
			WHEN 'A000036' THEN
			'鞍钢股份'
			WHEN 'A000037' THEN
			'鞍钢集团'
			WHEN 'A000038' THEN
			'鞍山城投'
			WHEN 'A000039' THEN
			'鞍山银行'
			WHEN 'A000040' THEN
			'奥克斯'
			WHEN 'A000041' THEN
			'中小企业'
			WHEN 'A000042' THEN
			'中小企业'
			WHEN 'A000043' THEN
			'中小企业'
			WHEN 'A000044' THEN
			'节能国祯'
			WHEN 'A000045' THEN
			'安阳担保'
			WHEN 'A000046' THEN
			'安康发展投资集团'
			WHEN 'A000047' THEN
			'金控集团'
			WHEN 'A000048' THEN
			'阿拉善盟基建'
			WHEN 'A000049' THEN
			'安钢集团'
			WHEN 'A000050' THEN
			'南翔集团'
			WHEN 'A000051' THEN
			'安庆经开区建投集团'
			WHEN 'A000052' THEN
			'亚夏集团'
			WHEN 'A000053' THEN
			'安泰科技'
			WHEN 'A000054' THEN
			'海螺水泥'
			WHEN 'A000055' THEN
			'皖通高速'
			WHEN 'A000056' THEN
			'安徽高速'
			WHEN 'B000001' THEN
			'河套水务'
			WHEN 'B000002' THEN
			'白山建投'
			WHEN 'B000003' THEN
			'百联集团'
			WHEN 'B000004' THEN
			'蚌埠院'
			WHEN 'B000005' THEN
			'蚌埠城投'
			WHEN 'B000006' THEN
			'包商银行'
			WHEN 'B000007' THEN
			'包钢集团'
			WHEN 'B000008' THEN
			'包头国运'
			WHEN 'B000009' THEN
			'宝钢工程'
			WHEN 'B000010' THEN
			'八钢'
			WHEN 'B000011' THEN
			'宝钢金属'
			WHEN 'B000012' THEN
			'宝鸡投资集团'
			WHEN 'B000013' THEN
			'宝钛集团'
			WHEN 'B000014' THEN
			'天威集团'
			WHEN 'B000015' THEN
			'天威英利'
			WHEN 'B000016' THEN
			'协鑫智慧'
			WHEN 'B000017' THEN
			'方正集团'
			WHEN 'B000018' THEN
			'北方联合电力'
			WHEN 'B000019' THEN
			'北辰实业'
			WHEN 'B000020' THEN
			'碧水源'
			WHEN 'B000021' THEN
			'北京城建集团'
			WHEN 'B000022' THEN
			'城建发展'
			WHEN 'B000023' THEN
			'北京排水集团'
			WHEN 'B000024' THEN
			'北京城乡建设'
			WHEN 'B000025' THEN
			'东方雨虹'
			WHEN 'B000026' THEN
			'东方园林'
			WHEN 'B000027' THEN
			'北京二商集团'
			WHEN 'B000028' THEN
			'北京时尚'
			WHEN 'B000029' THEN
			'国管中心'
			WHEN 'B000030' THEN
			'昊华能源'
			WHEN 'B000031' THEN
			'华联股份'
			WHEN 'B000032' THEN
			'华联综超'
			WHEN 'B000033' THEN
			'北京建工'
			WHEN 'B000034' THEN
			'金融街集团'
			WHEN 'B000035' THEN
			'金隅集团'
			WHEN 'B000036' THEN
			'金隅资管'
			WHEN 'B000037' THEN
			'京城机电'
			WHEN 'B000038' THEN
			'京客隆'
			WHEN 'B000039' THEN
			'京煤集团'
			WHEN 'B000040' THEN
			'京能国际'
			WHEN 'B000041' THEN
			'京能电力'
			WHEN 'B000042' THEN
			'京能新能源'
			WHEN 'B000043' THEN
			'亦庄控股'
			WHEN 'B000044' THEN
			'北控集团'
			WHEN 'B000045' THEN
			'京粮集团'
			WHEN 'B000046' THEN
			'北京穆迪'
			WHEN 'B000047' THEN
			'京能集团'
			WHEN 'B000048' THEN
			'北汽集团'
			WHEN 'B000049' THEN
			'北京汽车投资'
			WHEN 'B000050' THEN
			'三聚环保'
			WHEN 'B000051' THEN
			'北京朝阳国资中心'
			WHEN 'B000052' THEN
			'丰台国资'
			WHEN 'B000053' THEN
			'谷财集团'
			WHEN 'B000054' THEN
			'北京国资公司'
			WHEN 'B000055' THEN
			'海淀国资中心'
			WHEN 'B000056' THEN
			'京投公司'
			WHEN 'B000057' THEN
			'北京热力'
			WHEN 'B000058' THEN
			'首发集团'
			WHEN 'B000059' THEN
			'顺义国资中心'
			WHEN 'B000060' THEN
			'北京市政路桥集团'
			WHEN 'B000061' THEN
			'首创股份'
			WHEN 'B000062' THEN
			'首创担保'
			WHEN 'B000063' THEN
			'首创集团'
			WHEN 'B000064' THEN
			'首开集团'
			WHEN 'B000065' THEN
			'首旅集团'
			WHEN 'B000066' THEN
			'首农食品集团'
			WHEN 'B000067' THEN
			'顺鑫控股'
			WHEN 'B000068' THEN
			'顺鑫农业'
			WHEN 'B000069' THEN
			'物美商业'
			WHEN 'B000070' THEN
			'兴展控股'
			WHEN 'B000071' THEN
			'北京银行'
			WHEN 'B000072' THEN
			'有研科技'
			WHEN 'B000073' THEN
			'中关村发展'
			WHEN 'B000074' THEN
			'中关村担保'
			WHEN 'B000075' THEN
			'北京住总集团'
			WHEN 'B000076' THEN
			'北新建材'
			WHEN 'B000077' THEN
			'北新集团'
			WHEN 'B000078' THEN
			'北营钢铁'
			WHEN 'B000079' THEN
			'本溪钢铁集团'
			WHEN 'B000080' THEN
			'本溪城建投'
			WHEN 'B000081' THEN
			'信泰投资'
			WHEN 'B000082' THEN
			'标普'
			WHEN 'B000083' THEN
			'彬煤公司'
			WHEN 'B000084' THEN
			'滨海投资集团'
			WHEN 'B000085' THEN
			'滨化股份'
			WHEN 'B000086' THEN
			'滨城经投'
			WHEN 'B000087' THEN
			'兵工财务公司'
			WHEN 'B000088' THEN
			'建安集团'
			WHEN 'B000089' THEN
			'渤海银行'
			WHEN 'B000090' THEN
			'渤海证券'
			WHEN 'B000091' THEN
			'null'
			WHEN 'B000092' THEN
			'步步高'
			WHEN 'B000093' THEN
			'null'
			WHEN 'B000094' THEN
			'财信证券'
			WHEN 'B000095' THEN
			'财通证券'
			WHEN 'B000096' THEN
			'保山国资营'
			WHEN 'B000097' THEN
			'中兴城建'
			WHEN 'B000098' THEN
			'中小企业'
			WHEN 'B000099' THEN
			'中小企业'
			WHEN 'B000100' THEN
			'中小企业'
			WHEN 'B000101' THEN
			'中小企业'
			WHEN 'B000102' THEN
			'中小企业'
			WHEN 'B000103' THEN
			'京能清洁能源'
			WHEN 'B000104' THEN
			'农担公司'
			WHEN 'B000105' THEN
			'北方水泥'
			WHEN 'B000106' THEN
			'北京农商行'
			WHEN 'B000107' THEN
			'保定高开'
			WHEN 'B000108' THEN
			'巴彦淖尔城市发展投资'
			WHEN 'B000109' THEN
			'保障房中心'
			WHEN 'B000110' THEN
			'北京汽车'
			WHEN 'B000111' THEN
			'海吉星医疗'
			WHEN 'B000112' THEN
			'歌华集团'
			WHEN 'B000113' THEN
			'首开股份'
			WHEN 'B000114' THEN
			'银建投资'
			WHEN 'B000115' THEN
			'未来科学城'
			WHEN 'B000116' THEN
			'滨州城投'
			WHEN 'B000117' THEN
			'白银城投集团'
			WHEN 'B000118' THEN
			'北京生物医药'
			WHEN 'B000119' THEN
			'null'
			WHEN 'B000120' THEN
			'中科金财'
			WHEN 'B000121' THEN
			'null'
			WHEN 'B000122' THEN
			'比亚迪'
			WHEN 'B000123' THEN
			'首都股份'
			WHEN 'B000124' THEN
			'中科云网'
			WHEN 'B000125' THEN
			'保变电气'
			WHEN 'B000126' THEN
			'保利地产'
			WHEN 'B000127' THEN
			'北辰集团'
			WHEN 'B000128' THEN
			'兵器财务'
			WHEN 'B000129' THEN
			'福田汽车'
			WHEN 'B000130' THEN
			'江河集团'
			WHEN 'B000131' THEN
			'null'
			WHEN 'B000132' THEN
			'万通发展'
			WHEN 'B000133' THEN
			'宝胜集团'
			WHEN 'B000134' THEN
			'宝胜股份'
			WHEN 'B000135' THEN
			'华胜天成'
			WHEN 'B000136' THEN
			'王府井'
			WHEN 'B000137' THEN
			'蓝色光标'
			WHEN 'B000138' THEN
			'博尔塔拉国投'
			WHEN 'C000001' THEN
			'彩虹集团'
			WHEN 'C000002' THEN
			'彩虹股份'
			WHEN 'C000003' THEN
			'沧州银行'
			WHEN 'C000004' THEN
			'昌邑经开投'
			WHEN 'C000005' THEN
			'长城证券'
			WHEN 'C000006' THEN
			'长春城开'
			WHEN 'C000007' THEN
			'null'
			WHEN 'C000008' THEN
			'南京航道工程局'
			WHEN 'C000009' THEN
			'长江保荐'
			WHEN 'C000010' THEN
			'长江证券'
			WHEN 'C000011' THEN
			'长高控股'
			WHEN 'C000012' THEN
			'长沙经开'
			WHEN 'C000013' THEN
			'长沙城投集团'
			WHEN 'C000014' THEN
			'通程集团'
			WHEN 'C000015' THEN
			'先导投资'
			WHEN 'C000016' THEN
			'星城发展'
			WHEN 'C000017' THEN
			'长沙银行'
			WHEN 'C000018' THEN
			'长兴城建'
			WHEN 'C000019' THEN
			'长兴交投'
			WHEN 'C000020' THEN
			'长园集团'
			WHEN 'C000021' THEN
			'常德城投'
			WHEN 'C000022' THEN
			'经投集团'
			WHEN 'C000023' THEN
			'滨江城投'
			WHEN 'C000024' THEN
			'常熟城投'
			WHEN 'C000025' THEN
			'常高新'
			WHEN 'C000026' THEN
			'常州城建'
			WHEN 'C000027' THEN
			'常州交通'
			WHEN 'C000028' THEN
			'武进城投'
			WHEN 'C000029' THEN
			'常州投资'
			WHEN 'C000030' THEN
			'合肥水务环境'
			WHEN 'C000031' THEN
			'朝阳建设投资'
			WHEN 'C000032' THEN
			'郴州投资'
			WHEN 'C000033' THEN
			'博瑞集团'
			WHEN 'C000034' THEN
			'大陆希望集团'
			WHEN 'C000035' THEN
			'高投集团'
			WHEN 'C000036' THEN
			'成都产投'
			WHEN 'C000037' THEN
			'华西希望集团'
			WHEN 'C000038' THEN
			'成都交投'
			WHEN 'C000039' THEN
			'成经投资'
			WHEN 'C000040' THEN
			'成都公交集团'
			WHEN 'C000041' THEN
			'成都路桥'
			WHEN 'C000042' THEN
			'香城建投'
			WHEN 'C000043' THEN
			'成都环境集团'
			WHEN 'C000044' THEN
			'交子金控'
			WHEN 'C000045' THEN
			'成都文旅'
			WHEN 'C000046' THEN
			'成都城投'
			WHEN 'C000047' THEN
			'成都银行'
			WHEN 'C000048' THEN
			'池州建投'
			WHEN 'C000049' THEN
			'赤峰城投'
			WHEN 'C000050' THEN
			'红山城投'
			WHEN 'C000051' THEN
			'章源钨业'
			WHEN 'C000052' THEN
			'滁州城投'
			WHEN 'C000053' THEN
			'滁州交建'
			WHEN 'C000054' THEN
			'雏鹰农牧'
			WHEN 'C000055' THEN
			'楚雄州开投'
			WHEN 'C000056' THEN
			'传化集团'
			WHEN 'C000057' THEN
			'春和集团'
			WHEN 'C000058' THEN
			'慈溪国资'
			WHEN 'C000059' THEN
			'兴锦城市建投'
			WHEN 'C000060' THEN
			'中小企业'
			WHEN 'C000061' THEN
			'中小企业'
			WHEN 'C000062' THEN
			'常州城建准备金'
			WHEN 'C000063' THEN
			'中小企业'
			WHEN 'C000064' THEN
			'巢湖城建投'
			WHEN 'C000065' THEN
			'常熟发投'
			WHEN 'C000066' THEN
			'滁州同创建投'
			WHEN 'C000067' THEN
			'成都城投集团'
			WHEN 'C000068' THEN
			'三峡产业投资'
			WHEN 'C000069' THEN
			'沧州建投'
			WHEN 'C000070' THEN
			'成都兴城'
			WHEN 'C000071' THEN
			'华邦健康'
			WHEN 'C000072' THEN
			'超威电源'
			WHEN 'C000073' THEN
			'长治投建'
			WHEN 'C000074' THEN
			'null'
			WHEN 'C000075' THEN
			'重庆新城建'
			WHEN 'C000076' THEN
			'三泰控股'
			WHEN 'C000077' THEN
			'风范股份'
			WHEN 'C000078' THEN
			'三峡银行'
			WHEN 'C000079' THEN
			'重庆旅投'
			WHEN 'C000080' THEN
			'轨道交通集团'
			WHEN 'C000081' THEN
			'地奥集团'
			WHEN 'C000082' THEN
			'昌吉州国资'
			WHEN 'C000083' THEN
			'新天投资'
			WHEN 'C000084' THEN
			'null'
			WHEN 'C000085' THEN
			'精工钢构'
			WHEN 'C000086' THEN
			'欧亚集团'
			WHEN 'C000087' THEN
			'云图控股'
			WHEN 'C000088' THEN
			'鹏博士'
			WHEN 'C000089' THEN
			'新筑集团'
			WHEN 'C000090' THEN
			'新筑股份'
			WHEN 'C000091' THEN
			'金亚科技'
			WHEN 'C000092' THEN
			'null'
			WHEN 'D000001' THEN
			'大公国际'
			WHEN 'D000002' THEN
			'大恒科技'
			WHEN 'D000003' THEN
			'大理经开投'
			WHEN 'D000004' THEN
			'德泰控股'
			WHEN 'D000005' THEN
			'辽港股份'
			WHEN 'D000006' THEN
			'大连港集团'
			WHEN 'D000007' THEN
			'大连集装箱码头'
			WHEN 'D000008' THEN
			'大连旅顺发投'
			WHEN 'D000009' THEN
			'大连融强投资'
			WHEN 'D000010' THEN
			'大连机床'
			WHEN 'D000011' THEN
			'大连银行'
			WHEN 'D000012' THEN
			'大连装备'
			WHEN 'D000013' THEN
			'大秦铁路'
			WHEN 'D000014' THEN
			'国资运营'
			WHEN 'D000015' THEN
			'大庆城建投'
			WHEN 'D000016' THEN
			'大全集团'
			WHEN 'D000017' THEN
			'大唐发电'
			WHEN 'D000018' THEN
			'晋能控股集团'
			WHEN 'D000019' THEN
			'大同经投集团'
			WHEN 'D000020' THEN
			'大兴安岭林业集团'
			WHEN 'D000021' THEN
			'大亚圣象'
			WHEN 'D000022' THEN
			'大亚集团'
			WHEN 'D000023' THEN
			'大冶有色'
			WHEN 'D000024' THEN
			'大众交通'
			WHEN 'D000025' THEN
			'丹东建投'
			WHEN 'D000026' THEN
			'丹东港'
			WHEN 'D000027' THEN
			'丹阳投资集团'
			WHEN 'D000028' THEN
			'德邦证券'
			WHEN 'D000029' THEN
			'长城华西行'
			WHEN 'D000030' THEN
			'德达城投'
			WHEN 'D000031' THEN
			'一创投行'
			WHEN 'D000032' THEN
			'null'
			WHEN 'D000033' THEN
			'电信院'
			WHEN 'D000034' THEN
			'东轻公司'
			WHEN 'D000035' THEN
			'东北特钢集团'
			WHEN 'D000036' THEN
			'东北证券'
			WHEN 'D000037' THEN
			'东北再担保'
			WHEN 'D000038' THEN
			'东方集团'
			WHEN 'D000039' THEN
			'东方金诚'
			WHEN 'D000040' THEN
			'东方证券'
			WHEN 'D000041' THEN
			'东风集团股份'
			WHEN 'D000042' THEN
			'东海证券'
			WHEN 'D000043' THEN
			'东南汽车'
			WHEN 'D000044' THEN
			'东软集团'
			WHEN 'D000045' THEN
			'东台交投'
			WHEN 'D000046' THEN
			'东莞控股'
			WHEN 'D000047' THEN
			'海龙纸业'
			WHEN 'D000048' THEN
			'玖龙纸业'
			WHEN 'D000049' THEN
			'东莞交通'
			WHEN 'D000050' THEN
			'东莞银行'
			WHEN 'D000051' THEN
			'东莞证券'
			WHEN 'D000052' THEN
			'东吴证券'
			WHEN 'D000053' THEN
			'null'
			WHEN 'D000054' THEN
			'东兴证券'
			WHEN 'D000055' THEN
			'东亚银行'
			WHEN 'D000056' THEN
			'东阳国投'
			WHEN 'D000057' THEN
			'方圆有色'
			WHEN 'D000058' THEN
			'东营城市资产经营'
			WHEN 'D000059' THEN
			'兴市集团'
			WHEN 'D000060' THEN
			'多氟多'
			WHEN 'D000061' THEN
			'大丰城建'
			WHEN 'D000062' THEN
			'地方政府'
			WHEN 'D000063' THEN
			'null'
			WHEN 'D000064' THEN
			'中小企业'
			WHEN 'D000065' THEN
			'东台城建投发'
			WHEN 'D000066' THEN
			'达州投资'
			WHEN 'D000067' THEN
			'东方保荐'
			WHEN 'D000068' THEN
			'东风汽车'
			WHEN 'D000069' THEN
			'德阳建投'
			WHEN 'D000070' THEN
			'中小企业'
			WHEN 'D000071' THEN
			'大唐黑龙江发电'
			WHEN 'D000072' THEN
			'长兴岛开发建投'
			WHEN 'D000073' THEN
			'大石桥城投'
			WHEN 'D000074' THEN
			'大理州文旅'
			WHEN 'D000075' THEN
			'斗山工程'
			WHEN 'D000076' THEN
			'大冶有色'
			WHEN 'D000077' THEN
			'盾安集团'
			WHEN 'D000078' THEN
			'第一创业'
			WHEN 'D000079' THEN
			'星海湾'
			WHEN 'D000080' THEN
			'大连国有资源投资'
			WHEN 'D000081' THEN
			'勤上股份'
			WHEN 'D000082' THEN
			'null'
			WHEN 'D000083' THEN
			'东北制药'
			WHEN 'D000084' THEN
			'东药集团'
			WHEN 'D000085' THEN
			'一拖股份'
			WHEN 'E000001' THEN
			'鄂尔多斯建投'
			WHEN 'E000002' THEN
			'东胜城投'
			WHEN 'E000003' THEN
			'鄂尔多斯国投集团'
			WHEN 'E000004' THEN
			'乌兰集团'
			WHEN 'E000005' THEN
			'鄂州城市建设'
			WHEN 'E000006' THEN
			'恩施城投'
			WHEN 'E000007' THEN
			'国机重装'
			WHEN 'E000008' THEN
			'华研投资集团'
			WHEN 'E000009' THEN
			'null'
			WHEN 'F000001' THEN
			'珠江钢管'
			WHEN 'F000002' THEN
			'方大集团'
			WHEN 'F000003' THEN
			'方正证券'
			WHEN 'F000004' THEN
			'肥矿集团'
			WHEN 'F000005' THEN
			'肥城资产'
			WHEN 'F000006' THEN
			'奉化投资'
			WHEN 'F000007' THEN
			'佛塑科技'
			WHEN 'F000008' THEN
			'佛山公控'
			WHEN 'F000009' THEN
			'顺控发展'
			WHEN 'F000010' THEN
			'星期六'
			WHEN 'F000011' THEN
			'孚日股份'
			WHEN 'F000012' THEN
			'福建国航'
			WHEN 'F000013' THEN
			'福建建工集团'
			WHEN 'F000014' THEN
			'永荣锦江'
			WHEN 'F000015' THEN
			'龙净环保'
			WHEN 'F000016' THEN
			'闽东电力'
			WHEN 'F000017' THEN
			'七匹狼'
			WHEN 'F000018' THEN
			'三安集团'
			WHEN 'F000019' THEN
			'福建电子信息集团'
			WHEN 'F000020' THEN
			'福建高速'
			WHEN 'F000021' THEN
			'交通集团'
			WHEN 'F000022' THEN
			'龙岩交通国投'
			WHEN 'F000023' THEN
			'龙岩城投'
			WHEN 'F000024' THEN
			'福建南平高速公路'
			WHEN 'F000025' THEN
			'福能集团'
			WHEN 'F000026' THEN
			'福建轻纺'
			WHEN 'F000027' THEN
			'福建投资集团'
			WHEN 'F000028' THEN
			'福建再担保'
			WHEN 'F000029' THEN
			'圣农发展'
			WHEN 'F000030' THEN
			'漳龙集团'
			WHEN 'F000031' THEN
			'漳州发展'
			WHEN 'F000032' THEN
			'众和股份'
			WHEN 'F000033' THEN
			'福耀玻璃'
			WHEN 'F000034' THEN
			'福州建工集团'
			WHEN 'F000035' THEN
			'福州城建'
			WHEN 'F000036' THEN
			'福州交投'
			WHEN 'F000037' THEN
			'福州水务投资发展'
			WHEN 'F000038' THEN
			'抚矿集团'
			WHEN 'F000039' THEN
			'抚顺城投'
			WHEN 'F000040' THEN
			'粤华包'
			WHEN 'F000041' THEN
			'阜矿集团'
			WHEN 'F000042' THEN
			'阜新城投'
			WHEN 'F000043' THEN
			'阜阳建投'
			WHEN 'F000044' THEN
			'富通集团'
			WHEN 'F000045' THEN
			'富阳城投集团'
			WHEN 'F000046' THEN
			'null'
			WHEN 'F000047' THEN
			'中小企业'
			WHEN 'F000048' THEN
			'中小企业'
			WHEN 'F000049' THEN
			'中小企业'
			WHEN 'F000050' THEN
			'龙溪股份'
			WHEN 'F000051' THEN
			'抚州投发集团'
			WHEN 'F000052' THEN
			'方大炭素'
			WHEN 'F000053' THEN
			'中小企业'
			WHEN 'F000054' THEN
			'福清国投'
			WHEN 'F000055' THEN
			'阜新银行'
			WHEN 'F000056' THEN
			'京福高速'
			WHEN 'F000057' THEN
			'旗滨集团'
			WHEN 'F000058' THEN
			'闽海峡银行'
			WHEN 'F000059' THEN
			'泛海控股'
			WHEN 'F000060' THEN
			'新疆国力民生'
			WHEN 'F000061' THEN
			'飞亚达'
			WHEN 'F000062' THEN
			'复地集团'
			WHEN 'F000063' THEN
			'圣农集团'
			WHEN 'F000064' THEN
			'国星光电'
			WHEN 'F000065' THEN
			'福建高速'
			WHEN 'F000066' THEN
			'三钢闽光'
			WHEN 'F000067' THEN
			'三钢集团'
			WHEN 'F000068' THEN
			'武夷新区投资'
			WHEN 'G000001' THEN
			'祁连山'
			WHEN 'G000002' THEN
			'甘肃电投'
			WHEN 'G000003' THEN
			'敦煌种业'
			WHEN 'G000004' THEN
			'甘肃公航旅游集团'
			WHEN 'G000005' THEN
			'甘肃国投'
			WHEN 'G000006' THEN
			'甘肃建投'
			WHEN 'G000007' THEN
			'甘肃农垦'
			WHEN 'G000008' THEN
			'亚盛集团'
			WHEN 'G000009' THEN
			'赣州城投集团'
			WHEN 'G000010' THEN
			'赣州发展集团'
			WHEN 'G000011' THEN
			'赣州银行'
			WHEN 'G000012' THEN
			'高密国投公司'
			WHEN 'G000013' THEN
			'高盛高华'
			WHEN 'G000014' THEN
			'格盟国际能源'
			WHEN 'G000015' THEN
			'光大证券'
			WHEN 'G000016' THEN
			'光明食品集团'
			WHEN 'G000017' THEN
			'广安发展建设集团'
			WHEN 'G000018' THEN
			'宝新能源'
			WHEN 'G000019' THEN
			'大唐潮州'
			WHEN 'G000020' THEN
			'德美化工'
			WHEN 'G000021' THEN
			'海印股份'
			WHEN 'G000022' THEN
			'恒健投资'
			WHEN 'G000023' THEN
			'国中医药'
			WHEN 'G000024' THEN
			'明阳智能'
			WHEN 'G000025' THEN
			'南方报业传媒集团'
			WHEN 'G000026' THEN
			'韶能股份'
			WHEN 'G000027' THEN
			'粤高速'
			WHEN 'G000028' THEN
			'广东高速公路'
			WHEN 'G000029' THEN
			'广东路建'
			WHEN 'G000030' THEN
			'广弘资产'
			WHEN 'G000031' THEN
			'广晟公司'
			WHEN 'G000032' THEN
			'广东广新控股集团'
			WHEN 'G000033' THEN
			'广业集团'
			WHEN 'G000034' THEN
			'航运集团'
			WHEN 'G000035' THEN
			'广东机场管理集团'
			WHEN 'G000036' THEN
			'广东省交通集团'
			WHEN 'G000037' THEN
			'联泰集团'
			WHEN 'G000038' THEN
			'广东融资再担保'
			WHEN 'G000039' THEN
			'广东水电集团'
			WHEN 'G000040' THEN
			'广东能源集团'
			WHEN 'G000041' THEN
			'粤水电'
			WHEN 'G000042' THEN
			'温氏股份'
			WHEN 'G000043' THEN
			'广物控股集团'
			WHEN 'G000044' THEN
			'广东粤海控股'
			WHEN 'G000045' THEN
			'志高空调'
			WHEN 'G000046' THEN
			'广东中旅集团'
			WHEN 'G000047' THEN
			'广发银行'
			WHEN 'G000048' THEN
			'广发证券'
			WHEN 'G000049' THEN
			'广发证券'
			WHEN 'G000050' THEN
			'广汇汽车服务'
			WHEN 'G000051' THEN
			'广深铁路'
			WHEN 'G000052' THEN
			'百投集团'
			WHEN 'G000053' THEN
			'北部湾港集团'
			WHEN 'G000054' THEN
			'桂北投'
			WHEN 'G000055' THEN
			'北部湾银行'
			WHEN 'G000056' THEN
			'广西建工集团'
			WHEN 'G000057' THEN
			'广西交投集团'
			WHEN 'G000058' THEN
			'来宾城建投'
			WHEN 'G000059' THEN
			'柳工集团'
			WHEN 'G000060' THEN
			'广西农垦'
			WHEN 'G000061' THEN
			'广西铁路'
			WHEN 'G000062' THEN
			'广西投资集团'
			WHEN 'G000063' THEN
			'五洲交通'
			WHEN 'G000064' THEN
			'西江开发投资'
			WHEN 'G000065' THEN
			'广西新发展交通集团'
			WHEN 'G000066' THEN
			'广西沿海铁路'
			WHEN 'G000067' THEN
			'广西有色金属'
			WHEN 'G000068' THEN
			'玉柴股份'
			WHEN 'G000069' THEN
			'玉柴集团'
			WHEN 'G000070' THEN
			'广西国有高峰林场'
			WHEN 'G000071' THEN
			'广元投控'
			WHEN 'G000072' THEN
			'广州商贸控股集团'
			WHEN 'G000073' THEN
			'广州打捞局'
			WHEN 'G000074' THEN
			'广智集团'
			WHEN 'G000075' THEN
			'广州发展'
			WHEN 'G000076' THEN
			'广州纺织'
			WHEN 'G000077' THEN
			'广州港集团'
			WHEN 'G000078' THEN
			'广日投资'
			WHEN 'G000079' THEN
			'穗恒运'
			WHEN 'G000080' THEN
			'广州交投'
			WHEN 'G000081' THEN
			'广州开发区投资集团'
			WHEN 'G000082' THEN
			'广州开发控股'
			WHEN 'G000083' THEN
			'岭南集团'
			WHEN 'G000084' THEN
			'广州农商行'
			WHEN 'G000085' THEN
			'广州汽车'
			WHEN 'G000086' THEN
			'广汽集团'
			WHEN 'G000087' THEN
			'广州地铁'
			WHEN 'G000088' THEN
			'广州公交集团第二公共汽车公司'
			WHEN 'G000089' THEN
			'广州建投'
			WHEN 'G000090' THEN
			'广州水务'
			WHEN 'G000091' THEN
			'万宝'
			WHEN 'G000092' THEN
			'广州无线电集团'
			WHEN 'G000093' THEN
			'中信证券华南'
			WHEN 'G000094' THEN
			'珠江啤酒'
			WHEN 'G000095' THEN
			'珠江实业集团'
			WHEN 'G000096' THEN
			'贵阳投资控股集团'
			WHEN 'G000097' THEN
			'贵阳经开建投'
			WHEN 'G000098' THEN
			'贵阳城投集团'
			WHEN 'G000099' THEN
			'贵阳工投'
			WHEN 'G000100' THEN
			'贵阳住投集团'
			WHEN 'G000101' THEN
			'贵阳银行'
			WHEN 'G000102' THEN
			'乌江能源投资'
			WHEN 'G000103' THEN
			'赤天化集团'
			WHEN 'G000104' THEN
			'贵航股份'
			WHEN 'G000105' THEN
			'开磷集团'
			WHEN 'G000106' THEN
			'贵州开磷'
			WHEN 'G000107' THEN
			'盘江集团'
			WHEN 'G000108' THEN
			'贵州铁路投资'
			WHEN 'G000109' THEN
			'乌江公司'
			WHEN 'G000110' THEN
			'三金集团'
			WHEN 'G000111' THEN
			'桂林经济建设'
			WHEN 'G000112' THEN
			'国奥集团'
			WHEN 'G000113' THEN
			'国电财务'
			WHEN 'G000114' THEN
			'大渡河水电开发'
			WHEN 'G000115' THEN
			'国电电力'
			WHEN 'G000116' THEN
			'国电英力特集团'
			WHEN 'G000117' THEN
			'国都证券'
			WHEN 'G000118' THEN
			'国海证券'
			WHEN 'G000119' THEN
			'null'
			WHEN 'G000120' THEN
			'国际金融'
			WHEN 'G000121' THEN
			'国家电网'
			WHEN 'G000122' THEN
			'国投集团'
			WHEN 'G000123' THEN
			'东阳光'
			WHEN 'G000124' THEN
			'国开行'
			WHEN 'G000125' THEN
			'三峡基金'
			WHEN 'G000126' THEN
			'国金证券'
			WHEN 'G000127' THEN
			'国开证券'
			WHEN 'G000128' THEN
			'国联证券'
			WHEN 'G000129' THEN
			'null'
			WHEN 'G000130' THEN
			'国盛证券'
			WHEN 'G000131' THEN
			'国泰君安'
			WHEN 'G000132' THEN
			'新集能源'
			WHEN 'G000133' THEN
			'国投中鲁'
			WHEN 'G000134' THEN
			'国信证券'
			WHEN 'G000135' THEN
			'国信证券'
			WHEN 'G000136' THEN
			'null'
			WHEN 'G000137' THEN
			'国药一致'
			WHEN 'G000138' THEN
			'国药控股'
			WHEN 'G000139' THEN
			'国元证券'
			WHEN 'G000140' THEN
			'null'
			WHEN 'G000141' THEN
			'广梅汕铁路'
			WHEN 'G000142' THEN
			'null'
			WHEN 'G000143' THEN
			'广东省政府'
			WHEN 'G000144' THEN
			'中小企业'
			WHEN 'G000145' THEN
			'中小企业'
			WHEN 'G000146' THEN
			'赣州建投集团'
			WHEN 'G000147' THEN
			'国中天津水务'
			WHEN 'G000148' THEN
			'融捷投资'
			WHEN 'G000149' THEN
			'贵州盘江电投发电'
			WHEN 'G000150' THEN
			'开磷'
			WHEN 'G000151' THEN
			'南海控股'
			WHEN 'G000152' THEN
			'广汇能源'
			WHEN 'G000153' THEN
			'粤电力'
			WHEN 'G000154' THEN
			'巩义国资'
			WHEN 'G000155' THEN
			'null'
			WHEN 'G000156' THEN
			'越秀'
			WHEN 'G000157' THEN
			'贵阳城投集团'
			WHEN 'G000158' THEN
			'广东建工'
			WHEN 'G000159' THEN
			'null'
			WHEN 'G000160' THEN
			'粤电航运'
			WHEN 'G000161' THEN
			'红海湾发电'
			WHEN 'G000162' THEN
			'泰州公司'
			WHEN 'G000163' THEN
			'国能山东电力'
			WHEN 'G000164' THEN
			'桂冠电力'
			WHEN 'G000165' THEN
			'广东省汽运集团'
			WHEN 'G000166' THEN
			'贵州粤黔电力'
			WHEN 'G000167' THEN
			'广西防城港核电'
			WHEN 'G000168' THEN
			'江苏电力'
			WHEN 'G000169' THEN
			'null'
			WHEN 'G000170' THEN
			'广州造纸'
			WHEN 'G000171' THEN
			'长源电力'
			WHEN 'G000172' THEN
			'番禺交建'
			WHEN 'G000173' THEN
			'贵州安大航空锻造'
			WHEN 'G000174' THEN
			'广西水利电业集团'
			WHEN 'G000175' THEN
			'贵州燃气'
			WHEN 'G000176' THEN
			'广州城投'
			WHEN 'G000177' THEN
			'广州医药'
			WHEN 'G000178' THEN
			'贵阳铁建'
			WHEN 'G000179' THEN
			'广西机场管理集团'
			WHEN 'G000180' THEN
			'中小企业'
			WHEN 'G000181' THEN
			'广发银行杭州分行'
			WHEN 'G000182' THEN
			'国开行湖北分行'
			WHEN 'G000183' THEN
			'甘肃银行'
			WHEN 'G000184' THEN
			'粤合资产'
			WHEN 'G000185' THEN
			'广州港'
			WHEN 'G000186' THEN
			'国投电力'
			WHEN 'G000187' THEN
			'贵州高速集团'
			WHEN 'G000188' THEN
			'国能生物发电'
			WHEN 'G000189' THEN
			'国开行湖南分行'
			WHEN 'G000190' THEN
			'国开行陕西分行'
			WHEN 'G000191' THEN
			'国开行新疆分行'
			WHEN 'G000192' THEN
			'普邦股份'
			WHEN 'G000193' THEN
			'保利联合'
			WHEN 'G000194' THEN
			'德豪润达'
			WHEN 'G000195' THEN
			'毅昌股份'
			WHEN 'G000196' THEN
			'中顺集团'
			WHEN 'G000197' THEN
			'东方锆业'
			WHEN 'G000198' THEN
			'国创高科'
			WHEN 'G000199' THEN
			'富力地产'
			WHEN 'G000200' THEN
			'顺钠股份'
			WHEN 'G000201' THEN
			'金誉集团'
			WHEN 'G000202' THEN
			'广州融担中心'
			WHEN 'G000203' THEN
			'智光电气'
			WHEN 'G000204' THEN
			'柳工'
			WHEN 'G000205' THEN
			'酒钢宏兴'
			WHEN 'G000206' THEN
			'柳钢'
			WHEN 'G000207' THEN
			'桂东电力'
			WHEN 'G000208' THEN
			'海大集团'
			WHEN 'G000209' THEN
			'贵州轮胎'
			WHEN 'G000210' THEN
			'国脉科技'
			WHEN 'G000211' THEN
			'null'
			WHEN 'G000212' THEN
			'广东榕泰'
			WHEN 'G000213' THEN
			'国药产业投资'
			WHEN 'G000214' THEN
			'星湖科技'
			WHEN 'G000215' THEN
			'国电科环'
			WHEN 'G000216' THEN
			'天融信'
			WHEN 'G000217' THEN
			'奥飞娱乐'
			WHEN 'G000218' THEN
			'香雪制药'
			WHEN 'G000219' THEN
			'金刚玻璃'
			WHEN 'H000001' THEN
			'合力投资'
			WHEN 'H000002' THEN
			'哈尔滨城投'
			WHEN 'H000003' THEN
			'哈尔滨信融风险资金担保'
			WHEN 'H000004' THEN
			'哈尔滨物业供热集团'
			WHEN 'H000005' THEN
			'哈尔滨银行'
			WHEN 'H000006' THEN
			'海安城投'
			WHEN 'H000007' THEN
			'海城城建投资'
			WHEN 'H000008' THEN
			'海航机场'
			WHEN 'H000009' THEN
			'海航集团'
			WHEN 'H000010' THEN
			'海航商业'
			WHEN 'H000011' THEN
			'海航资本'
			WHEN 'H000012' THEN
			'海口美兰国际机场'
			WHEN 'H000013' THEN
			'海亮集团'
			WHEN 'H000014' THEN
			'海润城发'
			WHEN 'H000015' THEN
			'海南港航'
			WHEN 'H000016' THEN
			'海南控股'
			WHEN 'H000017' THEN
			'海宁资产经营'
			WHEN 'H000018' THEN
			'海通证券'
			WHEN 'H000019' THEN
			'海盐国资'
			WHEN 'H000020' THEN
			'邯钢'
			WHEN 'H000021' THEN
			'邯郸城投'
			WHEN 'H000022' THEN
			'邯郸交通建设'
			WHEN 'H000023' THEN
			'汉江集团'
			WHEN 'H000024' THEN
			'汉口银行'
			WHEN 'H000025' THEN
			'汉中城建投'
			WHEN 'H000026' THEN
			'杭州高新区资产经营'
			WHEN 'H000027' THEN
			'杭锅股份'
			WHEN 'H000028' THEN
			'杭州联合银行'
			WHEN 'H000029' THEN
			'杭汽轮集团'
			WHEN 'H000030' THEN
			'杭齿前进'
			WHEN 'H000031' THEN
			'杭州城建'
			WHEN 'H000032' THEN
			'杭州城投'
			WHEN 'H000033' THEN
			'杭实集团'
			WHEN 'H000034' THEN
			'杭州交投集团'
			WHEN 'H000035' THEN
			'萧山国资'
			WHEN 'H000036' THEN
			'杭州萧山国际机场'
			WHEN 'H000037' THEN
			'萧山环境'
			WHEN 'H000038' THEN
			'杭州银行'
			WHEN 'H000039' THEN
			'余杭城建集团'
			WHEN 'H000040' THEN
			'新中法'
			WHEN 'H000041' THEN
			'合肥城投'
			WHEN 'H000042' THEN
			'合肥高新建投'
			WHEN 'H000043' THEN
			'海恒集团'
			WHEN 'H000044' THEN
			'合肥华泰集团'
			WHEN 'H000045' THEN
			'合肥建投集团'
			WHEN 'H000046' THEN
			'桃花工业园经济发展'
			WHEN 'H000047' THEN
			'合肥鑫城国资公司'
			WHEN 'H000048' THEN
			'渤海投资'
			WHEN 'H000049' THEN
			'河北出版传媒集团'
			WHEN 'H000050' THEN
			'九江线材'
			WHEN 'H000051' THEN
			'河钢集团'
			WHEN 'H000052' THEN
			'冀衡集团'
			WHEN 'H000053' THEN
			'河北建投集团'
			WHEN 'H000054' THEN
			'河北建投交投'
			WHEN 'H000055' THEN
			'建投新能源'
			WHEN 'H000056' THEN
			'河北国资运营'
			WHEN 'H000057' THEN
			'新合作'
			WHEN 'H000058' THEN
			'null'
			WHEN 'H000059' THEN
			'河北顺德集团'
			WHEN 'H000060' THEN
			'河北银行'
			WHEN 'H000061' THEN
			'恒星科技'
			WHEN 'H000062' THEN
			'河南交通投资集团'
			WHEN 'H000063' THEN
			'晋开化工'
			WHEN 'H000064' THEN
			'null'
			WHEN 'H000065' THEN
			'平高电气'
			WHEN 'H000066' THEN
			'神火集团'
			WHEN 'H000067' THEN
			'河南建投'
			WHEN 'H000068' THEN
			'郑新建投'
			WHEN 'H000069' THEN
			'中原再担保'
			WHEN 'H000070' THEN
			'河南中小企业投资担保'
			WHEN 'H000071' THEN
			'天冠集团'
			WHEN 'H000072' THEN
			'河南铁路投资'
			WHEN 'H000073' THEN
			'河南投资集团'
			WHEN 'H000074' THEN
			'万基铝业'
			WHEN 'H000075' THEN
			'心连心'
			WHEN 'H000076' THEN
			'豫光集团'
			WHEN 'H000077' THEN
			'中原高速'
			WHEN 'H000078' THEN
			'核电秦山'
			WHEN 'H000079' THEN
			'鹤壁投资'
			WHEN 'H000080' THEN
			'开源城投'
			WHEN 'H000081' THEN
			'黑河建投'
			WHEN 'H000082' THEN
			'北大荒集团'
			WHEN 'H000083' THEN
			'北大荒'
			WHEN 'H000084' THEN
			'龙煤集团'
			WHEN 'H000085' THEN
			'龙煤控股集团'
			WHEN 'H000086' THEN
			'龙高集团'
			WHEN 'H000087' THEN
			'鹤城建投'
			WHEN 'H000088' THEN
			'龙建集团'
			WHEN 'H000089' THEN
			'黑牡丹'
			WHEN 'H000090' THEN
			'亨通集团'
			WHEN 'H000091' THEN
			'恒丰银行'
			WHEN 'H000092' THEN
			'恒力集团'
			WHEN 'H000093' THEN
			'恒投证劵'
			WHEN 'H000094' THEN
			'横店集团'
			WHEN 'H000095' THEN
			'衡阳城建'
			WHEN 'H000096' THEN
			'红豆集团'
			WHEN 'H000097' THEN
			'恒昊矿业'
			WHEN 'H000098' THEN
			'红河开发投资'
			WHEN 'H000099' THEN
			'红狮集团'
			WHEN 'H000100' THEN
			'红塔证券'
			WHEN 'H000101' THEN
			'美凯龙'
			WHEN 'H000102' THEN
			'宏润建设'
			WHEN 'H000103' THEN
			'宏源证券'
			WHEN 'H000104' THEN
			'鸿达兴业集团'
			WHEN 'H000105' THEN
			'春华水务'
			WHEN 'H000106' THEN
			'楚天高速'
			WHEN 'H000107' THEN
			'清江水电开发'
			WHEN 'H000108' THEN
			'三宁化工'
			WHEN 'H000109' THEN
			'鄂旅投'
			WHEN 'H000110' THEN
			'湖北交投集团'
			WHEN 'H000111' THEN
			'联投集团'
			WHEN 'H000112' THEN
			'湖北能源'
			WHEN 'H000113' THEN
			'湖北铁路'
			WHEN 'H000114' THEN
			'双环科技'
			WHEN 'H000115' THEN
			'西塞山发电'
			WHEN 'H000116' THEN
			'新冶钢'
			WHEN 'H000117' THEN
			'兴发集团'
			WHEN 'H000118' THEN
			'德源集团'
			WHEN 'H000119' THEN
			'临港开投'
			WHEN 'H000120' THEN
			'电广传媒'
			WHEN 'H000121' THEN
			'富兴集团'
			WHEN 'H000122' THEN
			'湖南煤业'
			WHEN 'H000123' THEN
			'华菱集团'
			WHEN 'H000124' THEN
			'湖南黄金集团'
			WHEN 'H000125' THEN
			'湖南高速公路'
			WHEN 'H000126' THEN
			'湖南建工集团'
			WHEN 'H000127' THEN
			'湖南轻工盐业集团'
			WHEN 'H000128' THEN
			'晟通科技'
			WHEN 'H000129' THEN
			'湖南投资'
			WHEN 'H000130' THEN
			'湖南湘投控股'
			WHEN 'H000131' THEN
			'盈德气体'
			WHEN 'H000132' THEN
			'湖南有色集团'
			WHEN 'H000133' THEN
			'昭山经济建设投资'
			WHEN 'H000134' THEN
			'湖州城投'
			WHEN 'H000135' THEN
			'湖州交投'
			WHEN 'H000136' THEN
			'南浔国投'
			WHEN 'H000137' THEN
			'南太湖建投'
			WHEN 'H000138' THEN
			'葫芦岛投资集团'
			WHEN 'H000139' THEN
			'华安证券'
			WHEN 'H000140' THEN
			'华北制药'
			WHEN 'H000141' THEN
			'华晨汽车集团'
			WHEN 'H000142' THEN
			'华电国际'
			WHEN 'H000143' THEN
			'华电煤业'
			WHEN 'H000144' THEN
			'华电能源'
			WHEN 'H000145' THEN
			'华林证券'
			WHEN 'H000146' THEN
			'华龙证券'
			WHEN 'H000147' THEN
			'华鲁控股'
			WHEN 'H000148' THEN
			'华能国际'
			WHEN 'H000149' THEN
			'华能水电'
			WHEN 'H000150' THEN
			'华能四川水电'
			WHEN 'H000151' THEN
			'华信证券'
			WHEN 'H000152' THEN
			'华侨城集团'
			WHEN 'H000153' THEN
			'华融金融租赁'
			WHEN 'H000154' THEN
			'华融证券'
			WHEN 'H000155' THEN
			'华润电力'
			WHEN 'H000156' THEN
			'华润股份'
			WHEN 'H000157' THEN
			'华润医药'
			WHEN 'H000158' THEN
			'华盛江泉集团'
			WHEN 'H000159' THEN
			'华泰集团'
			WHEN 'H000160' THEN
			'华泰联合'
			WHEN 'H000161' THEN
			'华泰证券'
			WHEN 'H000162' THEN
			'null'
			WHEN 'H000163' THEN
			'华天酒店'
			WHEN 'H000164' THEN
			'华天集团'
			WHEN 'H000165' THEN
			'华西证券'
			WHEN 'H000166' THEN
			'华夏银行'
			WHEN 'H000167' THEN
			'华夏证券'
			WHEN 'H000168' THEN
			'华新水泥'
			WHEN 'H000169' THEN
			'华谊兄弟'
			WHEN 'H000170' THEN
			'华英证券'
			WHEN 'H000171' THEN
			'华映科技'
			WHEN 'H000172' THEN
			'怀化城投'
			WHEN 'H000173' THEN
			'淮安开发控股'
			WHEN 'H000174' THEN
			'清河投资'
			WHEN 'H000175' THEN
			'淮安城资'
			WHEN 'H000176' THEN
			'淮安水利'
			WHEN 'H000177' THEN
			'淮北矿业集团'
			WHEN 'H000178' THEN
			'淮北建投'
			WHEN 'H000179' THEN
			'淮南矿业集团'
			WHEN 'H000180' THEN
			'淮南产业集团'
			WHEN 'H000181' THEN
			'淮南城投'
			WHEN 'H000182' THEN
			'皇明洁能'
			WHEN 'H000183' THEN
			'黄冈城投'
			WHEN 'H000184' THEN
			'黄山旅游集团'
			WHEN 'H000185' THEN
			'黄山城投'
			WHEN 'H000186' THEN
			'黄石城投'
			WHEN 'H000187' THEN
			'徽商银行'
			WHEN 'H000188' THEN
			'惠安国投'
			WHEN 'H000189' THEN
			'中小企业'
			WHEN 'H000190' THEN
			'null'
			WHEN 'H000191' THEN
			'null'
			WHEN 'H000192' THEN
			'淮北建投'
			WHEN 'H000193' THEN
			'中小企业'
			WHEN 'H000194' THEN
			'中小企业'
			WHEN 'H000195' THEN
			'惠誉'
			WHEN 'H000196' THEN
			'中小企业'
			WHEN 'H000197' THEN
			'中小企业'
			WHEN 'H000198' THEN
			'中小企业'
			WHEN 'H000199' THEN
			'中小企业'
			WHEN 'H000200' THEN
			'中小企业'
			WHEN 'H000201' THEN
			'中小企业'
			WHEN 'H000202' THEN
			'中小企业'
			WHEN 'H000203' THEN
			'中小企业'
			WHEN 'H000204' THEN
			'会理财通'
			WHEN 'H000205' THEN
			'中小企业'
			WHEN 'H000206' THEN
			'萧山经开国资经营'
			WHEN 'H000207' THEN
			'仲景宛西制药'
			WHEN 'H000208' THEN
			'华立'
			WHEN 'H000209' THEN
			'湘投金天'
			WHEN 'H000210' THEN
			'盛润集团'
			WHEN 'H000211' THEN
			'中小企业'
			WHEN 'H000212' THEN
			'中小企业'
			WHEN 'H000213' THEN
			'河南水建'
			WHEN 'H000214' THEN
			'建投能源'
			WHEN 'H000215' THEN
			'河北信投集团'
			WHEN 'H000216' THEN
			'杭氧股份'
			WHEN 'H000217' THEN
			'华峰集团'
			WHEN 'H000218' THEN
			'中小企业'
			WHEN 'H000219' THEN
			'友阿股份'
			WHEN 'H000220' THEN
			'洋浦控股'
			WHEN 'H000221' THEN
			'航天电子'
			WHEN 'H000222' THEN
			'余杭创投'
			WHEN 'H000223' THEN
			'河源城开'
			WHEN 'H000224' THEN
			'哈投集团'
			WHEN 'H000225' THEN
			'众品食业'
			WHEN 'H000226' THEN
			'合肥工投'
			WHEN 'H000227' THEN
			'宜化集团'
			WHEN 'H000228' THEN
			'钱塘新区产发集团'
			WHEN 'H000229' THEN
			'华闻集团'
			WHEN 'H000230' THEN
			'运河集团'
			WHEN 'H000231' THEN
			'中小企业'
			WHEN 'H000232' THEN
			'洋丰集团'
			WHEN 'H000233' THEN
			'湖南发展集团'
			WHEN 'H000234' THEN
			'韩泰轮胎'
			WHEN 'H000235' THEN
			'华工科技'
			WHEN 'H000236' THEN
			'金海浆纸'
			WHEN 'H000237' THEN
			'湖南粮食集团'
			WHEN 'H000238' THEN
			'金霞粮食'
			WHEN 'H000239' THEN
			'恒信德龙'
			WHEN 'H000240' THEN
			'湖南五强产业集团'
			WHEN 'H000241' THEN
			'海南海药'
			WHEN 'H000242' THEN
			'红河公路开发经营'
			WHEN 'H000243' THEN
			'哈水投集团'
			WHEN 'H000244' THEN
			'河南国控集团'
			WHEN 'H000245' THEN
			'海拉尔城投'
			WHEN 'H000246' THEN
			'花园集团'
			WHEN 'H000247' THEN
			'华电福新'
			WHEN 'H000248' THEN
			'河北港口集团'
			WHEN 'H000249' THEN
			'湖南高速投资'
			WHEN 'H000250' THEN
			'衡阳弘湘'
			WHEN 'H000251' THEN
			'华夏银行红河支行'
			WHEN 'H000252' THEN
			'哈尔滨银行哈尔滨分行'
			WHEN 'H000253' THEN
			'华夏银行杭州解放支行'
			WHEN 'H000254' THEN
			'徽商银行巢湖支行'
			WHEN 'H000255' THEN
			'华通路桥集团'
			WHEN 'H000256' THEN
			'华润三九'
			WHEN 'H000257' THEN
			'维信诺'
			WHEN 'H000258' THEN
			'河钢股份'
			WHEN 'H000259' THEN
			'瀚华融资担保'
			WHEN 'H000260' THEN
			'湖北宜化'
			WHEN 'H000261' THEN
			'null'
			WHEN 'H000262' THEN
			'华西能源'
			WHEN 'H000263' THEN
			'国富证券'
			WHEN 'H000264' THEN
			'鹏都农牧'
			WHEN 'H000265' THEN
			'新野纺织'
			WHEN 'H000266' THEN
			'国创高新'
			WHEN 'H000267' THEN
			'中孚实业'
			WHEN 'H000268' THEN
			'杭钢股份'
			WHEN 'H000269' THEN
			'杭钢集团'
			WHEN 'H000270' THEN
			'华仪电气'
			WHEN 'H000271' THEN
			'华仪集团'
			WHEN 'H000272' THEN
			'华锐风电'
			WHEN 'H000273' THEN
			'美兰空港'
			WHEN 'H000274' THEN
			'银鸽投资'
			WHEN 'H000275' THEN
			'海航控股'
			WHEN 'H000276' THEN
			'横店东磁'
			WHEN 'H000277' THEN
			'士兰微'
			WHEN 'H000278' THEN
			'士兰控股'
			WHEN 'H000279' THEN
			'华孚时尚'
			WHEN 'H000280' THEN
			'海油工程'
			WHEN 'H000281' THEN
			'华能国际'
			WHEN 'H000282' THEN
			'哈尔滨电气'
			WHEN 'H000283' THEN
			'哈电集团'
			WHEN 'H000284' THEN
			'华能新能源'
			WHEN 'H000285' THEN
			'黄河旋风'
			WHEN 'H000286' THEN
			'汉唐证券'
			WHEN 'J000001' THEN
			'鸡西国资经营'
			WHEN 'J000002' THEN
			'吉安城建'
			WHEN 'J000003' THEN
			'吉电股份'
			WHEN 'J000004' THEN
			'昊融集团'
			WHEN 'J000005' THEN
			'吉高集团'
			WHEN 'J000006' THEN
			'吉煤集团'
			WHEN 'J000007' THEN
			'吉林城建'
			WHEN 'J000008' THEN
			'吉林铁投'
			WHEN 'J000009' THEN
			'亚泰集团'
			WHEN 'J000010' THEN
			'吉林银行'
			WHEN 'J000011' THEN
			'济钢集团'
			WHEN 'J000012' THEN
			'济南城投'
			WHEN 'J000013' THEN
			'小清河建投'
			WHEN 'J000014' THEN
			'山东公用'
			WHEN 'J000015' THEN
			'济宁矿业'
			WHEN 'J000016' THEN
			'济宁城投'
			WHEN 'J000017' THEN
			'冀东发展'
			WHEN 'J000018' THEN
			'峰峰集团'
			WHEN 'J000019' THEN
			'冀中能源'
			WHEN 'J000020' THEN
			'佳木斯城投'
			WHEN 'J000021' THEN
			'嘉善国投'
			WHEN 'J000022' THEN
			'嘉兴城投'
			WHEN 'J000023' THEN
			'嘉兴投资发展集团'
			WHEN 'J000024' THEN
			'嘉城集团'
			WHEN 'J000025' THEN
			'嘉兴高投'
			WHEN 'J000026' THEN
			'嘉兴国资运营'
			WHEN 'J000027' THEN
			'嘉服集团'
			WHEN 'J000028' THEN
			'湾北集团'
			WHEN 'J000029' THEN
			'建发房产'
			WHEN 'J000030' THEN
			'龙川控股'
			WHEN 'J000031' THEN
			'江都沿江开发'
			WHEN 'J000032' THEN
			'江铃控股'
			WHEN 'J000033' THEN
			'模塑科技'
			WHEN 'J000034' THEN
			'null'
			WHEN 'J000035' THEN
			'长电科技'
			WHEN 'J000036' THEN
			'大丰港集团'
			WHEN 'J000037' THEN
			'法尔胜泓昇集团'
			WHEN 'J000038' THEN
			'飞达集团'
			WHEN 'J000039' THEN
			'凤凰出版传媒集团'
			WHEN 'J000040' THEN
			'国泰国际贸易'
			WHEN 'J000041' THEN
			'海州湾集团'
			WHEN 'J000042' THEN
			'江苏核电'
			WHEN 'J000043' THEN
			'弘盛集团'
			WHEN 'J000044' THEN
			'红豆股份'
			WHEN 'J000045' THEN
			'宏图高科'
			WHEN 'J000046' THEN
			'华昌化工'
			WHEN 'J000047' THEN
			'华东有色'
			WHEN 'J000048' THEN
			'江苏华靖'
			WHEN 'J000049' THEN
			'江苏华西集团'
			WHEN 'J000050' THEN
			'null'
			WHEN 'J000051' THEN
			'null'
			WHEN 'J000052' THEN
			'帝斯曼'
			WHEN 'J000053' THEN
			'江苏交控'
			WHEN 'J000054' THEN
			'连云港投资集团'
			WHEN 'J000055' THEN
			'江苏租赁'
			WHEN 'J000056' THEN
			'京沪高速'
			WHEN 'J000057' THEN
			'福地公司'
			WHEN 'J000058' THEN
			'江苏连云发展集团'
			WHEN 'J000059' THEN
			'宁沪高速'
			WHEN 'J000060' THEN
			'熔盛重工'
			WHEN 'J000061' THEN
			'三房巷集团'
			WHEN 'J000062' THEN
			'淮钢特钢'
			WHEN 'J000063' THEN
			'沙钢集团'
			WHEN 'J000064' THEN
			'江苏有线'
			WHEN 'J000065' THEN
			'国信集团'
			WHEN 'J000066' THEN
			'海企集团'
			WHEN 'J000067' THEN
			'江苏华建'
			WHEN 'J000068' THEN
			'浦口经开'
			WHEN 'J000069' THEN
			'江苏农垦'
			WHEN 'J000070' THEN
			'苏豪集团'
			WHEN 'J000071' THEN
			'太仓港港口开发建投'
			WHEN 'J000072' THEN
			'吴中经发'
			WHEN 'J000073' THEN
			'锡山经开'
			WHEN 'J000074' THEN
			'江苏信保集团'
			WHEN 'J000075' THEN
			'苏盐集团'
			WHEN 'J000076' THEN
			'张家港经开'
			WHEN 'J000077' THEN
			'双良科技'
			WHEN 'J000078' THEN
			'苏海投资'
			WHEN 'J000079' THEN
			'苏通大桥'
			WHEN 'J000080' THEN
			'索普集团'
			WHEN 'J000081' THEN
			'沃得集团'
			WHEN 'J000082' THEN
			'东方盛虹'
			WHEN 'J000083' THEN
			'武进经发集团'
			WHEN 'J000084' THEN
			'新海连集团'
			WHEN 'J000085' THEN
			'南极电商'
			WHEN 'J000086' THEN
			'新扬子造船'
			WHEN 'J000087' THEN
			'扬农集团'
			WHEN 'J000088' THEN
			'江苏阳光集团'
			WHEN 'J000089' THEN
			'洋河集团'
			WHEN 'J000090' THEN
			'奕淳集团'
			WHEN 'J000091' THEN
			'江苏银行'
			WHEN 'J000092' THEN
			'裕廊化工'
			WHEN 'J000093' THEN
			'悦达集团'
			WHEN 'J000094' THEN
			'中能硅业'
			WHEN 'J000095' THEN
			'中天科技'
			WHEN 'J000096' THEN
			'江西长运'
			WHEN 'J000097' THEN
			'赣粤高速'
			WHEN 'J000098' THEN
			'和济投资'
			WHEN 'J000099' THEN
			'联创光电'
			WHEN 'J000100' THEN
			'赛维太阳能'
			WHEN 'J000101' THEN
			'江西交通投集'
			WHEN 'J000102' THEN
			'江西能源集团'
			WHEN 'J000103' THEN
			'江西水利投资集团'
			WHEN 'J000104' THEN
			'省铁航集团'
			WHEN 'J000105' THEN
			'江西投资'
			WHEN 'J000106' THEN
			'江铜集团'
			WHEN 'J000107' THEN
			'江钨控股集团'
			WHEN 'J000108' THEN
			'江阴城投'
			WHEN 'J000109' THEN
			'澄星集团'
			WHEN 'J000110' THEN
			'江阴高新投资'
			WHEN 'J000111' THEN
			'江阴利港发电'
			WHEN 'J000112' THEN
			'江阴公有资产经营'
			WHEN 'J000113' THEN
			'新国联集团'
			WHEN 'J000114' THEN
			'苏龙热电'
			WHEN 'J000115' THEN
			'兴澄特钢'
			WHEN 'J000116' THEN
			'中南文化'
			WHEN 'J000117' THEN
			'姜堰国投'
			WHEN 'J000118' THEN
			'交通银行'
			WHEN 'J000119' THEN
			'交行北京分行'
			WHEN 'J000120' THEN
			'交行长沙分行'
			WHEN 'J000121' THEN
			'交行杭州分行'
			WHEN 'J000122' THEN
			'交行南昌分行'
			WHEN 'J000123' THEN
			'交行青岛分行'
			WHEN 'J000124' THEN
			'交行上海分行'
			WHEN 'J000125' THEN
			'交行深圳分行'
			WHEN 'J000126' THEN
			'交行芜湖分行'
			WHEN 'J000127' THEN
			'交行重庆分行'
			WHEN 'J000128' THEN
			'上海打捞局'
			WHEN 'J000129' THEN
			'交银金融租赁'
			WHEN 'J000130' THEN
			'焦作煤业集团'
			WHEN 'J000131' THEN
			'焦作建投'
			WHEN 'J000132' THEN
			'焦作投资集团'
			WHEN 'J000133' THEN
			'金城集团'
			WHEN 'J000134' THEN
			'金川集团'
			WHEN 'J000135' THEN
			'金蝶软件'
			WHEN 'J000136' THEN
			'金光纸业'
			WHEN 'J000137' THEN
			'金湖国资经投'
			WHEN 'J000138' THEN
			'金华国资经营'
			WHEN 'J000139' THEN
			'金坛建资'
			WHEN 'J000140' THEN
			'金元证券'
			WHEN 'J000141' THEN
			'null'
			WHEN 'J000142' THEN
			'锦江国际集团'
			WHEN 'J000143' THEN
			'锦州港'
			WHEN 'J000144' THEN
			'锦州城投'
			WHEN 'J000145' THEN
			'锦州银行'
			WHEN 'J000146' THEN
			'晋江产业发展投资'
			WHEN 'J000147' THEN
			'晋中公用控股'
			WHEN 'J000148' THEN
			'经纬纺机'
			WHEN 'J000149' THEN
			'荆门城建'
			WHEN 'J000150' THEN
			'荆州城发'
			WHEN 'J000151' THEN
			'晶科能源'
			WHEN 'J000152' THEN
			'精工控股集团'
			WHEN 'J000153' THEN
			'景德镇国控集团'
			WHEN 'J000154' THEN
			'滨江新城'
			WHEN 'J000155' THEN
			'九江城投'
			WHEN 'J000156' THEN
			'九江银行'
			WHEN 'J000157' THEN
			'九州通'
			WHEN 'J000158' THEN
			'玖龙纸业(太仓)'
			WHEN 'J000159' THEN
			'酒钢集团'
			WHEN 'J000160' THEN
			'宁宿徐高速'
			WHEN 'J000161' THEN
			'巨化集团'
			WHEN 'J000162' THEN
			'巨力集团'
			WHEN 'J000163' THEN
			'巨石集团'
			WHEN 'J000164' THEN
			'玖龙纸业(重庆)'
			WHEN 'J000165' THEN
			'吉首华泰国投'
			WHEN 'J000166' THEN
			'null'
			WHEN 'J000167' THEN
			'中小企业'
			WHEN 'J000168' THEN
			'中小企业'
			WHEN 'J000169' THEN
			'中小企业'
			WHEN 'J000170' THEN
			'中小企业'
			WHEN 'J000171' THEN
			'中小企业'
			WHEN 'J000172' THEN
			'中小企业'
			WHEN 'J000173' THEN
			'中小企业'
			WHEN 'J000174' THEN
			'中小企业'
			WHEN 'J000175' THEN
			'中小企业'
			WHEN 'J000176' THEN
			'中小企业'
			WHEN 'J000177' THEN
			'中小企业'
			WHEN 'J000178' THEN
			'中小企业'
			WHEN 'J000179' THEN
			'交行天津分行'
			WHEN 'J000180' THEN
			'中小企业'
			WHEN 'J000181' THEN
			'中小企业'
			WHEN 'J000182' THEN
			'康缘集团'
			WHEN 'J000183' THEN
			'文峰集团'
			WHEN 'J000184' THEN
			'null'
			WHEN 'J000185' THEN
			'中小企业'
			WHEN 'J000186' THEN
			'高新城建投资'
			WHEN 'J000187' THEN
			'江苏新时代造船'
			WHEN 'J000188' THEN
			'滨江建投'
			WHEN 'J000189' THEN
			'金陵建工'
			WHEN 'J000190' THEN
			'建湖城建'
			WHEN 'J000191' THEN
			'中小企业'
			WHEN 'J000192' THEN
			'精功集团'
			WHEN 'J000193' THEN
			'中小企业'
			WHEN 'J000194' THEN
			'江苏金灌'
			WHEN 'J000195' THEN
			'九江国资'
			WHEN 'J000196' THEN
			'江苏银行常州分行'
			WHEN 'J000197' THEN
			'交行常州分行'
			WHEN 'J000198' THEN
			'江苏广播电视集团'
			WHEN 'J000199' THEN
			'富和集团'
			WHEN 'J000200' THEN
			'张家口矿业集团'
			WHEN 'J000201' THEN
			'常熟发电'
			WHEN 'J000202' THEN
			'华地国控'
			WHEN 'J000203' THEN
			'江西天然气集团'
			WHEN 'J000204' THEN
			'通鼎互联'
			WHEN 'J000205' THEN
			'华润江中'
			WHEN 'J000206' THEN
			'晋江城建'
			WHEN 'J000207' THEN
			'黑猫股份'
			WHEN 'J000208' THEN
			'苏化集团'
			WHEN 'J000209' THEN
			'方洋集团'
			WHEN 'J000210' THEN
			'中小企业'
			WHEN 'J000211' THEN
			'中小企业'
			WHEN 'J000212' THEN
			'交行绍兴分行'
			WHEN 'J000213' THEN
			'交行江苏分行'
			WHEN 'J000214' THEN
			'交行浙江分行'
			WHEN 'J000215' THEN
			'九江农商行'
			WHEN 'J000216' THEN
			'江苏银行盐城分行'
			WHEN 'J000217' THEN
			'苏盐井神'
			WHEN 'J000218' THEN
			'吉林银行通化分行'
			WHEN 'J000219' THEN
			'常熟农商行金湖支行'
			WHEN 'J000220' THEN
			'交行黄石分行'
			WHEN 'J000221' THEN
			'交行海宁支行'
			WHEN 'J000222' THEN
			'交行山西分行'
			WHEN 'J000223' THEN
			'交行镇江分行'
			WHEN 'J000224' THEN
			'交行嘉兴分行'
			WHEN 'J000225' THEN
			'交行徐州分行'
			WHEN 'J000226' THEN
			'交行舟山分行'
			WHEN 'J000227' THEN
			'嘉实'
			WHEN 'J000228' THEN
			'江南集团'
			WHEN 'J000229' THEN
			'江苏省建集团'
			WHEN 'J000230' THEN
			'冀中能源'
			WHEN 'J000231' THEN
			'正邦科技'
			WHEN 'J000232' THEN
			'联发股份'
			WHEN 'J000233' THEN
			'凯文教育'
			WHEN 'J000234' THEN
			'金融街'
			WHEN 'J000235' THEN
			'万年青'
			WHEN 'J000236' THEN
			'江苏国信'
			WHEN 'J000237' THEN
			'综艺股份'
			WHEN 'J000238' THEN
			'中鼎地产'
			WHEN 'J000239' THEN
			'健康元'
			WHEN 'J000240' THEN
			'华微电子'
			WHEN 'J000241' THEN
			'洪城水业'
			WHEN 'J000242' THEN
			'鹿港文化'
			WHEN 'J000243' THEN
			'焦作万方'
			WHEN 'J000244' THEN
			'金发科技'
			WHEN 'J000245' THEN
			'金地集团'
			WHEN 'J000246' THEN
			'江西国控公司'
			WHEN 'J000247' THEN
			'吉林高速'
			WHEN 'J000248' THEN
			'连云港'
			WHEN 'J000249' THEN
			'江中药业'
			WHEN 'K000001' THEN
			'喀什城投集团'
			WHEN 'K000002' THEN
			'开封发展投资'
			WHEN 'K000003' THEN
			'开滦集团'
			WHEN 'K000004' THEN
			'开滦股份'
			WHEN 'K000005' THEN
			'开元旅业集团'
			WHEN 'K000006' THEN
			'克拉玛依建投'
			WHEN 'K000007' THEN
			'库尔勒城建'
			WHEN 'K000008' THEN
			'昆明产投公司'
			WHEN 'K000009' THEN
			'昆明滇投'
			WHEN 'K000010' THEN
			'昆钢集团'
			WHEN 'K000011' THEN
			'昆钢'
			WHEN 'K000012' THEN
			'昆明交通产业'
			WHEN 'K000013' THEN
			'昆明城投'
			WHEN 'K000014' THEN
			'昆明交投'
			WHEN 'K000015' THEN
			'昆明五华国投'
			WHEN 'K000016' THEN
			'昆明自来水'
			WHEN 'K000017' THEN
			'银桥控股'
			WHEN 'K000018' THEN
			'昆山创控集团'
			WHEN 'K000019' THEN
			'null'
			WHEN 'K000020' THEN
			'云内动力'
			WHEN 'K000021' THEN
			'康美药业'
			WHEN 'K000022' THEN
			'康得集团'
			WHEN 'L000001' THEN
			'银鸽集团'
			WHEN 'L000002' THEN
			'莱钢集团'
			WHEN 'L000003' THEN
			'齐鲁财金山东'
			WHEN 'L000004' THEN
			'兰州城投'
			WHEN 'L000005' THEN
			'兰州银行'
			WHEN 'L000006' THEN
			'乐清国有投资'
			WHEN 'L000007' THEN
			'乐山国投集团'
			WHEN 'L000008' THEN
			'丽江古城'
			WHEN 'L000009' THEN
			'丽江股份'
			WHEN 'L000010' THEN
			'丽水城投'
			WHEN 'L000011' THEN
			'丽珠集团'
			WHEN 'L000012' THEN
			'溧阳城发集团'
			WHEN 'L000013' THEN
			'连云港港口集团'
			WHEN 'L000014' THEN
			'联合信用'
			WHEN 'L000015' THEN
			'null'
			WHEN 'L000016' THEN
			'联合资信'
			WHEN 'L000017' THEN
			'联想控股'
			WHEN 'L000018' THEN
			'凉山发展'
			WHEN 'L000019' THEN
			'辽宁成大'
			WHEN 'L000020' THEN
			'方大集团'
			WHEN 'L000021' THEN
			'宏程塑料'
			WHEN 'L000022' THEN
			'华锦股份'
			WHEN 'L000023' THEN
			'辽宁能源'
			WHEN 'L000024' THEN
			'曙光股份'
			WHEN 'L000025' THEN
			'忠旺集团'
			WHEN 'L000026' THEN
			'辽阳城资'
			WHEN 'L000027' THEN
			'辽阳银行'
			WHEN 'L000028' THEN
			'辽源国资经营'
			WHEN 'L000029' THEN
			'国兴投资'
			WHEN 'L000030' THEN
			'临投集团'
			WHEN 'L000031' THEN
			'临海基投'
			WHEN 'L000032' THEN
			'临沂经开'
			WHEN 'L000033' THEN
			'临矿集团'
			WHEN 'L000034' THEN
			'临沂城发集团'
			WHEN 'L000035' THEN
			'临沂财金投资'
			WHEN 'L000036' THEN
			'临沂投资发展'
			WHEN 'L000037' THEN
			'灵宝黄金'
			WHEN 'L000038' THEN
			'凌云股份'
			WHEN 'L000039' THEN
			'东城集团'
			WHEN 'L000040' THEN
			'柳州城建'
			WHEN 'L000041' THEN
			'柳州投控'
			WHEN 'L000042' THEN
			'六安城投'
			WHEN 'L000043' THEN
			'六盘水开发投资'
			WHEN 'L000044' THEN
			'龙控集团'
			WHEN 'L000045' THEN
			'龙海国投'
			WHEN 'L000046' THEN
			'龙矿集团'
			WHEN 'L000047' THEN
			'龙口煤电'
			WHEN 'L000048' THEN
			'龙岩城发集团'
			WHEN 'L000049' THEN
			'龙岩交发集团'
			WHEN 'L000050' THEN
			'龙源电力'
			WHEN 'L000051' THEN
			'娄底城发'
			WHEN 'L000052' THEN
			'泸州老窖集团'
			WHEN 'L000053' THEN
			'兴泸投资'
			WHEN 'L000054' THEN
			'鲁南制药'
			WHEN 'L000055' THEN
			'鲁能集团'
			WHEN 'L000056' THEN
			'潞安新疆公司'
			WHEN 'L000057' THEN
			'洛阳矿业'
			WHEN 'L000058' THEN
			'洛阳钼业'
			WHEN 'L000059' THEN
			'漯河城投'
			WHEN 'L000060' THEN
			'辽宁药都发展'
			WHEN 'L000061' THEN
			'泸州银行'
			WHEN 'L000062' THEN
			'洛阳城投集团'
			WHEN 'L000063' THEN
			'林州重机'
			WHEN 'L000064' THEN
			'绿地能源'
			WHEN 'L000065' THEN
			'辽渔集团'
			WHEN 'L000066' THEN
			'龙岩投发'
			WHEN 'L000067' THEN
			'乐山商行'
			WHEN 'L000068' THEN
			'临海国资'
			WHEN 'L000069' THEN
			'临沧国资'
			WHEN 'L000070' THEN
			'莱商银行'
			WHEN 'L000071' THEN
			'溧水城建集团'
			WHEN 'L000072' THEN
			'洛阳高新实业'
			WHEN 'L000073' THEN
			'隆鑫控股'
			WHEN 'L000074' THEN
			'洛阳银行'
			WHEN 'L000075' THEN
			'露笑科技'
			WHEN 'L000076' THEN
			'凌钢股份'
			WHEN 'L000077' THEN
			'凌钢集团'
			WHEN 'L000078' THEN
			'联化科技'
			WHEN 'L000079' THEN
			'柳化股份'
			WHEN 'L000080' THEN
			'柳州化工'
			WHEN 'L000081' THEN
			'柳钢股份'
			WHEN 'L000082' THEN
			'鲁信创投'
			WHEN 'L000083' THEN
			'鲁西化工'
			WHEN 'L000084' THEN
			'莱钢股份'
			WHEN 'L000085' THEN
			'骆驼股份'
			WHEN 'L000086' THEN
			'力帆股份'
			WHEN 'L000087' THEN
			'乐视网'
			WHEN 'M000001' THEN
			'马钢股份'
			WHEN 'M000002' THEN
			'江东控股集团'
			WHEN 'M000003' THEN
			'马钢集团'
			WHEN 'M000004' THEN
			'梅花生物'
			WHEN 'M000005' THEN
			'美都能源'
			WHEN 'M000006' THEN
			'美克集团'
			WHEN 'M000007' THEN
			'科发集团'
			WHEN 'M000008' THEN
			'绵投控股'
			WHEN 'M000009' THEN
			'民生证券'
			WHEN 'M000010' THEN
			'null'
			WHEN 'M000011' THEN
			'摩根华鑫证券'
			WHEN 'M000012' THEN
			'牡丹江国投'
			WHEN 'M000013' THEN
			'马鞍山建投'
			WHEN 'M000014' THEN
			'美的集团'
			WHEN 'M000015' THEN
			'闽西兴杭'
			WHEN 'M000016' THEN
			'宏大建设'
			WHEN 'M000017' THEN
			'眉山发展'
			WHEN 'M000018' THEN
			'美好置业'
			WHEN 'N000001' THEN
			'内江投资'
			WHEN 'N000002' THEN
			'包钢股份'
			WHEN 'N000003' THEN
			'博源集团'
			WHEN 'N000004' THEN
			'大唐国际'
			WHEN 'N000005' THEN
			'岱海发电公司'
			WHEN 'N000006' THEN
			'内蒙古地矿'
			WHEN 'N000007' THEN
			'羊绒集团'
			WHEN 'N000008' THEN
			'内蒙古高速'
			WHEN 'N000009' THEN
			'高新控股'
			WHEN 'N000010' THEN
			'霍煤集团'
			WHEN 'N000011' THEN
			'集通铁路'
			WHEN 'N000012' THEN
			'君正集团'
			WHEN 'N000013' THEN
			'蒙发煤炭'
			WHEN 'N000014' THEN
			'蒙西水泥'
			WHEN 'N000015' THEN
			'奈伦集团'
			WHEN 'N000016' THEN
			'太西煤集团'
			WHEN 'N000017' THEN
			'伊泰集团'
			WHEN 'N000018' THEN
			'亿利洁能'
			WHEN 'N000019' THEN
			'南安能源工贸'
			WHEN 'N000020' THEN
			'南昌城投'
			WHEN 'N000021' THEN
			'红谷滩城投'
			WHEN 'N000022' THEN
			'南昌市政'
			WHEN 'N000023' THEN
			'江西银行'
			WHEN 'N000024' THEN
			'南充发展'
			WHEN 'N000025' THEN
			'南充经开投资'
			WHEN 'N000026' THEN
			'南方水泥'
			WHEN 'N000027' THEN
			'南京二桥公司'
			WHEN 'N000028' THEN
			'南京三桥公司'
			WHEN 'N000029' THEN
			'南一农集团'
			WHEN 'N000030' THEN
			'南钢集团'
			WHEN 'N000031' THEN
			'南京钢铁'
			WHEN 'N000032' THEN
			'南京港集团'
			WHEN 'N000033' THEN
			'南高齿'
			WHEN 'N000034' THEN
			'江北新区产投'
			WHEN 'N000035' THEN
			'南京公控'
			WHEN 'N000036' THEN
			'南京江北建投'
			WHEN 'N000037' THEN
			'南京江宁科学园'
			WHEN 'N000038' THEN
			'东部机场'
			WHEN 'N000039' THEN
			'南京城建集团'
			WHEN 'N000040' THEN
			'南京国资集团'
			WHEN 'N000041' THEN
			'河西国资集团'
			WHEN 'N000042' THEN
			'江宁自来水'
			WHEN 'N000043' THEN
			'南京交通集团'
			WHEN 'N000044' THEN
			'新工投资集团'
			WHEN 'N000045' THEN
			'南京新百'
			WHEN 'N000046' THEN
			'南京医药'
			WHEN 'N000047' THEN
			'南京银行'
			WHEN 'N000048' THEN
			'雨润集团'
			WHEN 'N000049' THEN
			'南京证券'
			WHEN 'N000050' THEN
			'中电熊猫'
			WHEN 'N000051' THEN
			'钟山风景建设'
			WHEN 'N000052' THEN
			'建宁水务集团'
			WHEN 'N000053' THEN
			'南宁城建'
			WHEN 'N000054' THEN
			'南山集团'
			WHEN 'N000055' THEN
			'南通产控'
			WHEN 'N000056' THEN
			'南通港'
			WHEN 'N000057' THEN
			'南通国投'
			WHEN 'N000058' THEN
			'南通经开控股集团'
			WHEN 'N000059' THEN
			'惠通投资'
			WHEN 'N000060' THEN
			'南通四建'
			WHEN 'N000061' THEN
			'天生港发电'
			WHEN 'N000062' THEN
			'南通综艺投资'
			WHEN 'N000063' THEN
			'宁波城建'
			WHEN 'N000064' THEN
			'富邦控股集团'
			WHEN 'N000065' THEN
			'宁波交通投资'
			WHEN 'N000066' THEN
			'宁波开发投资集团'
			WHEN 'N000067' THEN
			'宁波电力开发'
			WHEN 'N000068' THEN
			'杭州湾大桥'
			WHEN 'N000069' THEN
			'镇海海江投资'
			WHEN 'N000070' THEN
			'镇海投资'
			WHEN 'N000071' THEN
			'亚洲浆纸'
			WHEN 'N000072' THEN
			'宁波银行'
			WHEN 'N000073' THEN
			'原水'
			WHEN 'N000074' THEN
			'宁德国资经营'
			WHEN 'N000075' THEN
			'宁海城投'
			WHEN 'N000076' THEN
			'宝丰能源'
			WHEN 'N000077' THEN
			'中铝宁夏'
			WHEN 'N000078' THEN
			'宁夏建材'
			WHEN 'N000079' THEN
			'宁夏交投'
			WHEN 'N000080' THEN
			'宁夏农垦'
			WHEN 'N000081' THEN
			'宁夏上陵集团'
			WHEN 'N000082' THEN
			'农工商房产'
			WHEN 'N000083' THEN
			'新疆六师国资'
			WHEN 'N000084' THEN
			'null'
			WHEN 'N000085' THEN
			'伊泰煤炭'
			WHEN 'N000086' THEN
			'null'
			WHEN 'N000087' THEN
			'南京新港开发'
			WHEN 'N000088' THEN
			'内蒙古水务投资'
			WHEN 'N000089' THEN
			'兴川国资'
			WHEN 'N000090' THEN
			'南昌投资'
			WHEN 'N000091' THEN
			'东部新城开发投资'
			WHEN 'N000092' THEN
			'鄞州银行'
			WHEN 'N000093' THEN
			'安居集团'
			WHEN 'N000094' THEN
			'鄞城集团'
			WHEN 'N000095' THEN
			'伊东集团'
			WHEN 'N000096' THEN
			'阜丰生物'
			WHEN 'N000097' THEN
			'满世集团'
			WHEN 'N000098' THEN
			'绿原国资'
			WHEN 'N000099' THEN
			'高精传动'
			WHEN 'N000100' THEN
			'江山股份'
			WHEN 'N000101' THEN
			'南京铁投'
			WHEN 'N000102' THEN
			'南通水务'
			WHEN 'N000103' THEN
			'南昌水投'
			WHEN 'N000104' THEN
			'南京银行扬州分行'
			WHEN 'N000105' THEN
			'南昌县城建投'
			WHEN 'N000106' THEN
			'南京港'
			WHEN 'N000107' THEN
			'宁波能源'
			WHEN 'N000108' THEN
			'南宁糖业'
			WHEN 'N000109' THEN
			'拜克生物'
			WHEN 'N000110' THEN
			'南钢股份'
			WHEN 'N000111' THEN
			'远兴能源'
			WHEN 'N000112' THEN
			'宁波港'
			WHEN 'N000113' THEN
			'舟山港集团'
			WHEN 'N000114' THEN
			'瀚蓝环境'
			WHEN 'N000115' THEN
			'null'
			WHEN 'N000116' THEN
			'鄂尔多斯'
			WHEN 'N000117' THEN
			'杉杉股份'
			WHEN 'P000001' THEN
			'攀钢'
			WHEN 'P000002' THEN
			'攀国投'
			WHEN 'P000003' THEN
			'盘锦建投'
			WHEN 'P000004' THEN
			'沛县国资'
			WHEN 'P000005' THEN
			'鹏元评级'
			WHEN 'P000006' THEN
			'江苏润城'
			WHEN 'P000007' THEN
			'平安银行'
			WHEN 'P000008' THEN
			'攀钢钒钛'
			WHEN 'P000009' THEN
			'平安证券'
			WHEN 'P000010' THEN
			'平顶山煤业'
			WHEN 'P000011' THEN
			'平发集团'
			WHEN 'P000012' THEN
			'平湖城投'
			WHEN 'P000013' THEN
			'萍乡城投'
			WHEN 'P000014' THEN
			'莆田国资'
			WHEN 'P000015' THEN
			'濮阳投资集团'
			WHEN 'P000016' THEN
			'普洱国资'
			WHEN 'P000017' THEN
			'普兰店建投'
			WHEN 'P000018' THEN
			'平安银行泉州分行'
			WHEN 'P000019' THEN
			'盘锦高新开发建设'
			WHEN 'P000020' THEN
			'蓬莱阁旅游'
			WHEN 'P000021' THEN
			'平潭城投'
			WHEN 'P000022' THEN
			'攀枝花商行'
			WHEN 'P000023' THEN
			'平安银行厦门分行'
			WHEN 'P000024' THEN
			'平煤股份'
			WHEN 'P000025' THEN
			'濮耐股份'
			WHEN 'P000026' THEN
			'庞大集团'
			WHEN 'Q000001' THEN
			'七城投'
			WHEN 'Q000002' THEN
			'齐鲁银行'
			WHEN 'Q000003' THEN
			'中泰证券'
			WHEN 'Q000004' THEN
			'奇瑞汽车'
			WHEN 'Q000005' THEN
			'启东国资投控'
			WHEN 'Q000006' THEN
			'迁安兴源投资'
			WHEN 'Q000007' THEN
			'钱江水利'
			WHEN 'Q000008' THEN
			'南州开发'
			WHEN 'Q000009' THEN
			'凯宏城投'
			WHEN 'Q000010' THEN
			'宏升资本'
			WHEN 'Q000011' THEN
			'钦州投资集团'
			WHEN 'Q000012' THEN
			'秦皇岛城发集团'
			WHEN 'Q000013' THEN
			'秦皇岛国资营'
			WHEN 'Q000014' THEN
			'秦山第三核电'
			WHEN 'Q000015' THEN
			'沁和能源'
			WHEN 'Q000016' THEN
			'青岛渤海'
			WHEN 'Q000017' THEN
			'青岛城投'
			WHEN 'Q000018' THEN
			'国信发展集团'
			WHEN 'Q000019' THEN
			'国信实业'
			WHEN 'Q000020' THEN
			'华通集团'
			WHEN 'Q000021' THEN
			'即发集团'
			WHEN 'Q000022' THEN
			'青岛啤酒集团'
			WHEN 'Q000023' THEN
			'青岛前湾集装箱码头'
			WHEN 'Q000024' THEN
			'青岛能源燃气'
			WHEN 'Q000025' THEN
			'青海交投'
			WHEN 'Q000026' THEN
			'青海庆华集团'
			WHEN 'Q000027' THEN
			'青海国投'
			WHEN 'Q000028' THEN
			'青海投资'
			WHEN 'Q000029' THEN
			'青特集团'
			WHEN 'Q000030' THEN
			'青州宏源公有'
			WHEN 'Q000031' THEN
			'清华控股'
			WHEN 'Q000032' THEN
			'曲靖公路建设'
			WHEN 'Q000033' THEN
			'曲靖开投'
			WHEN 'Q000034' THEN
			'泉州路桥建设开发'
			WHEN 'Q000035' THEN
			'泉港石化建设发展'
			WHEN 'Q000036' THEN
			'泉州台商开发建设'
			WHEN 'Q000037' THEN
			'泉州城建国有资产投资'
			WHEN 'Q000038' THEN
			'青岛德锐'
			WHEN 'Q000039' THEN
			'青岛银行'
			WHEN 'Q000040' THEN
			'青岛东亿'
			WHEN 'Q000041' THEN
			'胶州城投'
			WHEN 'Q000042' THEN
			'泉州银行'
			WHEN 'Q000043' THEN
			'齐商银行'
			WHEN 'Q000044' THEN
			'华虹电子'
			WHEN 'Q000045' THEN
			'海润自来水'
			WHEN 'Q000046' THEN
			'泉州国投'
			WHEN 'Q000047' THEN
			'秦川'
			WHEN 'Q000048' THEN
			'青岛中程'
			WHEN 'Q000049' THEN
			'青岛金王'
			WHEN 'Q000050' THEN
			'盐湖工业'
			WHEN 'Q000051' THEN
			'宝泰隆'
			WHEN 'Q000052' THEN
			'金瑞矿业'
			WHEN 'R000001' THEN
			'日信证券'
			WHEN 'R000002' THEN
			'日照港集团'
			WHEN 'R000003' THEN
			'日照银行'
			WHEN 'R000004' THEN
			'梦网科技'
			WHEN 'R000005' THEN
			'东泰公司'
			WHEN 'R000006' THEN
			'如皋交通产业集团'
			WHEN 'R000007' THEN
			'瑞安国投集团'
			WHEN 'R000008' THEN
			'瑞穗银行'
			WHEN 'R000009' THEN
			'瑞泰科技'
			WHEN 'R000010' THEN
			'瑞信方正证券'
			WHEN 'R000011' THEN
			'瑞银证券'
			WHEN 'R000012' THEN
			'null'
			WHEN 'R000013' THEN
			'润华集团' ELSE short_name
	END
	);

-- sql6
UPDATE qb_news_public_opinion
SET short_name = (
	CASE
			issuer_code
			WHEN 'R000014' THEN
			'荣成经济开发投资'
			WHEN 'R000015' THEN
			'汝城县水电'
			WHEN 'R000016' THEN
			'日照经济开发'
			WHEN 'R000017' THEN
			'人福医药'
			WHEN 'R000018' THEN
			'软控股份'
			WHEN 'R000019' THEN
			'日照港'
			WHEN 'S000001' THEN
			'三胞集团'
			WHEN 'S000002' THEN
			'三花控股'
			WHEN 'S000003' THEN
			'三环集团'
			WHEN 'S000004' THEN
			'三角轮胎'
			WHEN 'S000005' THEN
			'中国三菱商事'
			WHEN 'S000006' THEN
			'三门峡财经'
			WHEN 'S000007' THEN
			'三门国投'
			WHEN 'S000008' THEN
			'三明投资'
			WHEN 'S000009' THEN
			'凤凰机场'
			WHEN 'S000010' THEN
			'三一集团'
			WHEN 'S000011' THEN
			'三一重工'
			WHEN 'S000012' THEN
			'启迪环境'
			WHEN 'S000013' THEN
			'安德利'
			WHEN 'S000014' THEN
			'渤海汽车'
			WHEN 'S000015' THEN
			'晨鸣纸业'
			WHEN 'S000016' THEN
			'大众报业集团'
			WHEN 'S000017' THEN
			'国网山东'
			WHEN 'S000018' THEN
			'东方海洋'
			WHEN 'S000019' THEN
			'东明石化'
			WHEN 'S000020' THEN
			'山东丰源'
			WHEN 'S000021' THEN
			'孚日集团'
			WHEN 'S000022' THEN
			'山钢集团'
			WHEN 'S000023' THEN
			'山东高速'
			WHEN 'S000024' THEN
			'山东高速集团'
			WHEN 'S000025' THEN
			'海化集团'
			WHEN 'S000026' THEN
			'海力化工'
			WHEN 'S000027' THEN
			'山航'
			WHEN 'S000028' THEN
			'好当家'
			WHEN 'S000029' THEN
			'宏桥新材'
			WHEN 'S000030' THEN
			'山东黄金集团'
			WHEN 'S000031' THEN
			'金晶科技'
			WHEN 'S000032' THEN
			'金正大'
			WHEN 'S000033' THEN
			'垦利石化'
			WHEN 'S000034' THEN
			'null'
			WHEN 'S000035' THEN
			'山东临工'
			WHEN 'S000036' THEN
			'龙力生物'
			WHEN 'S000037' THEN
			'鲁泰控股'
			WHEN 'S000038' THEN
			'鲁阳节能'
			WHEN 'S000039' THEN
			'山东能源'
			WHEN 'S000040' THEN
			'龙岗投资'
			WHEN 'S000041' THEN
			'泉兴集团'
			WHEN 'S000042' THEN
			'三星集团'
			WHEN 'S000043' THEN
			'山水集团'
			WHEN 'S000044' THEN
			'胜通集团'
			WHEN 'S000045' THEN
			'山东国投'
			WHEN 'S000046' THEN
			'鲁信集团'
			WHEN 'S000047' THEN
			'鲁商集团'
			WHEN 'S000048' THEN
			'微矿集团'
			WHEN 'S000049' THEN
			'山东再担'
			WHEN 'S000050' THEN
			'太阳纸业'
			WHEN 'S000051' THEN
			'泰丰控股'
			WHEN 'S000052' THEN
			'天辰化工'
			WHEN 'S000053' THEN
			'魏桥创业'
			WHEN 'S000054' THEN
			'现代威亚'
			WHEN 'S000055' THEN
			'六和集团'
			WHEN 'S000056' THEN
			'玉皇化工'
			WHEN 'S000057' THEN
			'招金集团'
			WHEN 'S000058' THEN
			'山推股份'
			WHEN 'S000059' THEN
			'山西国际电力集团'
			WHEN 'S000060' THEN
			'国际能源'
			WHEN 'S000061' THEN
			'山西焦煤'
			WHEN 'S000062' THEN
			'晋能控股装备'
			WHEN 'S000063' THEN
			'兰花集团'
			WHEN 'S000064' THEN
			'山西路桥集团'
			WHEN 'S000065' THEN
			'潞安集团'
			WHEN 'S000066' THEN
			'山西铝业'
			WHEN 'S000067' THEN
			'山煤集团'
			WHEN 'S000068' THEN
			'山西煤销集团'
			WHEN 'S000069' THEN
			'华远国际'
			WHEN 'S000070' THEN
			'山西汽车运输集团'
			WHEN 'S000071' THEN
			'山西交通建设'
			WHEN 'S000072' THEN
			'太钢不锈'
			WHEN 'S000073' THEN
			'阳光焦化'
			WHEN 'S000074' THEN
			'运城制版集团'
			WHEN 'S000075' THEN
			'杉杉集团'
			WHEN 'S000076' THEN
			'电子集团'
			WHEN 'S000077' THEN
			'东岭集团'
			WHEN 'S000078' THEN
			'华商传媒'
			WHEN 'S000079' THEN
			'陕煤化集团'
			WHEN 'S000080' THEN
			'陕西汽车'
			WHEN 'S000081' THEN
			'陕西高速集团'
			WHEN 'S000082' THEN
			'陕西交通集团'
			WHEN 'S000083' THEN
			'华秦投资'
			WHEN 'S000084' THEN
			'延长石油集团'
			WHEN 'S000085' THEN
			'陕西有色集团'
			WHEN 'S000086' THEN
			'汕头港务集团'
			WHEN 'S000087' THEN
			'汕头城市建设'
			WHEN 'S000088' THEN
			'上海城建'
			WHEN 'S000089' THEN
			'上海城开'
			WHEN 'S000090' THEN
			'上海地产集团'
			WHEN 'S000091' THEN
			'上海电力'
			WHEN 'S000092' THEN
			'上海电气'
			WHEN 'S000093' THEN
			'东方明珠'
			WHEN 'S000094' THEN
			'东浩兰生'
			WHEN 'S000095' THEN
			'复星高科'
			WHEN 'S000096' THEN
			'复星医药'
			WHEN 'S000097' THEN
			'上港集团'
			WHEN 'S000098' THEN
			'上海机场'
			WHEN 'S000099' THEN
			'上海国际集团'
			WHEN 'S000100' THEN
			'国盛集团'
			WHEN 'S000101' THEN
			'华虹集团'
			WHEN 'S000102' THEN
			'华润大东'
			WHEN 'S000103' THEN
			'上海华谊'
			WHEN 'S000104' THEN
			'上海化学工业区发展'
			WHEN 'S000105' THEN
			'上海环境'
			WHEN 'S000106' THEN
			'嘉定开发集团'
			WHEN 'S000107' THEN
			'上海建工'
			WHEN 'S000108' THEN
			'上海金桥集团'
			WHEN 'S000109' THEN
			'上海久事'
			WHEN 'S000110' THEN
			'均瑶集团'
			WHEN 'S000111' THEN
			'临港集团'
			WHEN 'S000112' THEN
			'null'
			WHEN 'S000113' THEN
			'梅钢股份'
			WHEN 'S000114' THEN
			'美邦服饰'
			WHEN 'S000115' THEN
			'闵行城投'
			WHEN 'S000116' THEN
			'南发集团'
			WHEN 'S000117' THEN
			'上海农商行'
			WHEN 'S000118' THEN
			'浦发集团'
			WHEN 'S000119' THEN
			'浦发银行'
			WHEN 'S000120' THEN
			'浦东建设'
			WHEN 'S000121' THEN
			'强生控股'
			WHEN 'S000122' THEN
			'上海上实集团'
			WHEN 'S000123' THEN
			'申华控股'
			WHEN 'S000124' THEN
			'申通资产'
			WHEN 'S000125' THEN
			'世博土地'
			WHEN 'S000126' THEN
			'上海城投'
			WHEN 'S000127' THEN
			'嘉定国资'
			WHEN 'S000128' THEN
			'嘉定自来水'
			WHEN 'S000129' THEN
			'申江集团'
			WHEN 'S000130' THEN
			'上海信投'
			WHEN 'S000131' THEN
			'上海再担保'
			WHEN 'S000132' THEN
			'上海水务资产'
			WHEN 'S000133' THEN
			'松江城投'
			WHEN 'S000134' THEN
			'同盛投资'
			WHEN 'S000135' THEN
			'外高桥资产'
			WHEN 'S000136' THEN
			'外滩投资'
			WHEN 'S000137' THEN
			'新长宁集团'
			WHEN 'S000138' THEN
			'新华传媒'
			WHEN 'S000139' THEN
			'新世纪评级'
			WHEN 'S000140' THEN
			'徐家汇商城'
			WHEN 'S000141' THEN
			'杨浦城投'
			WHEN 'S000142' THEN
			'上海仪电'
			WHEN 'S000143' THEN
			'上海银行'
			WHEN 'S000144' THEN
			'豫园股份'
			WHEN 'S000145' THEN
			'远东资信'
			WHEN 'S000146' THEN
			'上海远洋渔业'
			WHEN 'S000147' THEN
			'云峰集团'
			WHEN 'S000148' THEN
			'张江集团'
			WHEN 'S000149' THEN
			'振华重工'
			WHEN 'S000150' THEN
			'上海证券'
			WHEN 'S000151' THEN
			'紫江企业'
			WHEN 'S000152' THEN
			'通用金融'
			WHEN 'S000153' THEN
			'上饶城投'
			WHEN 'S000154' THEN
			'上虞交投'
			WHEN 'S000155' THEN
			'上虞水处理'
			WHEN 'S000156' THEN
			'金叶发展'
			WHEN 'S000157' THEN
			'邵阳城建'
			WHEN 'S000158' THEN
			'袍江工投'
			WHEN 'S000159' THEN
			'镜湖开发集团'
			WHEN 'S000160' THEN
			'绍兴城投'
			WHEN 'S000161' THEN
			'绍兴交投'
			WHEN 'S000162' THEN
			'绍兴公用事业'
			WHEN 'S000163' THEN
			'三鼎控股集团'
			WHEN 'S000164' THEN
			'柯桥开发'
			WHEN 'S000165' THEN
			'申能集团'
			WHEN 'S000166' THEN
			'申能股份'
			WHEN 'S000167' THEN
			'申银万国'
			WHEN 'S000168' THEN
			'深南电路'
			WHEN 'S000169' THEN
			'深基地'
			WHEN 'S000170' THEN
			'null'
			WHEN 'S000171' THEN
			'深高速'
			WHEN 'S000172' THEN
			'广田集团'
			WHEN 'S000173' THEN
			'华强集团'
			WHEN 'S000174' THEN
			'深圳茂业商厦'
			WHEN 'S000175' THEN
			'深圳能源'
			WHEN 'S000176' THEN
			'欧菲光'
			WHEN 'S000177' THEN
			'深圳地铁'
			WHEN 'S000178' THEN
			'东阳光'
			WHEN 'S000179' THEN
			'深圳机场集团'
			WHEN 'S000180' THEN
			'深圳机场'
			WHEN 'S000181' THEN
			'深圳立业'
			WHEN 'S000182' THEN
			'农产品'
			WHEN 'S000183' THEN
			'深圳燃气'
			WHEN 'S000184' THEN
			'神州通集团'
			WHEN 'S000185' THEN
			'深圳市政'
			WHEN 'S000186' THEN
			'深圳水务集团'
			WHEN 'S000187' THEN
			'特发集团'
			WHEN 'S000188' THEN
			'深圳投控'
			WHEN 'S000189' THEN
			'沃尔核材'
			WHEN 'S000190' THEN
			'盐田港'
			WHEN 'S000191' THEN
			'怡亚通'
			WHEN 'S000192' THEN
			'null'
			WHEN 'S000193' THEN
			'中金岭南'
			WHEN 'S000194' THEN
			'深圳担保集团'
			WHEN 'S000195' THEN
			'中兴新'
			WHEN 'S000196' THEN
			'国家能源集团'
			WHEN 'S000197' THEN
			'国能宁夏煤业'
			WHEN 'S000198' THEN
			'盛京能源'
			WHEN 'S000199' THEN
			'沈阳化工'
			WHEN 'S000200' THEN
			'惠天热电'
			WHEN 'S000201' THEN
			'沈阳机床集团'
			WHEN 'S000202' THEN
			'null'
			WHEN 'S000203' THEN
			'沈煤集团'
			WHEN 'S000204' THEN
			'沈阳农业高新区国资'
			WHEN 'S000205' THEN
			'沈阳市和平区国资'
			WHEN 'S000206' THEN
			'升华集团'
			WHEN 'S000207' THEN
			'盛京银行'
			WHEN 'S000208' THEN
			'嵊州投资控股'
			WHEN 'S000209' THEN
			'十堰国投集团'
			WHEN 'S000210' THEN
			'石河子国资'
			WHEN 'S000211' THEN
			'常山北明'
			WHEN 'S000212' THEN
			'石家庄城投'
			WHEN 'S000213' THEN
			'石狮国投'
			WHEN 'S000214' THEN
			'石药集团'
			WHEN 'S000215' THEN
			'世纪证券'
			WHEN 'S000216' THEN
			'首创证券'
			WHEN 'S000217' THEN
			'首都机场集团'
			WHEN 'S000218' THEN
			'晨鸣控股'
			WHEN 'S000219' THEN
			'寿光金财'
			WHEN 'S000220' THEN
			'沭阳金源'
			WHEN 'S000221' THEN
			'空港兴城'
			WHEN 'S000222' THEN
			'大地公司'
			WHEN 'S000223' THEN
			'爱众集团'
			WHEN 'S000224' THEN
			'长虹集团'
			WHEN 'S000225' THEN
			'四川成渝'
			WHEN 'S000226' THEN
			'峨胜水泥'
			WHEN 'S000227' THEN
			'四川发展'
			WHEN 'S000228' THEN
			'四川高速'
			WHEN 'S000229' THEN
			'广安爱众'
			WHEN 'S000230' THEN
			'正源股份'
			WHEN 'S000231' THEN
			'四川航空'
			WHEN 'S000232' THEN
			'恒鼎'
			WHEN 'S000233' THEN
			'华西集团'
			WHEN 'S000234' THEN
			'化工控股'
			WHEN 'S000235' THEN
			'九洲'
			WHEN 'S000236' THEN
			'科伦药业'
			WHEN 'S000237' THEN
			'龙蟒集团'
			WHEN 'S000238' THEN
			'尚纬股份'
			WHEN 'S000239' THEN
			'升达林业'
			WHEN 'S000240' THEN
			'四川港航'
			WHEN 'S000241' THEN
			'四川交投集团'
			WHEN 'S000242' THEN
			'川煤集团'
			WHEN 'S000243' THEN
			'四川能投'
			WHEN 'S000244' THEN
			'四川水电集团'
			WHEN 'S000245' THEN
			'四川铁投'
			WHEN 'S000246' THEN
			'川投集团'
			WHEN 'S000247' THEN
			'四川圣达集团'
			WHEN 'S000248' THEN
			'沱牌集团'
			WHEN 'S000249' THEN
			'四平城投'
			WHEN 'S000250' THEN
			'松原城开'
			WHEN 'S000251' THEN
			'苏州城投'
			WHEN 'S000252' THEN
			'创元投资'
			WHEN 'S000253' THEN
			'汾湖投资集团'
			WHEN 'S000254' THEN
			'苏州高新国资'
			WHEN 'S000255' THEN
			'苏高新集团'
			WHEN 'S000256' THEN
			'兆润投资'
			WHEN 'S000257' THEN
			'园区国控'
			WHEN 'S000258' THEN
			'国发融资担保'
			WHEN 'S000259' THEN
			'苏州科技城'
			WHEN 'S000260' THEN
			'null'
			WHEN 'S000261' THEN
			'苏州城建'
			WHEN 'S000262' THEN
			'苏州高速管理'
			WHEN 'S000263' THEN
			'新海宜'
			WHEN 'S000264' THEN
			'宿迁产业集团'
			WHEN 'S000265' THEN
			'宿迁经济开发'
			WHEN 'S000266' THEN
			'null'
			WHEN 'S000267' THEN
			'宿州建投'
			WHEN 'S000268' THEN
			'绥化鑫源城建投'
			WHEN 'S000269' THEN
			'随州城投资集团'
			WHEN 'S000270' THEN
			'迪荡投资'
			WHEN 'S000271' THEN
			'滨州印染'
			WHEN 'S000272' THEN
			'上海金山城建'
			WHEN 'S000273' THEN
			'石家庄中小企业'
			WHEN 'S000274' THEN
			'新查庄矿业'
			WHEN 'S000275' THEN
			'鲁中能源集团'
			WHEN 'S000276' THEN
			'首钢集团'
			WHEN 'S000277' THEN
			'null'
			WHEN 'S000278' THEN
			'深圳市政府'
			WHEN 'S000279' THEN
			'上海市政府'
			WHEN 'S000280' THEN
			'中小企业'
			WHEN 'S000281' THEN
			'中小企业'
			WHEN 'S000282' THEN
			'中小企业'
			WHEN 'S000283' THEN
			'中小企业'
			WHEN 'S000284' THEN
			'中小企业'
			WHEN 'S000285' THEN
			'中小企业'
			WHEN 'S000286' THEN
			'中小企业'
			WHEN 'S000287' THEN
			'中小企业'
			WHEN 'S000288' THEN
			'中小企业'
			WHEN 'S000289' THEN
			'中小企业'
			WHEN 'S000290' THEN
			'中小企业'
			WHEN 'S000291' THEN
			'中小企业'
			WHEN 'S000292' THEN
			'中小企业'
			WHEN 'S000293' THEN
			'中小企业'
			WHEN 'S000294' THEN
			'云南兆隆'
			WHEN 'S000295' THEN
			'绍兴城建风险准备金'
			WHEN 'S000296' THEN
			'null'
			WHEN 'S000297' THEN
			'null'
			WHEN 'S000298' THEN
			'世纪阳光纸业'
			WHEN 'S000299' THEN
			'中小企业'
			WHEN 'S000300' THEN
			'中小企业'
			WHEN 'S000301' THEN
			'隆基机械'
			WHEN 'S000302' THEN
			'石长铁路'
			WHEN 'S000303' THEN
			'沁新集团'
			WHEN 'S000304' THEN
			'史丹利'
			WHEN 'S000305' THEN
			'商丘发投'
			WHEN 'S000306' THEN
			'中小企业'
			WHEN 'S000307' THEN
			'王晁煤电集团'
			WHEN 'S000308' THEN
			'中电国际'
			WHEN 'S000309' THEN
			'绍兴城改建投'
			WHEN 'S000310' THEN
			'中小企业'
			WHEN 'S000311' THEN
			'null'
			WHEN 'S000312' THEN
			'苏州高新担保'
			WHEN 'S000313' THEN
			'奉贤新城'
			WHEN 'S000314' THEN
			'铁汉生态'
			WHEN 'S000315' THEN
			'齐峰新材'
			WHEN 'S000316' THEN
			'三明城投集团'
			WHEN 'S000317' THEN
			'路桥集团'
			WHEN 'S000318' THEN
			'绍兴中城建投'
			WHEN 'S000319' THEN
			'陕西海升'
			WHEN 'S000320' THEN
			'百联股份'
			WHEN 'S000321' THEN
			'汾酒集团'
			WHEN 'S000322' THEN
			'深业基建'
			WHEN 'S000323' THEN
			'深业集团'
			WHEN 'S000324' THEN
			'三门峡投资'
			WHEN 'S000325' THEN
			'深圳广前电力'
			WHEN 'S000326' THEN
			'重型汽车'
			WHEN 'S000327' THEN
			'申通地铁集团'
			WHEN 'S000328' THEN
			'神东天隆集团'
			WHEN 'S000329' THEN
			'上海新华集团'
			WHEN 'S000330' THEN
			'海特高新'
			WHEN 'S000331' THEN
			'陕天然气'
			WHEN 'S000332' THEN
			'山东魏桥铝电'
			WHEN 'S000333' THEN
			'特区建发'
			WHEN 'S000334' THEN
			'深圳航空'
			WHEN 'S000335' THEN
			'山东矿机'
			WHEN 'S000336' THEN
			'隧道股份'
			WHEN 'S000337' THEN
			'时代航运'
			WHEN 'S000338' THEN
			'山西旅游投资'
			WHEN 'S000339' THEN
			'三江化工'
			WHEN 'S000340' THEN
			'紫江集团'
			WHEN 'S000341' THEN
			'苏泊尔集团'
			WHEN 'S000342' THEN
			'中小企业'
			WHEN 'S000343' THEN
			'中小企业'
			WHEN 'S000344' THEN
			'山煤国际'
			WHEN 'S000345' THEN
			'金外滩集团'
			WHEN 'S000346' THEN
			'宝钢包装'
			WHEN 'S000347' THEN
			'遂宁发展集团'
			WHEN 'S000348' THEN
			'王曲发电'
			WHEN 'S000349' THEN
			'海融城建'
			WHEN 'S000350' THEN
			'四川航空集团'
			WHEN 'S000351' THEN
			'石家庄地产集团'
			WHEN 'S000352' THEN
			'飞乐音响'
			WHEN 'S000353' THEN
			'大宁资产'
			WHEN 'S000354' THEN
			'石嘴山银行'
			WHEN 'S000355' THEN
			'华新燃气集团'
			WHEN 'S000356' THEN
			'国际资管'
			WHEN 'S000357' THEN
			'石家庄交投'
			WHEN 'S000358' THEN
			'沈阳焦煤'
			WHEN 'S000359' THEN
			'招商港口'
			WHEN 'S000360' THEN
			'上海广电'
			WHEN 'S000361' THEN
			'陕建有限'
			WHEN 'S000362' THEN
			'苏家屯区城建'
			WHEN 'S000363' THEN
			'浦发银行温州分行'
			WHEN 'S000364' THEN
			'世纪出版'
			WHEN 'S000365' THEN
			'浦发银行郑州分行'
			WHEN 'S000366' THEN
			'浦发银行长沙分行'
			WHEN 'S000367' THEN
			'秦川机床'
			WHEN 'S000368' THEN
			'芭田股份'
			WHEN 'S000369' THEN
			'格林美'
			WHEN 'S000370' THEN
			'苏宁易购'
			WHEN 'S000371' THEN
			'新希望'
			WHEN 'S000372' THEN
			'三维通信'
			WHEN 'S000373' THEN
			'上海莱士'
			WHEN 'S000374' THEN
			'科陆电子'
			WHEN 'S000375' THEN
			'烯碳新材'
			WHEN 'S000376' THEN
			'恒邦股份'
			WHEN 'S000377' THEN
			'金螳螂'
			WHEN 'S000378' THEN
			'航天发展'
			WHEN 'S000379' THEN
			'山西焦煤'
			WHEN 'S000380' THEN
			'和邦生物'
			WHEN 'S000381' THEN
			'苏州沙家浜旅游发展'
			WHEN 'S000382' THEN
			'首创置业'
			WHEN 'S000383' THEN
			'大众公用'
			WHEN 'S000384' THEN
			'常山集团'
			WHEN 'S000385' THEN
			'null'
			WHEN 'S000386' THEN
			'null'
			WHEN 'S000387' THEN
			'城投控股'
			WHEN 'S000388' THEN
			'万业企业'
			WHEN 'S000389' THEN
			'null'
			WHEN 'S000390' THEN
			'上海电气'
			WHEN 'S000391' THEN
			'苏州高新'
			WHEN 'S000392' THEN
			'张江高科'
			WHEN 'S000393' THEN
			'申通地铁'
			WHEN 'S000394' THEN
			'海立股份'
			WHEN 'S000395' THEN
			'新黄浦'
			WHEN 'S000396' THEN
			'紫竹高新集团'
			WHEN 'S000397' THEN
			'null'
			WHEN 'S000398' THEN
			'兰花科创'
			WHEN 'S000399' THEN
			'双良节能'
			WHEN 'S000400' THEN
			'交运股份'
			WHEN 'S000401' THEN
			'上海交运集团'
			WHEN 'S000402' THEN
			'赛轮轮胎'
			WHEN 'S000403' THEN
			'上海集优'
			WHEN 'S000404' THEN
			'山东墨龙'
			WHEN 'T000001' THEN
			'台州城建'
			WHEN 'T000002' THEN
			'台州椒江国资'
			WHEN 'T000003' THEN
			'路桥公投集团'
			WHEN 'T000004' THEN
			'台州银行'
			WHEN 'T000005' THEN
			'协鑫太电'
			WHEN 'T000006' THEN
			'恒通投资'
			WHEN 'T000007' THEN
			'太仓水处理'
			WHEN 'T000008' THEN
			'太仓资产经营'
			WHEN 'T000009' THEN
			'太平洋证券'
			WHEN 'T000010' THEN
			'太钢集团'
			WHEN 'T000011' THEN
			'太原煤气化'
			WHEN 'T000012' THEN
			'太原高速'
			WHEN 'T000013' THEN
			'太原城投'
			WHEN 'T000014' THEN
			'太原重工'
			WHEN 'T000015' THEN
			'太重集团'
			WHEN 'T000016' THEN
			'泰山投资'
			WHEN 'T000017' THEN
			'泰格林纸'
			WHEN 'T000018' THEN
			'泰豪集团'
			WHEN 'T000019' THEN
			'泰山玻纤'
			WHEN 'T000020' THEN
			'泰兴中兴资产'
			WHEN 'T000021' THEN
			'华信公司'
			WHEN 'T000022' THEN
			'泰州口岸船舶'
			WHEN 'T000023' THEN
			'三福船舶'
			WHEN 'T000024' THEN
			'泰州城投'
			WHEN 'T000025' THEN
			'海发集团'
			WHEN 'T000026' THEN
			'泰州交通产业集团'
			WHEN 'T000027' THEN
			'泰州鑫泰集团'
			WHEN 'T000028' THEN
			'曹妃甸实业'
			WHEN 'T000029' THEN
			'唐港实业'
			WHEN 'T000030' THEN
			'国丰钢铁'
			WHEN 'T000031' THEN
			'冀东水泥'
			WHEN 'T000032' THEN
			'冀东物贸集团'
			WHEN 'T000033' THEN
			'唐山文旅集团'
			WHEN 'T000034' THEN
			'特变电工'
			WHEN 'T000035' THEN
			'腾达建设'
			WHEN 'T000036' THEN
			'滕州城国有资产经营'
			WHEN 'T000037' THEN
			'天风证券'
			WHEN 'T000038' THEN
			'天脊集团'
			WHEN 'T000039' THEN
			'天保控股'
			WHEN 'T000040' THEN
			'null'
			WHEN 'T000041' THEN
			'天津保税投资'
			WHEN 'T000042' THEN
			'滨海投资'
			WHEN 'T000043' THEN
			'滨海建投集团'
			WHEN 'T000044' THEN
			'天津城投集团'
			WHEN 'T000045' THEN
			'创业环保'
			WHEN 'T000046' THEN
			'大沽化工'
			WHEN 'T000047' THEN
			'东方财信'
			WHEN 'T000048' THEN
			'天津钢管集团'
			WHEN 'T000049' THEN
			'天津港集团'
			WHEN 'T000050' THEN
			'天津高速公路集团'
			WHEN 'T000051' THEN
			'海泰控股'
			WHEN 'T000052' THEN
			'海泰投资担保'
			WHEN 'T000053' THEN
			'天津航空'
			WHEN 'T000054' THEN
			'天津津南城建设投资'
			WHEN 'T000055' THEN
			'天津国资公司'
			WHEN 'T000056' THEN
			'天津临港建设开发'
			WHEN 'T000057' THEN
			'天汽模'
			WHEN 'T000058' THEN
			'赛瑞机器'
			WHEN 'T000059' THEN
			'天津生态城投'
			WHEN 'T000060' THEN
			'天津地铁'
			WHEN 'T000061' THEN
			'汉滨投资'
			WHEN 'T000062' THEN
			'天津建工集团'
			WHEN 'T000063' THEN
			'天津建材集团'
			WHEN 'T000064' THEN
			'天津津能投资'
			WHEN 'T000065' THEN
			'武清国投'
			WHEN 'T000066' THEN
			'天津医药'
			WHEN 'T000067' THEN
			'市政建设集团'
			WHEN 'T000068' THEN
			'天津市政投资'
			WHEN 'T000069' THEN
			'天津供水'
			WHEN 'T000070' THEN
			'泰达控股'
			WHEN 'T000071' THEN
			'天士力集团'
			WHEN 'T000072' THEN
			'天津武清经开'
			WHEN 'T000073' THEN
			'天津药业'
			WHEN 'T000074' THEN
			'天津银行'
			WHEN 'T000075' THEN
			'中环'
			WHEN 'T000076' THEN
			'天能股份'
			WHEN 'T000077' THEN
			'天瑞水泥'
			WHEN 'T000078' THEN
			'天一水电开发'
			WHEN 'T000079' THEN
			'天士力'
			WHEN 'T000080' THEN
			'天音控股'
			WHEN 'T000081' THEN
			'铁煤集团'
			WHEN 'T000082' THEN
			'铁岭投资'
			WHEN 'T000083' THEN
			'铁牛集团'
			WHEN 'T000084' THEN
			'通化丰源'
			WHEN 'T000085' THEN
			'通辽城投集团'
			WHEN 'T000086' THEN
			'科尔沁'
			WHEN 'T000087' THEN
			'通裕重工'
			WHEN 'T000088' THEN
			'同方股份'
			WHEN 'T000089' THEN
			'桐庐国资'
			WHEN 'T000090' THEN
			'桐乡城投'
			WHEN 'T000091' THEN
			'铜川开发投资'
			WHEN 'T000092' THEN
			'铜化集团'
			WHEN 'T000093' THEN
			'精达股份'
			WHEN 'T000094' THEN
			'铜陵城投'
			WHEN 'T000095' THEN
			'铜陵建设投资控股'
			WHEN 'T000096' THEN
			'铜陵有色控股'
			WHEN 'T000097' THEN
			'梵净山投资'
			WHEN 'T000098' THEN
			'TCL科技'
			WHEN 'T000099' THEN
			'铁路建设基金'
			WHEN 'T000100' THEN
			'黄岩国资'
			WHEN 'T000101' THEN
			'中小企业'
			WHEN 'T000102' THEN
			'津旅集团'
			WHEN 'T000103' THEN
			'太仓城建投'
			WHEN 'T000104' THEN
			'天津港'
			WHEN 'T000105' THEN
			'渤海融资担保'
			WHEN 'T000106' THEN
			'天津太钢'
			WHEN 'T000107' THEN
			'广成投资集团'
			WHEN 'T000108' THEN
			'天津城建'
			WHEN 'T000109' THEN
			'三友化工'
			WHEN 'T000110' THEN
			'天瑞集团铸造'
			WHEN 'T000111' THEN
			'天瑞旅游'
			WHEN 'T000112' THEN
			'泰达集团'
			WHEN 'T000113' THEN
			'天津房产信托集团'
			WHEN 'T000114' THEN
			'渤海国资'
			WHEN 'T000115' THEN
			'泰达建设'
			WHEN 'T000116' THEN
			'天津物产国际能源'
			WHEN 'T000117' THEN
			'东丽城投'
			WHEN 'T000118' THEN
			'泰安商行'
			WHEN 'T000119' THEN
			'天津滨海农商行'
			WHEN 'T000120' THEN
			'蓝焰控股'
			WHEN 'T000121' THEN
			'津滨发展'
			WHEN 'T000122' THEN
			'泰达股份'
			WHEN 'T000123' THEN
			'泰豪科技'
			WHEN 'T000124' THEN
			'桐昆股份'
			WHEN 'T000125' THEN
			'通威股份'
			WHEN 'T000126' THEN
			'三友集团'
			WHEN 'T000127' THEN
			'天房集团'
			WHEN 'T000128' THEN
			'吐鲁番投资'
			WHEN 'W000001' THEN
			'瓦房店国资'
			WHEN 'W000002' THEN
			'万丰奥特'
			WHEN 'W000003' THEN
			'万华实业'
			WHEN 'W000004' THEN
			'万基'
			WHEN 'W000005' THEN
			'万联证券'
			WHEN 'W000006' THEN
			'威海广泰'
			WHEN 'W000007' THEN
			'维维集团'
			WHEN 'W000008' THEN
			'维维股份'
			WHEN 'W000009' THEN
			'潍柴动力'
			WHEN 'W000010' THEN
			'潍柴控股'
			WHEN 'W000011' THEN
			'滨城投资'
			WHEN 'W000012' THEN
			'潍坊东兴建设'
			WHEN 'W000013' THEN
			'东方国资'
			WHEN 'W000014' THEN
			'潍坊投资'
			WHEN 'W000015' THEN
			'伟星集团'
			WHEN 'W000016' THEN
			'渭南城投'
			WHEN 'W000017' THEN
			'温岭国投'
			WHEN 'W000018' THEN
			'温州港'
			WHEN 'W000019' THEN
			'温州安居房开发'
			WHEN 'W000020' THEN
			'温州银行'
			WHEN 'W000021' THEN
			'文登城资产经营'
			WHEN 'W000022' THEN
			'瓮福集团'
			WHEN 'W000023' THEN
			'卧龙电驱'
			WHEN 'W000024' THEN
			'乌海城投'
			WHEN 'W000025' THEN
			'乌兰察布投资开发'
			WHEN 'W000026' THEN
			'乌鲁木齐城投'
			WHEN 'W000027' THEN
			'乌鲁木齐国资集团'
			WHEN 'W000028' THEN
			'乌鲁木齐建投'
			WHEN 'W000029' THEN
			'无锡产业集团'
			WHEN 'W000030' THEN
			'无锡广电'
			WHEN 'W000031' THEN
			'无锡城投'
			WHEN 'W000032' THEN
			'国联集团'
			WHEN 'W000033' THEN
			'无锡建设发展'
			WHEN 'W000034' THEN
			'无锡交产集团'
			WHEN 'W000035' THEN
			'无锡政公用产业集团'
			WHEN 'W000036' THEN
			'新发集团'
			WHEN 'W000037' THEN
			'太科园投资开发'
			WHEN 'W000038' THEN
			'锡东科技'
			WHEN 'W000039' THEN
			'吴江经开'
			WHEN 'W000040' THEN
			'吴江交投集团'
			WHEN 'W000041' THEN
			'长信科技'
			WHEN 'W000042' THEN
			'芜湖经区建投'
			WHEN 'W000043' THEN
			'芜湖建投'
			WHEN 'W000044' THEN
			'新马投资'
			WHEN 'W000045' THEN
			'东泰国资'
			WHEN 'W000046' THEN
			'五凌电力'
			WHEN 'W000047' THEN
			'武钢'
			WHEN 'W000048' THEN
			'武汉港务'
			WHEN 'W000049' THEN
			'武汉高科'
			WHEN 'W000050' THEN
			'商贸集团'
			WHEN 'W000051' THEN
			'武汉金控集团'
			WHEN 'W000052' THEN
			'凯迪生态'
			WHEN 'W000053' THEN
			'武汉农商行'
			WHEN 'W000054' THEN
			'null'
			WHEN 'W000055' THEN
			'商贸控股集团'
			WHEN 'W000056' THEN
			'武汉城投'
			WHEN 'W000057' THEN
			'武水在线'
			WHEN 'W000058' THEN
			'鄂武商'
			WHEN 'W000059' THEN
			'新港建投'
			WHEN 'W000060' THEN
			'武汉融资担保'
			WHEN 'W000061' THEN
			'邮电科学研究院'
			WHEN 'W000062' THEN
			'舞阳钢铁'
			WHEN 'W000063' THEN
			'集宁城投集团'
			WHEN 'W000064' THEN
			'中小企业'
			WHEN 'W000065' THEN
			'东方国资'
			WHEN 'W000066' THEN
			'中原电子'
			WHEN 'W000067' THEN
			'现代集团'
			WHEN 'W000068' THEN
			'温州经开'
			WHEN 'W000069' THEN
			'温州交运集团'
			WHEN 'W000070' THEN
			'万向钱潮'
			WHEN 'W000071' THEN
			'乌鲁木齐高新投'
			WHEN 'W000072' THEN
			'灵山文化'
			WHEN 'W000073' THEN
			'武汉地铁'
			WHEN 'W000074' THEN
			'万正投资集团'
			WHEN 'W000075' THEN
			'锡东新城'
			WHEN 'W000076' THEN
			'武汉城建集团'
			WHEN 'W000077' THEN
			'乌鲁木齐银行'
			WHEN 'W000078' THEN
			'万达信息'
			WHEN 'W000079' THEN
			'万达集团'
			WHEN 'W000080' THEN
			'潍坊滨海投资发展'
			WHEN 'W000081' THEN
			'惠山国有投资集团'
			WHEN 'W000082' THEN
			'温州交发集团'
			WHEN 'W000083' THEN
			'温州机场'
			WHEN 'W000084' THEN
			'镜湖建投'
			WHEN 'W000085' THEN
			'温州工业集团'
			WHEN 'W000086' THEN
			'歌尔集团'
			WHEN 'W000087' THEN
			'中公教育'
			WHEN 'W000088' THEN
			'淮河能源'
			WHEN 'W000089' THEN
			'万科企业'
			WHEN 'W000090' THEN
			'海螺型材'
			WHEN 'W000091' THEN
			'武钢股份'
			WHEN 'W000092' THEN
			'null'
			WHEN 'X000001' THEN
			'西安城市建投'
			WHEN 'X000002' THEN
			'航天城投资集团'
			WHEN 'X000003' THEN
			'国际医学'
			WHEN 'X000004' THEN
			'浐灞发展集团'
			WHEN 'X000005' THEN
			'西北金属'
			WHEN 'X000006' THEN
			'西部材料'
			WHEN 'X000007' THEN
			'西部矿业集团'
			WHEN 'X000008' THEN
			'西部证券'
			WHEN 'X000009' THEN
			'西南证券'
			WHEN 'X000010' THEN
			'null'
			WHEN 'X000011' THEN
			'西宁城投公司'
			WHEN 'X000012' THEN
			'西宁特钢'
			WHEN 'X000013' THEN
			'西王集团'
			WHEN 'X000014' THEN
			'西子电梯'
			WHEN 'X000015' THEN
			'郭勒盟兴富投资'
			WHEN 'X000016' THEN
			'厦门港务集团'
			WHEN 'X000017' THEN
			'厦门国贸股份'
			WHEN 'X000018' THEN
			'厦门国贸控股'
			WHEN 'X000019' THEN
			'厦门海沧投资'
			WHEN 'X000020' THEN
			'海翼集团'
			WHEN 'X000021' THEN
			'厦门建发股份'
			WHEN 'X000022' THEN
			'建发集团'
			WHEN 'X000023' THEN
			'厦门路桥集团'
			WHEN 'X000024' THEN
			'厦门轻工'
			WHEN 'X000025' THEN
			'厦门水务'
			WHEN 'X000026' THEN
			'厦门钨业'
			WHEN 'X000027' THEN
			'厦门夏商集团'
			WHEN 'X000028' THEN
			'厦门翔业集团'
			WHEN 'X000029' THEN
			'象屿集团'
			WHEN 'X000030' THEN
			'厦门信达'
			WHEN 'X000031' THEN
			'厦门银行'
			WHEN 'X000032' THEN
			'咸宁城投'
			WHEN 'X000033' THEN
			'咸阳城投集团'
			WHEN 'X000034' THEN
			'现代投资'
			WHEN 'X000035' THEN
			'湘电集团'
			WHEN 'X000036' THEN
			'湘潭九华'
			WHEN 'X000037' THEN
			'湘潭城建'
			WHEN 'X000038' THEN
			'汉江国投'
			WHEN 'X000039' THEN
			'翔鹭石化'
			WHEN 'X000040' THEN
			'孝感城建'
			WHEN 'X000041' THEN
			'忻州资产公司'
			WHEN 'X000042' THEN
			'新奥燃气'
			WHEN 'X000043' THEN
			'新光集团'
			WHEN 'X000044' THEN
			'新华水利'
			WHEN 'X000045' THEN
			'艾比湖农工商联合'
			WHEN 'X000046' THEN
			'中油工程'
			WHEN 'X000047' THEN
			'广汇集团'
			WHEN 'X000048' THEN
			'新疆农资'
			WHEN 'X000049' THEN
			'生产建设兵团国资'
			WHEN 'X000050' THEN
			'生产建设兵团建设工程集团'
			WHEN 'X000051' THEN
			'生产建设兵团第十二师国资'
			WHEN 'X000052' THEN
			'石河子开发区建设'
			WHEN 'X000053' THEN
			'天富集团'
			WHEN 'X000054' THEN
			'天恒基集团'
			WHEN 'X000055' THEN
			'天山建材集团'
			WHEN 'X000056' THEN
			'天山股份'
			WHEN 'X000057' THEN
			'天业集团'
			WHEN 'X000058' THEN
			'新投集团'
			WHEN 'X000059' THEN
			'哈密市国资'
			WHEN 'X000060' THEN
			'新业集团'
			WHEN 'X000061' THEN
			'中泰化学'
			WHEN 'X000062' THEN
			'新时代证券'
			WHEN 'X000063' THEN
			'新希望集团'
			WHEN 'X000064' THEN
			'新乡投资'
			WHEN 'X000065' THEN
			'际华集团'
			WHEN 'X000066' THEN
			'新钢集团'
			WHEN 'X000067' THEN
			'新余城建'
			WHEN 'X000068' THEN
			'信达证券'
			WHEN 'X000069' THEN
			'信阳华信'
			WHEN 'X000070' THEN
			'兴化城建'
			WHEN 'X000071' THEN
			'兴业银行'
			WHEN 'X000072' THEN
			'兴业证券'
			WHEN 'X000073' THEN
			'星星集团'
			WHEN 'X000074' THEN
			'星展银行'
			WHEN 'X000075' THEN
			'徐工机械'
			WHEN 'X000076' THEN
			'徐州经济技术开发区国资'
			WHEN 'X000077' THEN
			'徐矿集团'
			WHEN 'X000078' THEN
			'徐州新城国资'
			WHEN 'X000079' THEN
			'新盛集团'
			WHEN 'X000080' THEN
			'许昌投资'
			WHEN 'X000081' THEN
			'许继集团'
			WHEN 'X000082' THEN
			'宣城国资'
			WHEN 'X000083' THEN
			'徐工机械'
			WHEN 'X000084' THEN
			'中小企业'
			WHEN 'X000085' THEN
			'中小企业'
			WHEN 'X000086' THEN
			'null'
			WHEN 'X000087' THEN
			'兴源集团'
			WHEN 'X000088' THEN
			'中小企业'
			WHEN 'X000089' THEN
			'null'
			WHEN 'X000090' THEN
			'湘潭高新集团'
			WHEN 'X000091' THEN
			'特变电工集团'
			WHEN 'X000092' THEN
			'新乡发展投资担保'
			WHEN 'X000093' THEN
			'西安高新控股'
			WHEN 'X000094' THEN
			'翔宇实业集团'
			WHEN 'X000095' THEN
			'曲江文化产业集团'
			WHEN 'X000096' THEN
			'杏林建设'
			WHEN 'X000097' THEN
			'祥源控股集团'
			WHEN 'X000098' THEN
			'旭阳集团'
			WHEN 'X000099' THEN
			'西宁特钢集团公司'
			WHEN 'X000100' THEN
			'大明宫集团'
			WHEN 'X000101' THEN
			'现代牧业'
			WHEN 'X000102' THEN
			'西安投资'
			WHEN 'X000103' THEN
			'友好集团'
			WHEN 'X000104' THEN
			'天富能源'
			WHEN 'X000105' THEN
			'金特股份'
			WHEN 'X000106' THEN
			'国恒投资'
			WHEN 'X000107' THEN
			'新誉集团'
			WHEN 'X000108' THEN
			'西宁开投公司'
			WHEN 'X000109' THEN
			'高投集团'
			WHEN 'X000110' THEN
			'弘昌燃气工程'
			WHEN 'X000111' THEN
			'新区发展投资'
			WHEN 'X000112' THEN
			'兴业银行江门分行'
			WHEN 'X000113' THEN
			'兴业银行晋中支行'
			WHEN 'X000114' THEN
			'邢钢'
			WHEN 'X000115' THEN
			'新华都'
			WHEN 'X000116' THEN
			'卓郎智能'
			WHEN 'X000117' THEN
			'兴业银行成都分行'
			WHEN 'X000118' THEN
			'兴业银行合肥分行'
			WHEN 'X000119' THEN
			'兴业银行太原分行'
			WHEN 'X000120' THEN
			'兴业银行武汉分行'
			WHEN 'X000121' THEN
			'希努尔'
			WHEN 'X000122' THEN
			'希努尔'
			WHEN 'X000123' THEN
			'新兴铸管'
			WHEN 'X000124' THEN
			'供销大集'
			WHEN 'X000125' THEN
			'北新路桥'
			WHEN 'X000126' THEN
			'新疆兴汇聚'
			WHEN 'X000127' THEN
			'合兴包装'
			WHEN 'X000128' THEN
			'八钢'
			WHEN 'X000129' THEN
			'新天公司'
			WHEN 'X000130' THEN
			'新疆众和'
			WHEN 'X000131' THEN
			'西部建设'
			WHEN 'X000132' THEN
			'西部矿业'
			WHEN 'X000133' THEN
			'金风科技'
			WHEN 'X000134' THEN
			'许继电气'
			WHEN 'X000135' THEN
			'新湖中宝'
			WHEN 'X000136' THEN
			'新钢集团'
			WHEN 'X000137' THEN
			'湘电股份'
			WHEN 'X000138' THEN
			'厦工股份'
			WHEN 'X000139' THEN
			'青松建化'
			WHEN 'X000140' THEN
			'西部资源'
			WHEN 'X000141' THEN
			'振湘国投'
			WHEN 'X000142' THEN
			'铜山城建'
			WHEN 'X000143' THEN
			'兴业银行乌鲁木齐分行'
			WHEN 'X000144' THEN
			'第七柳沟'
			WHEN 'Y000001' THEN
			'愉悦家纺'
			WHEN 'Y000002' THEN
			'祥鹏航空'
			WHEN 'Y000003' THEN
			'永煤集团'
			WHEN 'Y000004' THEN
			'中小企业'
			WHEN 'Y000005' THEN
			'雅安国资'
			WHEN 'Y000006' THEN
			'雅砻江公司'
			WHEN 'Y000007' THEN
			'亚邦集团'
			WHEN 'Y000008' THEN
			'亚行'
			WHEN 'Y000009' THEN
			'烟台港集团'
			WHEN 'Y000010' THEN
			'牟平国资'
			WHEN 'Y000011' THEN
			'万华化学'
			WHEN 'Y000012' THEN
			'延安城投集团'
			WHEN 'Y000013' THEN
			'盐城东方集团'
			WHEN 'Y000014' THEN
			'城南开投公司'
			WHEN 'Y000015' THEN
			'盐城城投'
			WHEN 'Y000016' THEN
			'盐城国投'
			WHEN 'Y000017' THEN
			'兖矿集团'
			WHEN 'Y000018' THEN
			'null'
			WHEN 'Y000019' THEN
			'扬中城投'
			WHEN 'Y000020' THEN
			'扬州化工投发'
			WHEN 'Y000021' THEN
			'汇银科技'
			WHEN 'Y000022' THEN
			'扬州经开'
			WHEN 'Y000023' THEN
			'扬州城建国资'
			WHEN 'Y000024' THEN
			'扬子江投发集团'
			WHEN 'Y000025' THEN
			'阳谷祥光'
			WHEN 'Y000026' THEN
			'阳光凯迪'
			WHEN 'Y000027' THEN
			'华阳新材料'
			WHEN 'Y000028' THEN
			'杨凌农业'
			WHEN 'Y000029' THEN
			'伊城投开'
			WHEN 'Y000030' THEN
			'宏泰建投'
			WHEN 'Y000031' THEN
			'可克达拉国资投'
			WHEN 'Y000032' THEN
			'伊犁国资投'
			WHEN 'Y000033' THEN
			'上海衣念'
			WHEN 'Y000034' THEN
			'仪征城投'
			WHEN 'Y000035' THEN
			'宜宾发展控股'
			WHEN 'Y000036' THEN
			'天原股份'
			WHEN 'Y000037' THEN
			'宜昌财政开投'
			WHEN 'Y000038' THEN
			'宜昌城投公司'
			WHEN 'Y000039' THEN
			'宜春城投公司'
			WHEN 'Y000040' THEN
			'宜兴城投公司'
			WHEN 'Y000041' THEN
			'义煤集团'
			WHEN 'Y000042' THEN
			'益阳城投'
			WHEN 'Y000043' THEN
			'银川城投'
			WHEN 'Y000044' THEN
			'英大证券'
			WHEN 'Y000045' THEN
			'英利中国'
			WHEN 'Y000046' THEN
			'鹰潭控股'
			WHEN 'Y000047' THEN
			'营口港务'
			WHEN 'Y000048' THEN
			'营口城投'
			WHEN 'Y000049' THEN
			'营口沿海开发集团'
			WHEN 'Y000050' THEN
			'营口银行'
			WHEN 'Y000051' THEN
			'永煤集团'
			WHEN 'Y000052' THEN
			'永辉超市'
			WHEN 'Y000053' THEN
			'永州城投'
			WHEN 'Y000054' THEN
			'宁波舜农集团'
			WHEN 'Y000055' THEN
			'榆林城投集团'
			WHEN 'Y000056' THEN
			'玉环交投'
			WHEN 'Y000057' THEN
			'玉林城投集团'
			WHEN 'Y000058' THEN
			'玉溪开投'
			WHEN 'Y000059' THEN
			'远东集团'
			WHEN 'Y000060' THEN
			'远洋控股'
			WHEN 'Y000061' THEN
			'岳阳林纸'
			WHEN 'Y000062' THEN
			'岳阳城建投'
			WHEN 'Y000063' THEN
			'新达城建投'
			WHEN 'Y000064' THEN
			'云南白药'
			WHEN 'Y000065' THEN
			'东源煤电'
			WHEN 'Y000066' THEN
			'云南机场'
			WHEN 'Y000067' THEN
			'云南建工'
			WHEN 'Y000068' THEN
			'云铝'
			WHEN 'Y000069' THEN
			'云南煤化集团'
			WHEN 'Y000070' THEN
			'南天信息'
			WHEN 'Y000071' THEN
			'云南康旅'
			WHEN 'Y000072' THEN
			'云南电投'
			WHEN 'Y000073' THEN
			'云南工投集团'
			WHEN 'Y000074' THEN
			'云南水投'
			WHEN 'Y000075' THEN
			'云投铁路'
			WHEN 'Y000076' THEN
			'云投集团'
			WHEN 'Y000077' THEN
			'云南世博集团'
			WHEN 'Y000078' THEN
			'云铜集团'
			WHEN 'Y000079' THEN
			'云南铜业'
			WHEN 'Y000080' THEN
			'云南物流'
			WHEN 'Y000081' THEN
			'云锡'
			WHEN 'Y000082' THEN
			'云南冶金集团'
			WHEN 'Y000083' THEN
			'云天化集团'
			WHEN 'Y000084' THEN
			'运城城投'
			WHEN 'Y000085' THEN
			'韵升控股'
			WHEN 'Y000086' THEN
			'新矿集团'
			WHEN 'Y000087' THEN
			'窑街煤电'
			WHEN 'Y000088' THEN
			'亚太机电集团'
			WHEN 'Y000089' THEN
			'亿利资源集团'
			WHEN 'Y000090' THEN
			'扬州自来水'
			WHEN 'Y000091' THEN
			'云南交投集团'
			WHEN 'Y000092' THEN
			'余姚经开投发'
			WHEN 'Y000093' THEN
			'益阳高发投'
			WHEN 'Y000094' THEN
			'用友网络'
			WHEN 'Y000095' THEN
			'邗江发展'
			WHEN 'Y000096' THEN
			'烟台建发'
			WHEN 'Y000097' THEN
			'阳煤化工'
			WHEN 'Y000098' THEN
			'尧柏集团'
			WHEN 'Y000099' THEN
			'营口经开城投'
			WHEN 'Y000100' THEN
			'业达城发集团'
			WHEN 'Y000101' THEN
			'中小企业'
			WHEN 'Y000102' THEN
			'云南工投集团'
			WHEN 'Y000103' THEN
			'云南红塔银行昆明分行'
			WHEN 'Y000104' THEN
			'驰宏锌锗'
			WHEN 'Y000105' THEN
			'null'
			WHEN 'Y000106' THEN
			'永泰能源'
			WHEN 'Y000107' THEN
			'永泰投资'
			WHEN 'Y000108' THEN
			'南山控股'
			WHEN 'Y000109' THEN
			'宜昌兴发集团'
			WHEN 'Y000110' THEN
			'隆平高科'
			WHEN 'Y000111' THEN
			'云南云维'
			WHEN 'Y000112' THEN
			'云南锡业'
			WHEN 'Y000113' THEN
			'兖州煤业'
			WHEN 'Y000114' THEN
			'营口港务'
			WHEN 'Z000001' THEN
			'枣庄国资'
			WHEN 'Z000002' THEN
			'湛江港集团'
			WHEN 'Z000003' THEN
			'张保实业'
			WHEN 'Z000004' THEN
			'张家港金城投发'
			WHEN 'Z000005' THEN
			'张家港公有资产经营'
			WHEN 'Z000006' THEN
			'张家界经发投'
			WHEN 'Z000007' THEN
			'张家口建发集团'
			WHEN 'Z000008' THEN
			'张家口银行'
			WHEN 'Z000009' THEN
			'张家口通泰控股'
			WHEN 'Z000010' THEN
			'漳州九龙江集团'
			WHEN 'Z000011' THEN
			'漳州路桥经营'
			WHEN 'Z000012' THEN
			'獐子岛'
			WHEN 'Z000013' THEN
			'招商局'
			WHEN 'Z000014' THEN
			'招商局轮船'
			WHEN 'Z000015' THEN
			'招商银行'
			WHEN 'Z000016' THEN
			'招商证券'
			WHEN 'Z000017' THEN
			'浙大网新'
			WHEN 'Z000018' THEN
			'浙江大东南集团'
			WHEN 'Z000019' THEN
			'东南网架'
			WHEN 'Z000020' THEN
			'富春江通信'
			WHEN 'Z000021' THEN
			'海正集团'
			WHEN 'Z000022' THEN
			'杭钢商贸'
			WHEN 'Z000023' THEN
			'恒逸集团'
			WHEN 'Z000024' THEN
			'湖州环太湖集团'
			WHEN 'Z000025' THEN
			'华海药业'
			WHEN 'Z000026' THEN
			'华友钴业'
			WHEN 'Z000027' THEN
			'吉利控股集团'
			WHEN 'Z000028' THEN
			'尖峰集团'
			WHEN 'Z000029' THEN
			'金汇集团'
			WHEN 'Z000030' THEN
			'景兴纸业'
			WHEN 'Z000031' THEN
			'久立特材'
			WHEN 'Z000032' THEN
			'凯喜雅'
			WHEN 'Z000033' THEN
			'浙江龙盛'
			WHEN 'Z000034' THEN
			'农资集团'
			WHEN 'Z000035' THEN
			'日月集团'
			WHEN 'Z000036' THEN
			'荣盛控股'
			WHEN 'Z000037' THEN
			'德清交投'
			WHEN 'Z000038' THEN
			'浙江省国贸集团'
			WHEN 'Z000039' THEN
			'浙江机电集团'
			WHEN 'Z000040' THEN
			'嘉善经开实业'
			WHEN 'Z000041' THEN
			'浙江省建投集团'
			WHEN 'Z000042' THEN
			'浙江省交通集团'
			WHEN 'Z000043' THEN
			'浙旅集团'
			WHEN 'Z000044' THEN
			'浙能公司'
			WHEN 'Z000045' THEN
			'浙江商业集团'
			WHEN 'Z000046' THEN
			'手工业合作社'
			WHEN 'Z000047' THEN
			'浙江省铁路投资'
			WHEN 'Z000048' THEN
			'浙江物产'
			WHEN 'Z000049' THEN
			'兴合集团'
			WHEN 'Z000050' THEN
			'泰隆商行'
			WHEN 'Z000051' THEN
			'天马轴承集团'
			WHEN 'Z000052' THEN
			'天圣控股'
			WHEN 'Z000053' THEN
			'万里扬'
			WHEN 'Z000054' THEN
			'伟星股份'
			WHEN 'Z000055' THEN
			'物产中大'
			WHEN 'Z000056' THEN
			'仙琚制药'
			WHEN 'Z000057' THEN
			'远洲控股'
			WHEN 'Z000058' THEN
			'中成控股'
			WHEN 'Z000059' THEN
			'小商品城'
			WHEN 'Z000060' THEN
			'众合科技'
			WHEN 'Z000061' THEN
			'浙商银行'
			WHEN 'Z000062' THEN
			'浙商证券'
			WHEN 'Z000063' THEN
			'null'
			WHEN 'Z000064' THEN
			'镇江城建集团'
			WHEN 'Z000065' THEN
			'镇江国控集团'
			WHEN 'Z000066' THEN
			'镇江交通'
			WHEN 'Z000067' THEN
			'镇江文化旅游'
			WHEN 'Z000068' THEN
			'null'
			WHEN 'Z000069' THEN
			'正邦集团'
			WHEN 'Z000070' THEN
			'正泰集团'
			WHEN 'Z000071' THEN
			'郑州城建'
			WHEN 'Z000072' THEN
			'郑州路桥建投'
			WHEN 'Z000073' THEN
			'郑煤集团'
			WHEN 'Z000074' THEN
			'郑州银行'
			WHEN 'Z000075' THEN
			'宇通集团'
			WHEN 'Z000076' THEN
			'中百集团'
			WHEN 'Z000077' THEN
			'中材水泥'
			WHEN 'Z000078' THEN
			'中诚信国际'
			WHEN 'Z000079' THEN
			'中诚信证评'
			WHEN 'Z000080' THEN
			'中德证券'
			WHEN 'Z000081' THEN
			'电投财务公司'
			WHEN 'Z000082' THEN
			'国家电投东北公司'
			WHEN 'Z000083' THEN
			'贵州金元'
			WHEN 'Z000084' THEN
			'蒙东能源'
			WHEN 'Z000085' THEN
			'中关村示范区'
			WHEN 'Z000086' THEN
			'中广有线'
			WHEN 'Z000087' THEN
			'保利集团'
			WHEN 'Z000088' THEN
			'null'
			WHEN 'Z000089' THEN
			'中国中车'
			WHEN 'Z000090' THEN
			'兵器工业集团'
			WHEN 'Z000091' THEN
			'中国长安'
			WHEN 'Z000092' THEN
			'中国长城资产'
			WHEN 'Z000093' THEN
			'长江电力'
			WHEN 'Z000094' THEN
			'长航集团'
			WHEN 'Z000095' THEN
			'中国三峡集团'
			WHEN 'Z000096' THEN
			'中国诚通'
			WHEN 'Z000097' THEN
			'中城建公司'
			WHEN 'Z000098' THEN
			'中国船舶'
			WHEN 'Z000099' THEN
			'中燃'
			WHEN 'Z000100' THEN
			'中船集团'
			WHEN 'Z000101' THEN
			'中广核技'
			WHEN 'Z000102' THEN
			'大唐集团'
			WHEN 'Z000103' THEN
			'大唐新能源'
			WHEN 'Z000104' THEN
			'中国二重'
			WHEN 'Z000105' THEN
			'一汽集团'
			WHEN 'Z000106' THEN
			'国电财务'
			WHEN 'Z000107' THEN
			'国家电投'
			WHEN 'Z000108' THEN
			'电信公司'
			WHEN 'Z000109' THEN
			'中国电信'
			WHEN 'Z000110' THEN
			'中影集团'
			WHEN 'Z000111' THEN
			'中国电科'
			WHEN 'Z000112' THEN
			'中国电子'
			WHEN 'Z000113' THEN
			'东方电气集团'
			WHEN 'Z000114' THEN
			'东方航空'
			WHEN 'Z000115' THEN
			'东航集团'
			WHEN 'Z000116' THEN
			'中国东方'
			WHEN 'Z000117' THEN
			'中国泛海控股集团'
			WHEN 'Z000118' THEN
			'中国复合材料集团'
			WHEN 'Z000119' THEN
			'中国旅游集团'
			WHEN 'Z000120' THEN
			'中国葛洲坝集团'
			WHEN 'Z000121' THEN
			'葛洲坝'
			WHEN 'Z000122' THEN
			'工商银行'
			WHEN 'Z000123' THEN
			'工行江苏分行'
			WHEN 'Z000124' THEN
			'工行宁夏分行'
			WHEN 'Z000125' THEN
			'工行山西分行'
			WHEN 'Z000126' THEN
			'工行陕西分行'
			WHEN 'Z000127' THEN
			'工行上海分行'
			WHEN 'Z000128' THEN
			'工行浙江分行'
			WHEN 'Z000129' THEN
			'中国供销集团'
			WHEN 'Z000130' THEN
			'光大银行'
			WHEN 'Z000132' THEN
			'贵航集团'
			WHEN 'Z000133' THEN
			'中国国电'
			WHEN 'Z000134' THEN
			'中集集团'
			WHEN 'Z000135' THEN
			'国航'
			WHEN 'Z000136' THEN
			'中金公司'
			WHEN 'Z000137' THEN
			'中国国贸'
			WHEN 'Z000138' THEN
			'中国国际信托'
			WHEN 'Z000139' THEN
			'中国海油'
			WHEN 'Z000140' THEN
			'中国远洋海运集团'
			WHEN 'Z000141' THEN
			'中航第二集团公司'
			WHEN 'Z000142' THEN
			'中航第一集团公司'
			WHEN 'Z000143' THEN
			'中航工业'
			WHEN 'Z000144' THEN
			'国航'
			WHEN 'Z000145' THEN
			'中航国际'
			WHEN 'Z000146' THEN
			'深圳中航'
			WHEN 'Z000147' THEN
			'中国航油'
			WHEN 'Z000148' THEN
			'航天科工'
			WHEN 'Z000149' THEN
			'中国航天'
			WHEN 'Z000150' THEN
			'中国昊华'
			WHEN 'Z000151' THEN
			'中核集团'
			WHEN 'Z000152' THEN
			'中国核建'
			WHEN 'Z000153' THEN
			'中国核电'
			WHEN 'Z000154' THEN
			'恒天集团'
			WHEN 'Z000155' THEN
			'华电财务公司'
			WHEN 'Z000156' THEN
			'中国华电'
			WHEN 'Z000157' THEN
			'华粮物流'
			WHEN 'Z000158' THEN
			'华能财务'
			WHEN 'Z000159' THEN
			'中国华能'
			WHEN 'Z000160' THEN
			'华润'
			WHEN 'Z000161' THEN
			'中国化工'
			WHEN 'Z000162' THEN
			'中国黄金'
			WHEN 'Z000163' THEN
			'国机集团'
			WHEN 'Z000164' THEN
			'中国吉林森工集团'
			WHEN 'Z000165' THEN
			'中国建材'
			WHEN 'Z000166' THEN
			'建设银行'
			WHEN 'Z000167' THEN
			'建行北京分行'
			WHEN 'Z000168' THEN
			'建行大连市分行'
			WHEN 'Z000169' THEN
			'建行广东分行'
			WHEN 'Z000170' THEN
			'建行湖北分行'
			WHEN 'Z000171' THEN
			'建行湖南分行'
			WHEN 'Z000172' THEN
			'建行江苏分行'
			WHEN 'Z000173' THEN
			'建行柳州分行'
			WHEN 'Z000174' THEN
			'建行泸州分行'
			WHEN 'Z000175' THEN
			'建行山东分行'
			WHEN 'Z000176' THEN
			'建行陕西分行'
			WHEN 'Z000177' THEN
			'建行深圳市分行'
			WHEN 'Z000178' THEN
			'建行四川分行'
			WHEN 'Z000179' THEN
			'建行天津分行'
			WHEN 'Z000180' THEN
			'建行浙江分行'
			WHEN 'Z000181' THEN
			'建行重庆市分行'
			WHEN 'Z000182' THEN
			'中国建材集团'
			WHEN 'Z000183' THEN
			'中建二局'
			WHEN 'Z000184' THEN
			'中建五局'
			WHEN 'Z000185' THEN
			'中国建筑'
			WHEN 'Z000186' THEN
			'中交股份'
			WHEN 'Z000187' THEN
			'中国节能'
			WHEN 'Z000188' THEN
			'金茂集团'
			WHEN 'Z000189' THEN
			'进出口行'
			WHEN 'Z000190' THEN
			'中国联合水泥'
			WHEN 'Z000191' THEN
			'中国联通'
			WHEN 'Z000192' THEN
			'中国铝业'
			WHEN 'Z000193' THEN
			'中国铝业山西铝厂'
			WHEN 'Z000194' THEN
			'中国铝业'
			WHEN 'Z000195' THEN
			'民生银行'
			WHEN 'Z000196' THEN
			'民生银行成都分行'
			WHEN 'Z000197' THEN
			'民生银行北京分行'
			WHEN 'Z000198' THEN
			'方正承销保荐'
			WHEN 'Z000199' THEN
			'中国南玻集团'
			WHEN 'Z000200' THEN
			'null'
			WHEN 'Z000201' THEN
			'中国南车'
			WHEN 'Z000202' THEN
			'南方电网'
			WHEN 'Z000203' THEN
			'中国兵装'
			WHEN 'Z000204' THEN
			'南航'
			WHEN 'Z000205' THEN
			'中国南山集团'
			WHEN 'Z000206' THEN
			'中农发集团'
			WHEN 'Z000207' THEN
			'农发行'
			WHEN 'Z000208' THEN
			'农发行安庆分行'
			WHEN 'Z000209' THEN
			'农业银行'
			WHEN 'Z000210' THEN
			'农行安徽分行'
			WHEN 'Z000211' THEN
			'农行北京分行'
			WHEN 'Z000212' THEN
			'农行镇江分行'
			WHEN 'Z000213' THEN
			'农行广西壮族自治区分行'
			WHEN 'Z000214' THEN
			'农行贵州分行'
			WHEN 'Z000215' THEN
			'农行河北分行'
			WHEN 'Z000216' THEN
			'农行河南分行'
			WHEN 'Z000217' THEN
			'农行湖北分行'
			WHEN 'Z000218' THEN
			'农行湖南分行'
			WHEN 'Z000219' THEN
			'农行江西分行'
			WHEN 'Z000220' THEN
			'农行内蒙古自治区分行'
			WHEN 'Z000221' THEN
			'农行宁波市分行'
			WHEN 'Z000222' THEN
			'农行山东分行'
			WHEN 'Z000223' THEN
			'农行山西分行'
			WHEN 'Z000224' THEN
			'农行上海分行'
			WHEN 'Z000225' THEN
			'农行天津分行'
			WHEN 'Z000226' THEN
			'建行固原分行'
			WHEN 'Z000227' THEN
			'农行云南分行'
			WHEN 'Z000228' THEN
			'农行浙江分行'
			WHEN 'Z000229' THEN
			'农行重庆分行'
			WHEN 'Z000230' THEN
			'中平能化集团'
			WHEN 'Z000231' THEN
			'中国普天'
			WHEN 'Z000232' THEN
			'中国普天'
			WHEN 'Z000233' THEN
			'中汽中心'
			WHEN 'Z000234' THEN
			'中轻集团'
			WHEN 'Z000235' THEN
			'央行'
			WHEN 'Z000236' THEN
			'中国商飞'
			WHEN 'Z000237' THEN
			'绍兴黄酒集团'
			WHEN 'Z000238' THEN
			'中生股份'
			WHEN 'Z000239' THEN
			'石化财务'
			WHEN 'Z000240' THEN
			'中国石化'
			WHEN 'Z000241' THEN
			'中国石化'
			WHEN 'Z000242' THEN
			'中国石油'
			WHEN 'Z000243' THEN
			'中石油'
			WHEN 'Z000244' THEN
			'首钢集团'
			WHEN 'Z000245' THEN
			'水电顾问集团'
			WHEN 'Z000246' THEN
			'中电建水电开发集团'
			WHEN 'Z000247' THEN
			'中国水利七局'
			WHEN 'Z000248' THEN
			'中国电建'
			WHEN 'Z000249' THEN
			'中国水电集团'
			WHEN 'Z000250' THEN
			'中国水务'
			WHEN 'Z000251' THEN
			'中国铁建'
			WHEN 'Z000252' THEN
			'中国铁物'
			WHEN 'Z000253' THEN
			'中国铁物'
			WHEN 'Z000254' THEN
			'中国铁通'
			WHEN 'Z000255' THEN
			'中国通用技术'
			WHEN 'Z000256' THEN
			'中投保'
			WHEN 'Z000257' THEN
			'中国外运长航'
			WHEN 'Z000258' THEN
			'中国外运'
			WHEN 'Z000259' THEN
			'中国联通'
			WHEN 'Z000260' THEN
			'中国网通集团'
			WHEN 'Z000261' THEN
			'中国五矿'
			WHEN 'Z000262' THEN
			'西电电气'
			WHEN 'Z000263' THEN
			'新兴集团'
			WHEN 'Z000264' THEN
			'中国信达'
			WHEN 'Z000265' THEN
			'中盐集团'
			WHEN 'Z000266' THEN
			'中国中冶'
			WHEN 'Z000267' THEN
			'中冶集团'
			WHEN 'Z000268' THEN
			'国药集团'
			WHEN 'Z000269' THEN
			'中国移动(香港)'
			WHEN 'Z000270' THEN
			'中国移动'
			WHEN 'Z000271' THEN
			'中国银河'
			WHEN 'Z000272' THEN
			'中国银行'
			WHEN 'Z000273' THEN
			'中行北京分行'
			WHEN 'Z000274' THEN
			'中行广东分行'
			WHEN 'Z000275' THEN
			'中行湖北分行'
			WHEN 'Z000276' THEN
			'中行山西分行'
			WHEN 'Z000277' THEN
			'中行上海分行'
			WHEN 'Z000278' THEN
			'中国有色集团'
			WHEN 'Z000279' THEN
			'中远海控'
			WHEN 'Z000280' THEN
			'中证金融公司'
			WHEN 'Z000281' THEN
			'中材股份'
			WHEN 'Z000282' THEN
			'中材集团'
			WHEN 'Z000283' THEN
			'中纺集团'
			WHEN 'Z000284' THEN
			'中钢股份'
			WHEN 'Z000285' THEN
			'中钢集团'
			WHEN 'Z000286' THEN
			'中化股份'
			WHEN 'Z000287' THEN
			'中化'
			WHEN 'Z000288' THEN
			'中煤能源'
			WHEN 'Z000289' THEN
			'中丝集团'
			WHEN 'Z000290' THEN
			'中国中铁'
			WHEN 'Z000291' THEN
			'中金财富证券'
			WHEN 'Z000292' THEN
			'中信集团'
			WHEN 'Z000293' THEN
			'中国重汽'
			WHEN 'Z000294' THEN
			'中远海能'
			WHEN 'Z000295' THEN
			'中远海发'
			WHEN 'Z000296' THEN
			'中海油服'
			WHEN 'Z000297' THEN
			'中航发动机控股'
			WHEN 'Z000298' THEN
			'中航证券'
			WHEN 'Z000299' THEN
			'中核财务'
			WHEN 'Z000300' THEN
			'中国财政部'
			WHEN 'Z000301' THEN
			'null'
			WHEN 'Z000302' THEN
			'中化国际'
			WHEN 'Z000303' THEN
			'中化化肥'
			WHEN 'Z000304' THEN
			'中化蓝天'
			WHEN 'Z000305' THEN
			'中金黄金'
			WHEN 'Z000306' THEN
			'中炬高新'
			WHEN 'Z000307' THEN
			'中科集团'
			WHEN 'Z000308' THEN
			'诺德股份'
			WHEN 'Z000309' THEN
			'中利集团'
			WHEN 'Z000310' THEN
			'中粮集团'
			WHEN 'Z000311' THEN
			'中粮糖业'
			WHEN 'Z000312' THEN
			'山西华昱能源'
			WHEN 'Z000313' THEN
			'中煤矿建集团'
			WHEN 'Z000314' THEN
			'中山交发集团'
			WHEN 'Z000315' THEN
			'中山中汇投资'
			WHEN 'Z000316' THEN
			'中升(大连)集团'
			WHEN 'Z000317' THEN
			'中天建设集团'
			WHEN 'Z000318' THEN
			'中条山集团'
			WHEN 'Z000319' THEN
			'中铁工业'
			WHEN 'Z000320' THEN
			'中铁二十二局'
			WHEN 'Z000321' THEN
			'中铁二十局'
			WHEN 'Z000322' THEN
			'中铁二十五局'
			WHEN 'Z000323' THEN
			'中铁二十一局'
			WHEN 'Z000324' THEN
			'中铁十七局'
			WHEN 'Z000325' THEN
			'中国铁建大桥局'
			WHEN 'Z000326' THEN
			'中铁十四局'
			WHEN 'Z000327' THEN
			'中铁十五局'
			WHEN 'Z000328' THEN
			'中铁物资'
			WHEN 'Z000329' THEN
			'中文传媒'
			WHEN 'Z000330' THEN
			'中新创投'
			WHEN 'Z000331' THEN
			'中信大锰矿业'
			WHEN 'Z000332' THEN
			'国安集团'
			WHEN 'Z000333' THEN
			'中信建投'
			WHEN 'Z000334' THEN
			'null'
			WHEN 'Z000335' THEN
			'null'
			WHEN 'Z000336' THEN
			'中信银行'
			WHEN 'Z000337' THEN
			'中信证券'
			WHEN 'Z000338' THEN
			'中盐吉兰泰'
			WHEN 'Z000339' THEN
			'中央汇金公司'
			WHEN 'Z000340' THEN
			'中纸集团'
			WHEN 'Z000341' THEN
			'中银证券'
			WHEN 'Z000342' THEN
			'中油财务'
			WHEN 'Z000343' THEN
			'中油金鸿天然气'
			WHEN 'Z000344' THEN
			'中原出版传媒'
			WHEN 'Z000345' THEN
			'中原环保'
			WHEN 'Z000346' THEN
			'中原证券'
			WHEN 'Z000347' THEN
			'中远海特'
			WHEN 'Z000348' THEN
			'中债公司'
			WHEN 'Z000349' THEN
			'众业达'
			WHEN 'Z000350' THEN
			'长寿开发投资'
			WHEN 'Z000351' THEN
			'重庆城交开投'
			WHEN 'Z000352' THEN
			'重庆出版集团'
			WHEN 'Z000353' THEN
			'重庆大晟资产'
			WHEN 'Z000354' THEN
			'重庆外贸集团'
			WHEN 'Z000355' THEN
			'重钢集团'
			WHEN 'Z000356' THEN
			'重庆钢铁矿业'
			WHEN 'Z000357' THEN
			'重庆高速'
			WHEN 'Z000358' THEN
			'重庆化医'
			WHEN 'Z000359' THEN
			'重庆机电'
			WHEN 'Z000360' THEN
			'重庆建工'
			WHEN 'Z000361' THEN
			'重庆发展置业'
			WHEN 'Z000362' THEN
			'缙云资产'
			WHEN 'Z000363' THEN
			'莱美药业'
			WHEN 'Z000364' THEN
			'重庆力帆控股'
			WHEN 'Z000365' THEN
			'重庆粮食集团'
			WHEN 'Z000366' THEN
			'重庆龙湖拓展'
			WHEN 'Z000367' THEN
			'重庆迈瑞城投'
			WHEN 'Z000368' THEN
			'重庆农商行'
			WHEN 'Z000369' THEN
			'重庆轻纺'
			WHEN 'Z000370' THEN
			'三峡水利'
			WHEN 'Z000371' THEN
			'重庆城投'
			WHEN 'Z000372' THEN
			'重庆地产集团'
			WHEN 'Z000373' THEN
			'null'
			WHEN 'Z000374' THEN
			'重庆国有文资'
			WHEN 'Z000375' THEN
			'重庆合川城投'
			WHEN 'Z000376' THEN
			'重庆合川农投'
			WHEN 'Z000377' THEN
			'重庆宏融资本'
			WHEN 'Z000378' THEN
			'江北嘴投资集团'
			WHEN 'Z000379' THEN
			'江津华信'
			WHEN 'Z000380' THEN
			'南岸城建'
			WHEN 'Z000381' THEN
			'惠农旅游'
			WHEN 'Z000382' THEN
			'重庆能源投资'
			WHEN 'Z000383' THEN
			'重庆农业投资'
			WHEN 'Z000384' THEN
			'黔江区城投'
			WHEN 'Z000385' THEN
			'三峡融资'
			WHEN 'Z000386' THEN
			'重庆水利投资'
			WHEN 'Z000387' THEN
			'重庆水务资产'
			WHEN 'Z000388' THEN
			'重庆兴荣集团'
			WHEN 'Z000389' THEN
			'永川惠通建设'
			WHEN 'Z000390' THEN
			'重庆渝南资产'
			WHEN 'Z000391' THEN
			'重庆渝兴建投'
			WHEN 'Z000392' THEN
			'太极集团'
			WHEN 'Z000393' THEN
			'重庆铁发遂渝'
			WHEN 'Z000394' THEN
			'乌江实业'
			WHEN 'Z000395' THEN
			'西永微电子'
			WHEN 'Z000396' THEN
			'重庆新华书店'
			WHEN 'Z000397' THEN
			'重庆银行'
			WHEN 'Z000398' THEN
			'重庆渝涪高速'
			WHEN 'Z000399' THEN
			'渝富集团'
			WHEN 'Z000400' THEN
			'重庆渝隆资产'
			WHEN 'Z000401' THEN
			'舟山港'
			WHEN 'Z000402' THEN
			'舟山交投集团'
			WHEN 'Z000403' THEN
			'定海国资营'
			WHEN 'Z000404' THEN
			'株洲高科集团'
			WHEN 'Z000405' THEN
			'株洲城发'
			WHEN 'Z000406' THEN
			'云发集团'
			WHEN 'Z000407' THEN
			'珠海港集团'
			WHEN 'Z000408' THEN
			'格力集团'
			WHEN 'Z000409' THEN
			'华发集团'
			WHEN 'Z000410' THEN
			'珠海交通集团'
			WHEN 'Z000411' THEN
			'珠海联邦制药'
			WHEN 'Z000412' THEN
			'珠海水务环境'
			WHEN 'Z000413' THEN
			'珠海中富'
			WHEN 'Z000414' THEN
			'诸城经开投'
			WHEN 'Z000415' THEN
			'诸暨城乡投资'
			WHEN 'Z000416' THEN
			'驻马店城乡建设'
			WHEN 'Z000417' THEN
			'准格尔国资'
			WHEN 'Z000418' THEN
			'淄博城资'
			WHEN 'Z000419' THEN
			'自贡国投集团'
			WHEN 'Z000420' THEN
			'邹城城资'
			WHEN 'Z000421' THEN
			'邹平国资'
			WHEN 'Z000422' THEN
			'遵义道桥集团'
			WHEN 'Z000423' THEN
			'遵义投资集团'
			WHEN 'Z000424' THEN
			'遵义新区建投'
			WHEN 'Z000425' THEN
			'中铁二局'
			WHEN 'Z000426' THEN
			'浙江政府'
			WHEN 'Z000427' THEN
			'中小企业'
			WHEN 'Z000428' THEN
			'中小企业'
			WHEN 'Z000429' THEN
			'中小企业'
			WHEN 'Z000430' THEN
			'中小企业'
			WHEN 'Z000431' THEN
			'中小企业'
			WHEN 'Z000432' THEN
			'中小企业'
			WHEN 'Z000433' THEN
			'中小企业'
			WHEN 'Z000434' THEN
			'中小企业'
			WHEN 'Z000435' THEN
			'中小企业'
			WHEN 'Z000436' THEN
			'中小企业'
			WHEN 'Z000437' THEN
			'重庆进出口担保'
			WHEN 'Z000438' THEN
			'null'
			WHEN 'Z000439' THEN
			'null'
			WHEN 'Z000440' THEN
			'重庆北飞实业'
			WHEN 'Z000441' THEN
			'中小企业'
			WHEN 'Z000442' THEN
			'null'
			WHEN 'Z000443' THEN
			'遵义国资投融资'
			WHEN 'Z000444' THEN
			'中国四联集团'
			WHEN 'Z000445' THEN
			'遵义钛业'
			WHEN 'Z000446' THEN
			'中小企业'
			WHEN 'Z000447' THEN
			'招远国资'
			WHEN 'Z000448' THEN
			'兴中集团'
			WHEN 'Z000449' THEN
			'中国庆华'
			WHEN 'Z000450' THEN
			'珠海九洲控股'
			WHEN 'Z000451' THEN
			'中国能建'
			WHEN 'Z000452' THEN
			'中小企业'
			WHEN 'Z000453' THEN
			'中航机载系统'
			WHEN 'Z000454' THEN
			'正海集团'
			WHEN 'Z000455' THEN
			'重庆涪陵国资'
			WHEN 'Z000456' THEN
			'重庆高科'
			WHEN 'Z000457' THEN
			'资阳城投'
			WHEN 'Z000458' THEN
			'重庆高速'
			WHEN 'Z000459' THEN
			'中国移动'
			WHEN 'Z000460' THEN
			'中信集团'
			WHEN 'Z000461' THEN
			'郑州担保'
			WHEN 'Z000462' THEN
			'日发控股集团'
			WHEN 'Z000463' THEN
			'招金矿业'
			WHEN 'Z000464' THEN
			'南航'
			WHEN 'Z000465' THEN
			'中国华阳'
			WHEN 'Z000466' THEN
			'民泰商行'
			WHEN 'Z000467' THEN
			'海天建设'
			WHEN 'Z000468' THEN
			'永太科技'
			WHEN 'Z000469' THEN
			'自贡高新国资'
			WHEN 'Z000470' THEN
			'中国邮电器材'
			WHEN 'Z000471' THEN
			'中铁十九局'
			WHEN 'Z000472' THEN
			'中交投资'
			WHEN 'Z000473' THEN
			'重庆国际复合材料'
			WHEN 'Z000474' THEN
			'重庆路桥'
			WHEN 'Z000475' THEN
			'中铁二十三局'
			WHEN 'Z000476' THEN
			'英特药业'
			WHEN 'Z000477' THEN
			'漳州城投'
			WHEN 'Z000478' THEN
			'中建四局'
			WHEN 'Z000479' THEN
			'中国邮政'
			WHEN 'Z000480' THEN
			'中建七局'
			WHEN 'Z000481' THEN
			'中国蓝星'
			WHEN 'Z000482' THEN
			'重庆港九'
			WHEN 'Z000483' THEN
			'中建一局'
			WHEN 'Z000484' THEN
			'开元酒店集团'
			WHEN 'Z000485' THEN
			'渣打银行(中国)'
			WHEN 'Z000486' THEN
			'中铁八局'
			WHEN 'Z000487' THEN
			'中建八局'
			WHEN 'Z000488' THEN
			'宁夏能源铝业'
			WHEN 'Z000489' THEN
			'中航国际'
			WHEN 'Z000490' THEN
			'重钢西昌矿业'
			WHEN 'Z000491' THEN
			'中航重机'
			WHEN 'Z000492' THEN
			'中国建材工程集团'
			WHEN 'Z000493' THEN
			'重庆万盛开投'
			WHEN 'Z000494' THEN
			'中铁二十四局'
			WHEN 'Z000495' THEN
			'中牧集团'
			WHEN 'Z000496' THEN
			'新昌投资'
			WHEN 'Z000497' THEN
			'汇川城建投'
			WHEN 'Z000498' THEN
			'大足国资'
			WHEN 'Z000499' THEN
			'双桥开投'
			WHEN 'Z000500' THEN
			'重庆南发城发'
			WHEN 'Z000501' THEN
			'大唐乌沙山'
			WHEN 'Z000502' THEN
			'中材科技'
			WHEN 'Z000503' THEN
			'null'
			WHEN 'Z000504' THEN
			'重庆商社'
			WHEN 'Z000505' THEN
			'重庆保税开发'
			WHEN 'Z000506' THEN
			'中国铁路'
			WHEN 'Z000507' THEN
			'中交三航'
			WHEN 'Z000508' THEN
			'中铁大桥'
			WHEN 'Z000509' THEN
			'中铁六局'
			WHEN 'Z000510' THEN
			'鸿业集团'
			WHEN 'Z000511' THEN
			'海南发展'
			WHEN 'Z000512' THEN
			'中铁建工'
			WHEN 'Z000513' THEN
			'合川工业投资'
			WHEN 'Z000514' THEN
			'重庆商业投资'
			WHEN 'Z000515' THEN
			'航发司'
			WHEN 'Z000516' THEN
			'招银金融租赁'
			WHEN 'Z000517' THEN
			'中国长城'
			WHEN 'Z000518' THEN
			'中行浙江分行'
			WHEN 'Z000519' THEN
			'工行湖州分行'
			WHEN 'Z000520' THEN
			'余杭农商行'
			WHEN 'Z000521' THEN
			'工行台州分行'
			WHEN 'Z000522' THEN
			'中行泰州海陵支行'
			WHEN 'Z000523' THEN
			'中行连云港分行'
			WHEN 'Z000524' THEN
			'浙商银行杭州西湖支行'
			WHEN 'Z000525' THEN
			'中行邯郸分行'
			WHEN 'Z000526' THEN
			'中行温州市分行'
			WHEN 'Z000527' THEN
			'农行重庆大足支行'
			WHEN 'Z000528' THEN
			'建行金坛支行'
			WHEN 'Z000529' THEN
			'招行芜湖分行'
			WHEN 'Z000530' THEN
			'中信银行南京分行'
			WHEN 'Z000531' THEN
			'工行珠海分行'
			WHEN 'Z000532' THEN
			'民生银行宜昌分行'
			WHEN 'Z000533' THEN
			'五矿股份'
			WHEN 'Z000534' THEN
			'中信银行昆明分行'
			WHEN 'Z000535' THEN
			'建行常州分行'
			WHEN 'Z000536' THEN
			'中铁资源'
			WHEN 'Z000537' THEN
			'工行东营分行'
			WHEN 'Z000538' THEN
			'中国电建'
			WHEN 'Z000539' THEN
			'农行恩施分行'
			WHEN 'Z000540' THEN
			'工行平湖支行'
			WHEN 'Z000541' THEN
			'招行福州分行'
			WHEN 'Z000542' THEN
			'招行哈尔滨分行'
			WHEN 'Z000543' THEN
			'招行南昌分行'
			WHEN 'Z000544' THEN
			'工行常州分行'
			WHEN 'Z000545' THEN
			'工行瑞安支行'
			WHEN 'Z000546' THEN
			'工行苏州分行'
			WHEN 'Z000547' THEN
			'工行桐乡支行'
			WHEN 'Z000548' THEN
			'工行温州分行'
			WHEN 'Z000549' THEN
			'建行湖州分行'
			WHEN 'Z000550' THEN
			'建行开封分行'
			WHEN 'Z000551' THEN
			'建行淄博分行'
			WHEN 'Z000552' THEN
			'民生银行重庆分行'
			WHEN 'Z000553' THEN
			'农行赣州分行'
			WHEN 'Z000554' THEN
			'农行嘉善支行'
			WHEN 'Z000555' THEN
			'农行嘉兴分行'
			WHEN 'Z000556' THEN
			'农行金华分行'
			WHEN 'Z000557' THEN
			'农行乐清市支行'
			WHEN 'Z000558' THEN
			'农行绍兴分行'
			WHEN 'Z000559' THEN
			'农行苏州分行'
			WHEN 'Z000560' THEN
			'农行台州分行'
			WHEN 'Z000561' THEN
			'中行鸡西分行'
			WHEN 'Z000562' THEN
			'中行太仓支行'
			WHEN 'Z000563' THEN
			'中行伊犁哈萨克自治州分行'
			WHEN 'Z000564' THEN
			'中行仪征支行'
			WHEN 'Z000565' THEN
			'中行镇江分行'
			WHEN 'Z000566' THEN
			'中行驻马店分行'
			WHEN 'Z000567' THEN
			'中信银行南宁分行'
			WHEN 'Z000568' THEN
			'工行嘉善支行'
			WHEN 'Z000569' THEN
			'工行柳州分行'
			WHEN 'Z000570' THEN
			'光大银行芜湖分行'
			WHEN 'Z000571' THEN
			'建行泰州分行'
			WHEN 'Z000572' THEN
			'建行株洲市分行'
			WHEN 'Z000573' THEN
			'农发行鄂州市分行'
			WHEN 'Z000574' THEN
			'中行东台支行'
			WHEN 'Z000575' THEN
			'中行河南分行'
			WHEN 'Z000576' THEN
			'中行云南分行'
			WHEN 'Z000577' THEN
			'中信银行上海分行'
			WHEN 'Z000578' THEN
			'中信银行大连分行'
			WHEN 'Z000579' THEN
			'中信银行嘉兴分行'
			WHEN 'Z000580' THEN
			'中信银行武汉分行'
			WHEN 'Z000581' THEN
			'中信银行曲靖分行'
			WHEN 'Z000582' THEN
			'中行濮阳分行'
			WHEN 'Z000583' THEN
			'中行通辽分行'
			WHEN 'Z000584' THEN
			'中行上海市松江支行'
			WHEN 'Z000585' THEN
			'郑州公共住宅投资'
			WHEN 'Z000586' THEN
			'银轮股份'
			WHEN 'Z000587' THEN
			'天台银轮实业'
			WHEN 'Z000588' THEN
			'中航光电'
			WHEN 'Z000589' THEN
			'围海股份'
			WHEN 'Z000590' THEN
			'中航科工'
			WHEN 'Z000591' THEN
			'大立科技'
			WHEN 'Z000592' THEN
			'珠海港'
			WHEN 'Z000593' THEN
			'海翔药业'
			WHEN 'Z000594' THEN
			'中山公用'
			WHEN 'Z000595' THEN
			'宏润控股'
			WHEN 'Z000596' THEN
			'重药控股'
			WHEN 'Z000597' THEN
			'传化智联'
			WHEN 'Z000598' THEN
			'建峰集团'
			WHEN 'Z000599' THEN
			'中顺洁柔'
			WHEN 'Z000600' THEN
			'大悦城'
			WHEN 'Z000601' THEN
			'瀚叶股份'
			WHEN 'Z000602' THEN
			'保税科技'
			WHEN 'Z000603' THEN
			'张家港金港资产'
			WHEN 'Z000604' THEN
			'正泰电器'
			WHEN 'Z000605' THEN
			'盾安环境'
			WHEN 'Z000606' THEN
			'精工集团'
			WHEN 'Z000607' THEN
			'重庆机电'
			WHEN 'Z000608' THEN
			'亚厦股份'
			WHEN 'Z000609' THEN
			'浙江康盛股份'
			WHEN 'Z000610' THEN
			'中国交建'
			WHEN 'Z000611' THEN
			'海正药业'
			WHEN 'Z000612' THEN
			'中兴通讯'
			WHEN 'Z000613' THEN
			'万丰奥威'
			WHEN 'Z000614' THEN
			'富春环保'
			WHEN 'Z000615' THEN
			'中国石化'
			WHEN 'Z000616' THEN
			'中国一重机械'
			WHEN 'Z000617' THEN
			'中国一重'
			WHEN 'Z000618' THEN
			'null'
			WHEN 'Z000619' THEN
			'长安汽车'
			WHEN 'Z000620' THEN
			'天沃科技'
			WHEN 'Z000621' THEN
			'明牌珠宝'
			WHEN 'Z000622' THEN
			'棕榈股份'
			WHEN 'Z000623' THEN
			'重庆钢铁'
			WHEN 'Z000624' THEN
			'新疆建工集团'
			WHEN 'Z000625' THEN
			'中粮科技'
			WHEN 'Z000626' THEN
			'航民股份'
			WHEN 'Z000627' THEN
			'航民集团'
			WHEN 'Z000628' THEN
			'片仔癀'
			WHEN 'Z000629' THEN
			'康恩贝'
			WHEN 'Z000630' THEN
			'报喜鸟'
			WHEN 'Z000631' THEN
			'宗申动力'
			WHEN 'Z000632' THEN
			'宗申产业集团'
			WHEN 'Z000633' THEN
			'中信国安'
			WHEN 'Z000634' THEN
			'中行天津分行'
			WHEN 'Z000635' THEN
			'华发股份'
			WHEN 'Z000636' THEN
			'重庆水务'
			WHEN 'Z000637' THEN
			'中信重工'
			WHEN 'Z000638' THEN
			'中华企业'
			WHEN 'Z000639' THEN
			'中国华控'
			WHEN 'Z000640' THEN
			'中储股份'
			WHEN 'Z000641' THEN
			'中国巨石'
			WHEN 'Z000642' THEN
			'向日葵'
			WHEN 'Z000643' THEN
			'null'
			WHEN 'Z000644' THEN
			'招商南油'
			WHEN 'ZRR0001' THEN
			'自然人'
			WHEN 'K000059' THEN
			'盘龙农信社'
			WHEN 'L000199' THEN
			'龙信集团'
			WHEN 'Z000817' THEN
			'农行重庆保税港支行'
			WHEN 'S000544' THEN
			'浦发银行宁波奉化支行'
			WHEN 'T000178' THEN
			'天房发展'
			WHEN 'Q000073' THEN
			'海创建投'
			WHEN 'S000901' THEN
			'宝庆工业'
			WHEN 'W000130' THEN
			'商联集团'
			WHEN 'N000281' THEN
			'奥克斯置业'
			WHEN 'J000333' THEN
			'交行开封分行'
			WHEN 'B000205' THEN
			'巴中资本运营'
			WHEN 'Z000645' THEN
			'建行上海分行'
			WHEN 'P000027' THEN
			'北方沥青燃料'
			WHEN 'N000321' THEN
			'南方汇通'
			WHEN 'Z000818' THEN
			'中行四平分行'
			WHEN 'X000182' THEN
			'象山国资'
			WHEN 'S000545' THEN
			'浦发银行宁波分行'
			WHEN 'Z000819' THEN
			'重庆高新城建'
			WHEN 'X000183' THEN
			'兴业银行九龙坡支行'
			WHEN 'S000666' THEN
			'超美斯'
			WHEN 'Z000131' THEN
			'中广核集团'
			WHEN 'S001081' THEN
			'仁寿鑫龙'
			WHEN 'S000546' THEN
			'山东企业集合'
			WHEN 'S000547' THEN
			'三井住友银行'
			WHEN 'G000269' THEN
			'国电南自'
			WHEN 'Z000820' THEN
			'富阳开发建投'
			WHEN 'Y000115' THEN
			'市场发展集团'
			WHEN 'C000118' THEN
			'朝阳银行'
			WHEN 'J000334' THEN
			'交行曲靖分行'
			WHEN 'A000073' THEN
			'左旗建投'
			WHEN 'N000159' THEN
			'宁国国资'
			WHEN 'D000111' THEN
			'德阳发展集团'
			WHEN 'D000112' THEN
			'德阳开发区管委会'
			WHEN 'S001082' THEN
			'郧阳城投'
			WHEN 'Q000132' THEN
			'青州城投'
			WHEN 'N000239' THEN
			'南通城建'
			WHEN 'Z001520' THEN
			'安图生物'
			WHEN 'S000405' THEN
			'赛尔网络'
			WHEN 'N000118' THEN
			'泰升实业'
			WHEN 'Z000821' THEN
			'民生银行西直门支行'
			WHEN 'F000087' THEN
			'邵武京天'
			WHEN 'N000160' THEN
			'庆华集团顺嘉商贸'
			WHEN 'J000250' THEN
			'邢矿集团'
			WHEN 'N000119' THEN
			'伊东资源'
			WHEN 'Y000116' THEN
			'云南能投'
			WHEN 'N000161' THEN
			'庆华集团济纳庆华矿业'
			WHEN 'A000057' THEN
			'江南化工'
			WHEN 'S000406' THEN
			'上海中星集团'
			WHEN 'H000394' THEN
			'西塞山开发建设'
			WHEN 'C000119' THEN
			'常熟交通公有'
			WHEN 'H000287' THEN
			'东塑集团'
			WHEN 'Z001521' THEN
			'淄博蓝帆'
			WHEN 'C000388' THEN
			'通达投资'
			WHEN 'S001298' THEN
			'滨江投资'
			WHEN 'Z000822' THEN
			'农行湖州分行'
			WHEN 'L000111' THEN
			'兰州投资控股'
			WHEN 'Z000646' THEN
			'中行郑州高新技术开发区支行'
			WHEN 'H000654' THEN
			'炎陵农商行'
			WHEN 'S000902' THEN
			'浦发银行武汉分行'
			WHEN 'C000258' THEN
			'中国自动化'
			WHEN 'A000134' THEN
			'安邦保险集团'
			WHEN 'Z001241' THEN
			'珠江人寿'
			WHEN 'G000437' THEN
			'华协农业'
			WHEN 'F000145' THEN
			'临川城投'
			WHEN 'Z001571' THEN
			'中铁建昆仑'
			WHEN 'S000407' THEN
			'山东政府'
			WHEN 'G000438' THEN
			'四会农商行'
			WHEN 'H000655' THEN
			'平江供水枢纽'
			WHEN 'Y000273' THEN
			'扬州盛裕'
			WHEN 'S005716' THEN
			'浦发银行江阴支行'
			WHEN 'Z001242' THEN
			'卓尔智联'
			WHEN 'D000192' THEN
			'宜安科技'
			WHEN 'W000279' THEN
			'智能自控'
			WHEN 'S005717' THEN
			'绍兴市政府'
			WHEN 'S005718' THEN
			'平安银行重庆分行'
			WHEN 'G000622' THEN
			'英联股份'
			WHEN 'T000351' THEN
			'太极股份'
			WHEN 'S005719' THEN
			'兴业银行呼和浩特分行'
			WHEN 'X000386' THEN
			'襄阳房投'
			WHEN 'X000327' THEN
			'携程旅行香港'
			WHEN 'H000656' THEN
			'攸州投资集团'
			WHEN 'S000548' THEN
			'寿光鲁清'
			WHEN 'H000657' THEN
			'河北金租'
			WHEN 'F000146' THEN
			'万利漆包线'
			WHEN 'F000147' THEN
			'鑫久铝合金'
			WHEN 'S000550' THEN
			'清源集团'
			WHEN 'S000549' THEN
			'石大胜华'
			WHEN 'Z000823' THEN
			'菲达环保'
			WHEN 'G000270' THEN
			'广日股份'
			WHEN 'L000112' THEN
			'龙建投资'
			WHEN 'S001083' THEN
			'齐悦科技'
			WHEN 'Q000133' THEN
			'瑞通投资'
			WHEN 'X000387' THEN
			'湘乡市东山投'
			WHEN 'B000308' THEN
			'保集集团'
			WHEN 'G000439' THEN
			'广州城建'
			WHEN 'B000206' THEN
			'经开投资'
			WHEN 'S000903' THEN
			'浦东投资'
			WHEN 'H000395' THEN
			'海南交通投资控股'
			WHEN 'H000396' THEN
			'华南城'
			WHEN 'C000259' THEN
			'南川城投'
			WHEN 'Y000274' THEN
			'云溪建投'
			WHEN 'A000135' THEN
			'江南建设'
			WHEN 'J000335' THEN
			'金安桥水电站'
			WHEN 'W000131' THEN
			'名城集团'
			WHEN 'J000251' THEN
			'交行辽宁分行'
			WHEN 'H000288' THEN
			'海尔财务公司'
			WHEN 'H000289' THEN
			'海尔集团'
			WHEN 'B000362' THEN
			'蚌埠经开投'
			WHEN 'B000363' THEN
			'本溪建工'
			WHEN 'B000139' THEN
			'东宝生物'
			WHEN 'A000108' THEN
			'大竹海旅游'
			WHEN 'A000058' THEN
			'中鼎股份'
			WHEN 'S005720' THEN
			'兴业银行重庆九龙坡支行'
			WHEN 'S005721' THEN
			'兴业银行无锡分行'
			WHEN 'S005722' THEN
			'路德环境'
			WHEN 'S005723' THEN
			'蓝特光学'
			WHEN 'S005724' THEN
			'拱东医疗'
			WHEN 'J000574' THEN
			'赣昌农商行'
			WHEN 'L000200' THEN
			'龙泉农商行'
			WHEN 'S005725' THEN
			'招行上饶分行'
			WHEN 'D000193' THEN
			'大航集团'
			WHEN 'Z001243' THEN
			'中国光大控股'
			WHEN 'S000551' THEN
			'翰宇药业'
			WHEN 'S005726' THEN
			'郑州银行南阳分行'
			WHEN 'B000309' THEN
			'京城机电股份'
			WHEN 'Y000275' THEN
			'雅本化学'
			WHEN 'Z001244' THEN
			'鑫达建设'
			WHEN 'X000328' THEN
			'临潼城投集团'
			WHEN 'X000329' THEN
			'灞桥基建投资'
			WHEN 'X000330' THEN
			'阎良城发建设'
			WHEN 'X000331' THEN
			'西安莲湖城投'
			WHEN 'X000332' THEN
			'碑林基建投资'
			WHEN 'X000333' THEN
			'西安新城公司'
			WHEN 'G000271' THEN
			'广东路桥'
			WHEN 'Z001522' THEN
			'圣达生物'
			WHEN 'Z001523' THEN
			'圣达集团'
			WHEN 'S005727' THEN
			'工行大兴安岭分行'
			WHEN 'B000310' THEN
			'宝能地产'
			WHEN 'Y000276' THEN
			'远大医药'
			WHEN 'B000311' THEN
			'凯晨置业'
			WHEN 'S000904' THEN
			'宝鹰股份'
			WHEN 'H000658' THEN
			'华润水泥'
			WHEN 'S005728' THEN
			'工行杭州艮山支行'
			WHEN 'B000419' THEN
			'北汽新能源'
			WHEN 'S005729' THEN
			'工行连云港分行'
			WHEN 'S005730' THEN
			'工行绵阳分行'
			WHEN 'Q000134' THEN
			'启东开发'
			WHEN 'G000498' THEN
			'广汇汽车'
			WHEN 'S005731' THEN
			'工行三门支行'
			WHEN 'J000781' THEN
			'荆楚文化集团'
			WHEN 'S005732' THEN
			'工行新野支行'
			WHEN 'K000078' THEN
			'凯撒文化'
			WHEN 'S005733' THEN
			'工行济宁兖州支行'
			WHEN 'S005734' THEN
			'工行杭州分行'
			WHEN 'S005735' THEN
			'工行邹平支行'
			WHEN 'S005736' THEN
			'建行巴音郭楞蒙古自治州分行'
			WHEN 'S005737' THEN
			'怀远新城建'
			WHEN 'S005738' THEN
			'怀投集团'
			WHEN 'S005739' THEN
			'建行福建分行'
			WHEN 'S005740' THEN
			'建行抚州市分行'
			WHEN 'S005741' THEN
			'建行海盐支行'
			WHEN 'S005742' THEN
			'建行汉中分行'
			WHEN 'S005743' THEN
			'建行龙口支行'
			WHEN 'S005744' THEN
			'建行牡丹江分行'
			WHEN 'J000252' THEN
			'吉视传媒'
			WHEN 'S005745' THEN
			'建行南昌铁路支行'
			WHEN 'H000906' THEN
			'华润置地'
			WHEN 'J000674' THEN
			'镇江农商行'
			WHEN 'S005746' THEN
			'建行内蒙古自治区分行'
			WHEN 'J000675' THEN
			'嘉事堂'
			WHEN 'S005747' THEN
			'建行湘西土家族苗族自治州分行'
			WHEN 'S005748' THEN
			'建行伊春分行'
			WHEN 'B000364' THEN
			'保定银行'
			WHEN 'W000280' THEN
			'中国万达集团'
			WHEN 'D000255' THEN
			'德华创投'
			WHEN 'Y000398' THEN
			'双江湖集团'
			WHEN 'L000246' THEN
			'隆昌建设'
			WHEN 'S000905' THEN
			'新世界'
			WHEN 'H000659' THEN
			'华创阳安'
			WHEN 'X000334' THEN
			'协鑫集成'
			WHEN 'S001299' THEN
			'四川农信社'
			WHEN 'S000906' THEN
			'威远农商行'
			WHEN 'A000171' THEN
			'安顺交投'
			WHEN 'Q000053' THEN
			'滨海新城资管'
			WHEN 'S005749' THEN
			'星岛仁恒'
			WHEN 'S005750' THEN
			'君信保理'
			WHEN 'S005751' THEN
			'深圳五顺方'
			WHEN 'S005752' THEN
			'科创投集团'
			WHEN 'S005753' THEN
			'优泓保理'
			WHEN 'S005754' THEN
			'宜宾三江投建'
			WHEN 'S005755' THEN
			'凯得租赁'
			WHEN 'S005756' THEN
			'农发行襄阳市分行营业部'
			WHEN 'S005757' THEN
			'农行安顺分行'
			WHEN 'S005758' THEN
			'农行郴州分行'
			WHEN 'S005759' THEN
			'农行吉安分行'
			WHEN 'W000222' THEN
			'潍坊公信国资'
			WHEN 'Y000277' THEN
			'银江股份'
			WHEN 'S000907' THEN
			'联合润通'
			WHEN 'S000908' THEN
			'广田控股'
			WHEN 'B000395' THEN
			'长久物流'
			WHEN 'G000272' THEN
			'歌山建设'
			WHEN 'S000408' THEN
			'电科院'
			WHEN 'Z001524' THEN
			'天台民生村镇行'
			WHEN 'S001300' THEN
			'施秉农信社'
			WHEN 'S005760' THEN
			'农行连云港分行'
			WHEN 'S005761' THEN
			'农行四平分行'
			WHEN 'W000243' THEN
			'温州民科'
			WHEN 'G000499' THEN
			'广德国投'
			WHEN 'S005762' THEN
			'农行杭州分行'
			WHEN 'S005763' THEN
			'农发行重庆市永川支行'
			WHEN 'C000307' THEN
			'观海卫建投'
			WHEN 'S001334' THEN
			'上饶创新产业投资'
			WHEN 'S000909' THEN
			'三寰集团'
			WHEN 'S005764' THEN
			'中行鄂尔多斯市分行'
			WHEN 'J000575' THEN
			'金堂农投'
			WHEN 'S005765' THEN
			'中行南通分行'
			WHEN 'S005766' THEN
			'中行南通港闸支行'
			WHEN 'S005767' THEN
			'中行萍乡市分行'
			WHEN 'A000074' THEN
			'金瑞集团'
			WHEN 'H000468' THEN
			'鸿商集团'
			WHEN 'S005768' THEN
			'蒙自新型城投'
			WHEN 'J000576' THEN
			'鹿港文化'
			WHEN 'Z001245' THEN
			'西部水泥'
			WHEN 'C000260' THEN
			'长江实业地产'
			WHEN 'S000910' THEN
			'金元百利'
			WHEN 'S005769' THEN
			'中行铁岭分行'
			WHEN 'S005770' THEN
			'中行锡林浩特分行'
			WHEN 'A000075' THEN
			'岚岳煤炭'
			WHEN 'S005771' THEN
			'中行扬州分行'
			WHEN 'Z000824' THEN
			'紫光集团'
			WHEN 'S005772' THEN
			'中行邹平支行'
			WHEN 'Z000825' THEN
			'中铁建港航局'
			WHEN 'G000500' THEN
			'广药集团'
			WHEN 'S005773' THEN
			'中行重庆沙坪坝支行'
			WHEN 'S005774' THEN
			'中信银行福州分行'
			WHEN 'N000322' THEN
			'大江北国资'
			WHEN 'N000323' THEN
			'南通新家园'
			WHEN 'S005775' THEN
			'重庆农商行南岸支行'
			WHEN 'S005776' THEN
			'重庆银行长寿支行'
			WHEN 'S005355' THEN
			'凯赛生物'
			WHEN 'N000282' THEN
			'集合企业'
			WHEN 'F000148' THEN
			'三峡库生态'
			WHEN 'M000023' THEN
			'梅州宝龙'
			WHEN 'C000401' THEN
			'曹县商都投资'
			WHEN 'W000288' THEN
			'完美世界'
			WHEN 'D000086' THEN
			'大族控股'
			WHEN 'C000403' THEN
			'北碚新城建设'
			WHEN 'Z001371' THEN
			'中信银行嵊州支行'
			WHEN 'S001084' THEN
			'旭杰科技'
			WHEN 'S001085' THEN
			'苏州农业融资担保'
			WHEN 'N000324' THEN
			'新港建发'
			WHEN 'S005356' THEN
			'嵊州交发'
			WHEN 'X000388' THEN
			'厦门轨道'
			WHEN 'S005777' THEN
			'绿城装饰'
			WHEN 'S005778' THEN
			'无锡蓝光置地'
			WHEN 'S005779' THEN
			'藕塘地产'
			WHEN 'S005780' THEN
			'正荣集团'
			WHEN 'S005781' THEN
			'淮安交投'
			WHEN 'S005782' THEN
			'泸州城投集团'
			WHEN 'S005783' THEN
			'山东公用集团'
			WHEN 'S005784' THEN
			'唐山冀新建安'
			WHEN 'S005785' THEN
			'云南交投'
			WHEN 'S005786' THEN
			'云投昆玉铁路'
			WHEN 'S005787' THEN
			'中财永煤投资'
			WHEN 'S005788' THEN
			'中恒国际'
			WHEN 'P000078' THEN
			'普洛斯中国'
			WHEN 'H000660' THEN
			'洪泽资产'
			WHEN 'Z001246' THEN
			'民生银行淮安分行'
			WHEN 'G000440' THEN
			'光明地产'
			WHEN 'P000079' THEN
			'彭水城投'
			WHEN 'Y000278' THEN
			'盛州集团'
			WHEN 'H000661' THEN
			'汉川汉融公司'
			WHEN 'S000911' THEN
			'昊华科技'
			WHEN 'J000577' THEN
			'吉恩镍业'
			WHEN 'Z000826' THEN
			'铁龙物流'
			WHEN 'S000552' THEN
			'山东广电网络'
			WHEN 'L000113' THEN
			'龙江银行'
			WHEN 'R000055' THEN
			'如东新天地'
			WHEN 'S000553' THEN
			'赛格股份'
			WHEN 'J000336' THEN
			'江钨控股集团'
			WHEN 'A000076' THEN
			'安宁发投'
			WHEN 'J000337' THEN
			'交行云南分行'
			WHEN 'A000081' THEN
			'金禾实业'
			WHEN 'X000228' THEN
			'新华联'
			WHEN 'Q000135' THEN
			'启迪科技'
			WHEN 'Q000138' THEN
			'少海发展集团'
			WHEN 'B000207' THEN
			'宝钢梅山'
			WHEN 'Z001525' THEN
			'中英人寿'
			WHEN 'G000310' THEN
			'格力地产'
			WHEN 'X000389' THEN
			'永业公司'
			WHEN 'L000235' THEN
			'金安城投'
			WHEN 'Z001372' THEN
			'中瑞实业'
			WHEN 'J000253' THEN
			'玖龙纸业(天津)'
			WHEN 'C000308' THEN
			'永晟实业'
			WHEN 'J000676' THEN
			'进贤城建'
			WHEN 'G000501' THEN
			'攀登开投'
			WHEN 'Z000923' THEN
			'中国人寿财险'
			WHEN 'Y000304' THEN
			'宜春农商行'
			WHEN 'L000114' THEN
			'辽宁日报传媒集团'
			WHEN 'A000077' THEN
			'铜陵示范园建投'
			WHEN 'F000088' THEN
			'龙洲股份'
			WHEN 'N000162' THEN
			'紫金投资'
			WHEN 'Y000399' THEN
			'云投担保'
			WHEN 'S001237' THEN
			'洲明科技'
			WHEN 'S001125' THEN
			'通融统筹'
			WHEN 'H000404' THEN
			'金海公有资产'
			WHEN 'S000667' THEN
			'沈阳机床'
			WHEN 'H000405' THEN
			'宋城集团'
			WHEN 'N000283' THEN
			'宁海农商行'
			WHEN 'N000284' THEN
			'伊金霍洛农商行'
			WHEN 'N000370' THEN
			'南威软件'
			WHEN 'Z001526' THEN
			'中银资产'
			WHEN 'A000184' THEN
			'中安商业保理'
			WHEN 'M000066' THEN
			'惠东投资'
			WHEN 'Z001247' THEN
			'兴港投资'
			WHEN 'A000136' THEN
			'阿拉善农商行'
			WHEN 'J000578' THEN
			'苏控集团'
			WHEN 'A000137' THEN
			'鞍钢工程'
			WHEN 'B000312' THEN
			'银河生物'
			WHEN 'N000285' THEN
			'宁波富邦'
			WHEN 'X000390' THEN
			'兴森科技'
			WHEN 'C000149' THEN
			'金龙建投集团'
			WHEN 'Z001595' THEN
			'招行西安分行'
			WHEN 'H000757' THEN
			'余杭城建'
			WHEN 'T000298' THEN
			'唐山建设'
			WHEN 'M000055' THEN
			'马来亚银行'
			WHEN 'Y000167' THEN
			'银河金汇'
			WHEN 'J000383' THEN
			'即墨旅游开发'
			WHEN 'Z001248' THEN
			'正源地产'
			WHEN 'X000335' THEN
			'新开发银行'
			WHEN 'Y000279' THEN
			'国资开发公司'
			WHEN 'Y000337' THEN
			'易事特'
			WHEN 'Y000338' THEN
			'扬州教投集团'
			WHEN 'S001126' THEN
			'巨野农商行'
			WHEN 'H000779' THEN
			'湘江新区农商行'
			WHEN 'B000313' THEN
			'路劲隽御'
			WHEN 'L000201' THEN
			'路劲基建'
			WHEN 'J000579' THEN
			'东宝城投'
			WHEN 'S000912' THEN
			'雅化集团'
			WHEN 'B000314' THEN
			'京东世贸'
			WHEN 'J000580' THEN
			'天目湖集团'
			WHEN 'S000913' THEN
			'上海物贸'
			WHEN 'Z001249' THEN
			'全聚德'
			WHEN 'B000315' THEN
			'宝塔实业'
			WHEN 'H000662' THEN
			'永亨银行'
			WHEN 'H000758' THEN
			'滨江投资'
			WHEN 'D000225' THEN
			'大连友谊'
			WHEN 'B000365' THEN
			'包头建投'
			WHEN 'G000502' THEN
			'毕节高新建投'
			WHEN 'S001086' THEN
			'上栗投资'
			WHEN 'Z001373' THEN
			'定海城建开发'
			WHEN 'M000045' THEN
			'马经发'
			WHEN 'S006157' THEN
			'海洋投资集团'
			WHEN 'J000581' THEN
			'武进绿建'
			WHEN 'G000441' THEN
			'高新产投'
			WHEN 'Z001250' THEN
			'现代牧业'
			WHEN 'Y000280' THEN
			'金川电子'
			WHEN 'J000582' THEN
			'江苏索普'
			WHEN 'S000914' THEN
			'配天投资'
			WHEN 'S000915' THEN
			'宝利来实业'
			WHEN 'X000416' THEN
			'西安高投'
			WHEN 'X000391' THEN
			'浠水凤翥'
			WHEN 'Z001374' THEN
			'农发行浠水县支行'
			WHEN 'H000907' THEN
			'唐人神控股'
			WHEN 'S001087' THEN
			'晋圣矿业'
			WHEN 'F000176' THEN
			'龙海农商行'
			WHEN 'Z001375' THEN
			'博山农商行'
			WHEN 'J000677' THEN
			'永钢集团'
			WHEN 'C000309' THEN
			'智谷投资'
			WHEN 'S001088' THEN
			'金财金鑫'
			WHEN 'S001089' THEN
			'新巨龙能源'
			WHEN 'L000134' THEN
			'连云港交通集团'
			WHEN 'Z000924' THEN
			'中国人寿'
			WHEN 'Z000925' THEN
			'平安产险'
			WHEN 'D000273' THEN
			'大唐山东发电'
			WHEN 'Q000161' THEN
			'青岛旅游集团'
			WHEN 'D000256' THEN
			'财金投资控股'
			WHEN 'Z001527' THEN
			'舟山金建投'
			WHEN 'J000678' THEN
			'江苏银行泗阳支行'
			WHEN 'X000392' THEN
			'匈牙利'
			WHEN 'X000213' THEN
			'新华保险'
			WHEN 'Z000901' THEN
			'中建六局土木'
			WHEN 'M000056' THEN
			'雨山城投'
			WHEN 'S000601' THEN
			'海通资产管理'
			WHEN 'Z000926' THEN
			'荣翔实业'
			WHEN 'T000198' THEN
			'胜利宾馆'
			WHEN 'G000311' THEN
			'null'
			WHEN 'A000206' THEN
			'皖能电力'
			WHEN 'Y000175' THEN
			'盐都交建'
			WHEN 'Z000941' THEN
			'巴南建设'
			WHEN 'J000391' THEN
			'济宁碳素集团'
			WHEN 'Q000086' THEN
			'临海公路'
			WHEN 'Z000942' THEN
			'嘉澳环保'
			WHEN 'J000808' THEN
			'冀银租赁'
			WHEN 'J000809' THEN
			'金东城建'
			WHEN 'S000983' THEN
			'乳山农商行'
			WHEN 'X000468' THEN
			'西安长安城开'
			WHEN 'G000300' THEN
			'贵州银行'
			WHEN 'S000623' THEN
			'山东物流集团'
			WHEN 'N000186' THEN
			'金港投资'
			WHEN 'L000317' THEN
			'兰溪城投'
			WHEN 'L000202' THEN
			'广宇高科'
			WHEN 'J000583' THEN
			'洪泽湖建投'
			WHEN 'H000663' THEN
			'清浦城投'
			WHEN 'Z001287' THEN
			'中民新能'
			WHEN 'J000606' THEN
			'云济投资'
			WHEN 'H000429' THEN
			'萧山农商行'
			WHEN 'L000298' THEN
			'龙南经开建投'
			WHEN 'G000604' THEN
			'广元园区创业开发'
			WHEN 'G000442' THEN
			'华银铝业'
			WHEN 'Z001528' THEN
			'荣晟环保'
			WHEN 'Z000943' THEN
			'中信银行西安分行'
			WHEN 'S000624' THEN
			'泾河集团'
			WHEN 'S001090' THEN
			'神舟旅游'
			WHEN 'Z001460' THEN
			'中泰钢业'
			WHEN 'Z001376' THEN
			'中信银行台州分行'
			WHEN 'S006140' THEN
			'联想保理'
			WHEN 'J000607' THEN
			'高淳经开'
			WHEN 'L000119' THEN
			'临沂城投集团'
			WHEN 'C000261' THEN
			'宸鸿科技'
			WHEN 'Y000281' THEN
			'悦达融资'
			WHEN 'G000443' THEN
			'长隆'
			WHEN 'L000203' THEN
			'立讯精密'
			WHEN 'B000443' THEN
			'金诚同达(上海)'
			WHEN 'G000444' THEN
			'国美控股集团'
			WHEN 'A000163' THEN
			'青阳农商行'
			WHEN 'H000470' THEN
			'湖南财信'
			WHEN 'M000025' THEN
			'茂名交投'
			WHEN 'W000136' THEN
			'蔡甸城投'
			WHEN 'C000310' THEN
			'宏烨实业'
			WHEN 'W000244' THEN
			'武钢有限'
			WHEN 'K000083' THEN
			'昆山城投'
			WHEN 'S001091' THEN
			'湖滨新城投资开发'
			WHEN 'Z001377' THEN
			'淄川农商行'
			WHEN 'S000916' THEN
			'奋达科技'
			WHEN 'S000602' THEN
			'威斯特车业'
			WHEN 'N000387' THEN
			'武夷新区建设'
			WHEN 'T000271' THEN
			'通泰投资'
			WHEN 'X000336' THEN
			'新路鑫'
			WHEN 'Y000282' THEN
			'云南建投'
			WHEN 'Z001251' THEN
			'中国国旅'
			WHEN 'Z001252' THEN
			'中国中免'
			WHEN 'S001092' THEN
			'马鞍山投集'
			WHEN 'S000603' THEN
			'上饶银行'
			WHEN 'Z000944' THEN
			'江山农商行'
			WHEN 'J000679' THEN
			'江苏开源投资'
			WHEN 'H000664' THEN
			'哈银金融'
			WHEN 'Z001253' THEN
			'株洲高科汽车'
			WHEN 'X000337' THEN
			'徐州博创'
			WHEN 'X000338' THEN
			'铜山国资经营'
			WHEN 'H000665' THEN
			'华夏银行上海自贸分行'
			WHEN 'H000759' THEN
			'娄底农商行'
			WHEN 'S001093' THEN
			'宿州新区建投'
			WHEN 'Z001378' THEN
			'中信资产管理'
			WHEN 'Z001529' THEN
			'中油资本'
			WHEN 'S001094' THEN
			'美晨生态'
			WHEN 'G000605' THEN
			'桂阳工业园建设开发'
			WHEN 'Z001379' THEN
			'国联水产'
			WHEN 'H000908' THEN
			'湖南担保'
			WHEN 'S001095' THEN
			'恒通化工'
			WHEN 'X000393' THEN
			'东兴公司'
			WHEN 'T000299' THEN
			'太和投资'
			WHEN 'Q000162' THEN
			'建设担保'
			WHEN 'S001301' THEN
			'上虞交通集团'
			WHEN 'S006145' THEN
			'中铁上海工程'
			WHEN 'J000584' THEN
			'康缘药业'
			WHEN 'S000917' THEN
			'胜握胜林业'
			WHEN 'G000445' THEN
			'广西德保铜矿' ELSE short_name
	END
	);

-- sql7
UPDATE qb_news_public_opinion
SET short_name = (
	CASE
			issuer_code
			WHEN 'X000339' THEN
			'新干城乡建投'
			WHEN 'J000585' THEN
			'九江银行新干支行'
			WHEN 'H000909' THEN
			'徽州农商行'
			WHEN 'S006160' THEN
			'信永中和南京'
			WHEN 'G000446' THEN
			'潮宏基'
			WHEN 'X000340' THEN
			'信利光电'
			WHEN 'P000080' THEN
			'建秋高科'
			WHEN 'D000194' THEN
			'德庆水电'
			WHEN 'T000272' THEN
			'泰州东部新城'
			WHEN 'Z001530' THEN
			'贵州茅台集团'
			WHEN 'X000394' THEN
			'新疆能源集团'
			WHEN 'S001096' THEN
			'伏泰科技'
			WHEN 'M000057' THEN
			'岷东开发'
			WHEN 'S000918' THEN
			'飞马国际'
			WHEN 'G000447' THEN
			'古蔺县国有资产经营'
			WHEN 'S000919' THEN
			'一体集团'
			WHEN 'Z001380' THEN
			'招商公路'
			WHEN 'G000503' THEN
			'大埔农商行'
			WHEN 'F000149' THEN
			'阜新银行营口分行'
			WHEN 'L000204' THEN
			'连云港城建'
			WHEN 'J000586' THEN
			'金坛投控'
			WHEN 'H000666' THEN
			'阿波罗控股'
			WHEN 'Y000283' THEN
			'阳光股份'
			WHEN 'H000667' THEN
			'华菱钢铁'
			WHEN 'S000920' THEN
			'十堰城投'
			WHEN 'H000668' THEN
			'吴兴农商行'
			WHEN 'J000587' THEN
			'南通农商行'
			WHEN 'W000245' THEN
			'洪山城投'
			WHEN 'G000504' THEN
			'国开金融'
			WHEN 'C000311' THEN
			'临江田园'
			WHEN 'Z001381' THEN
			'中国电建新能源'
			WHEN 'P000088' THEN
			'蒲城投资'
			WHEN 'M000058' THEN
			'民生金融租赁'
			WHEN 'N000325' THEN
			'南通运通'
			WHEN 'B000316' THEN
			'神州泰岳'
			WHEN 'G000448' THEN
			'剑江控股'
			WHEN 'Y000400' THEN
			'颍上慎祥实业'
			WHEN 'Q000163' THEN
			'泉州金融控股集团'
			WHEN 'L000236' THEN
			'乐视影业'
			WHEN 'G000606' THEN
			'好莱客'
			WHEN 'S001302' THEN
			'昔阳农商行'
			WHEN 'Y000401' THEN
			'意大利存贷款公司'
			WHEN 'S001097' THEN
			'左权农商行'
			WHEN 'C000312' THEN
			'重庆日报'
			WHEN 'Z001382' THEN
			'楚元集团'
			WHEN 'S005789' THEN
			'潞安财务'
			WHEN 'S005790' THEN
			'邢农商村镇行'
			WHEN 'S005791' THEN
			'任县农商行'
			WHEN 'S005792' THEN
			'本溪农信社'
			WHEN 'S001303' THEN
			'同煤新能源'
			WHEN 'N000286' THEN
			'南京紫金'
			WHEN 'Z001254' THEN
			'章丘国资'
			WHEN 'H000669' THEN
			'阜阳投资'
			WHEN 'Z001255' THEN
			'北方稀土'
			WHEN 'G000449' THEN
			'圣济堂'
			WHEN 'H000910' THEN
			'屯溪农商行'
			WHEN 'C000262' THEN
			'赤壁城投'
			WHEN 'A000207' THEN
			'安徽建投'
			WHEN 'X000450' THEN
			'新昌园区投发'
			WHEN 'Z001383' THEN
			'定海城乡建设'
			WHEN 'S000921' THEN
			'新文化'
			WHEN 'B000317' THEN
			'白城城投'
			WHEN 'C000263' THEN
			'大足城投'
			WHEN 'L000237' THEN
			'朗姿股份'
			WHEN 'T000300' THEN
			'国投津能'
			WHEN 'S001098' THEN
			'易鑫融租'
			WHEN 'G000505' THEN
			'鲁青资产运营'
			WHEN 'X000341' THEN
			'长盈投资'
			WHEN 'N000287' THEN
			'南京银行上海分行'
			WHEN 'Z001567' THEN
			'中煤地质集团'
			WHEN 'Z001568' THEN
			'中煤地质总局'
			WHEN 'X000395' THEN
			'信宜农信社'
			WHEN 'F000177' THEN
			'南平农商行'
			WHEN 'T000301' THEN
			'名轩投资'
			WHEN 'Z001384' THEN
			'中行湘乡支行'
			WHEN 'J000588' THEN
			'汇鸿集团'
			WHEN 'H000670' THEN
			'云发集团'
			WHEN 'S001099' THEN
			'双峰科技'
			WHEN 'Q000164' THEN
			'青岛水务'
			WHEN 'S001100' THEN
			'中方财团'
			WHEN 'B000366' THEN
			'宝应投资'
			WHEN 'X000396' THEN
			'兴业银行扬州分行'
			WHEN 'C000313' THEN
			'兴蜀投资'
			WHEN 'P000089' THEN
			'浦银金融租赁'
			WHEN 'Z001569' THEN
			'浙江机场集团'
			WHEN 'S005793' THEN
			'科前生物'
			WHEN 'H000911' THEN
			'宁晋农商行'
			WHEN 'S001304' THEN
			'西咸集团'
			WHEN 'S001305' THEN
			'交能集团'
			WHEN 'Z000648' THEN
			'重庆两江集团'
			WHEN 'S001306' THEN
			'嵊州城投'
			WHEN 'Z001531' THEN
			'民生银行绍兴分行'
			WHEN 'L000247' THEN
			'沂山实业'
			WHEN 'N000288' THEN
			'百顺建设'
			WHEN 'W000223' THEN
			'文登蓝海'
			WHEN 'L000205' THEN
			'辽宁农信社'
			WHEN 'Z001256' THEN
			'山水集团'
			WHEN 'L000206' THEN
			'国机精工'
			WHEN 'S000922' THEN
			'浦东开发集团'
			WHEN 'E000016' THEN
			'益通路桥'
			WHEN 'J000782' THEN
			'新佳园控股'
			WHEN 'D000268' THEN
			'大唐环境'
			WHEN 'H000671' THEN
			'恒生中国上海分行'
			WHEN 'Z001257' THEN
			'恒大集团'
			WHEN 'D000195' THEN
			'东海瑞京'
			WHEN 'M000075' THEN
			'梦百合'
			WHEN 'B000420' THEN
			'京禹顺环保'
			WHEN 'X000451' THEN
			'湘潭城发集团'
			WHEN 'J000589' THEN
			'万安农商行'
			WHEN 'C000389' THEN
			'秀山城建'
			WHEN 'C000390' THEN
			'九黎旅游'
			WHEN 'Y000402' THEN
			'颐和黄金'
			WHEN 'Y000403' THEN
			'毅德控股'
			WHEN 'Y000404' THEN
			'扬州鼎盛'
			WHEN 'T000344' THEN
			'泰禾投资'
			WHEN 'Q000165' THEN
			'融海资本'
			WHEN 'N000371' THEN
			'协鑫新能源'
			WHEN 'M000084' THEN
			'美的控股'
			WHEN 'F000210' THEN
			'奥华集团'
			WHEN 'H000912' THEN
			'花样年控股'
			WHEN 'S001307' THEN
			'彩生活科技'
			WHEN 'H000913' THEN
			'红河发展'
			WHEN 'H000914' THEN
			'华英禽业'
			WHEN 'H000915' THEN
			'河南机械装备'
			WHEN 'H000916' THEN
			'宝泰隆集团'
			WHEN 'G000607' THEN
			'国购产业'
			WHEN 'H000917' THEN
			'华源物业'
			WHEN 'H000918' THEN
			'海信集团'
			WHEN 'S001101' THEN
			'嘉祥农商行'
			WHEN 'Z001385' THEN
			'恒升村镇行'
			WHEN 'G000608' THEN
			'国广传媒发展'
			WHEN 'G000609' THEN
			'顺控集团'
			WHEN 'C000391' THEN
			'西汇投资'
			WHEN 'B000421' THEN
			'北大资产'
			WHEN 'G000610' THEN
			'金凤凰'
			WHEN 'S001330' THEN
			'嘉定新城'
			WHEN 'Z001386' THEN
			'诸暨村镇行'
			WHEN 'M000088' THEN
			'郑蒲港保税区投资'
			WHEN 'W000224' THEN
			'瓮安物资供应'
			WHEN 'G000450' THEN
			'贵溪控股'
			WHEN 'H000292' THEN
			'杭州金投'
			WHEN 'L000238' THEN
			'舜发城投'
			WHEN 'S001102' THEN
			'吴中国太'
			WHEN 'M000059' THEN
			'蒙自市城投'
			WHEN 'Z001387' THEN
			'浙报控股'
			WHEN 'S001103' THEN
			'金证股份'
			WHEN 'B000367' THEN
			'北京农投'
			WHEN 'J000590' THEN
			'延安必康'
			WHEN 'C000264' THEN
			'重庆燃气'
			WHEN 'X000342' THEN
			'港铁公司'
			WHEN 'Z001258' THEN
			'中国城市建设'
			WHEN 'Y000117' THEN
			'阳江城投'
			WHEN 'S001238' THEN
			'汇融农合行'
			WHEN 'G000223' THEN
			'广发银行阳江分行'
			WHEN 'G000568' THEN
			'广安农商行'
			WHEN 'S000409' THEN
			'上海南房集团'
			WHEN 'G000224' THEN
			'广发银行上海分行'
			WHEN 'N000326' THEN
			'泰瑞制药'
			WHEN 'X000397' THEN
			'新研股份'
			WHEN 'H000760' THEN
			'淮南山南开发'
			WHEN 'H000761' THEN
			'良渚文化城'
			WHEN 'F000150' THEN
			'分宜城投'
			WHEN 'M000046' THEN
			'牧原股份'
			WHEN 'Y000284' THEN
			'永州开建投'
			WHEN 'Y000285' THEN
			'阳光保险'
			WHEN 'D000226' THEN
			'都江堰新建投'
			WHEN 'H000762' THEN
			'五江轻化'
			WHEN 'G000506' THEN
			'国药融资租赁'
			WHEN 'C000314' THEN
			'九联投资'
			WHEN 'T000345' THEN
			'广宇发展'
			WHEN 'S001104' THEN
			'四川发展融资'
			WHEN 'C000315' THEN
			'常州产投集团'
			WHEN 'G000507' THEN
			'鑫鸿投资'
			WHEN 'H000763' THEN
			'日升科技'
			WHEN 'W000246' THEN
			'欣导创业'
			WHEN 'L000239' THEN
			'灵宝国资'
			WHEN 'A000164' THEN
			'怀宁城投'
			WHEN 'H000764' THEN
			'黄梅城投'
			WHEN 'G000508' THEN
			'贺州交投'
			WHEN 'S001105' THEN
			'苏宁置业集团'
			WHEN 'S000573' THEN
			'双胞胎集团'
			WHEN 'T000375' THEN
			'天津信唐'
			WHEN 'O000001' THEN
			'欧派家居'
			WHEN 'Z001532' THEN
			'中关村科技租赁'
			WHEN 'S001308' THEN
			'联易融保理'
			WHEN 'S001309' THEN
			'英科医疗'
			WHEN 'A000198' THEN
			'安顺工投'
			WHEN 'H000412' THEN
			'河南机场集团'
			WHEN 'S005794' THEN
			'工行合肥分行'
			WHEN 'Y000155' THEN
			'银川高新公司'
			WHEN 'Z001259' THEN
			'赛纳打印'
			WHEN 'W000225' THEN
			'皖江金租'
			WHEN 'N000187' THEN
			'黄河集团'
			WHEN 'J000810' THEN
			'吉林水务集团'
			WHEN 'A000138' THEN
			'广德农商行'
			WHEN 'A000172' THEN
			'乐行城建'
			WHEN 'Y000156' THEN
			'陶都城发投'
			WHEN 'Z001533' THEN
			'山高金融'
			WHEN 'D000257' THEN
			'大连万达集团'
			WHEN 'B000422' THEN
			'博实乐教育'
			WHEN 'D000258' THEN
			'德信中国'
			WHEN 'H000919' THEN
			'宏华集团'
			WHEN 'J000783' THEN
			'景瑞控股'
			WHEN 'R000074' THEN
			'融信中国'
			WHEN 'W000281' THEN
			'武夷山公司'
			WHEN 'Z001534' THEN
			'粤港湾区控股'
			WHEN 'B000423' THEN
			'滨海城发'
			WHEN 'Z001535' THEN
			'中油燃气'
			WHEN 'D000259' THEN
			'361度国际'
			WHEN 'N000372' THEN
			'南海控股'
			WHEN 'Z001536' THEN
			'太平控股'
			WHEN 'F000211' THEN
			'复星国际'
			WHEN 'H000920' THEN
			'健合国际控股'
			WHEN 'H000921' THEN
			'海南交管'
			WHEN 'M000085' THEN
			'MI能源'
			WHEN 'H000922' THEN
			'华为投资'
			WHEN 'Z001537' THEN
			'中金国际'
			WHEN 'A000208' THEN
			'阿里巴巴集团'
			WHEN 'A000209' THEN
			'爱点击'
			WHEN 'A000210' THEN
			'安东油田服务'
			WHEN 'B000424' THEN
			'宝尊商务'
			WHEN 'D000260' THEN
			'当代国际投资'
			WHEN 'D000261' THEN
			'当代置业'
			WHEN 'F000212' THEN
			'阜丰集团'
			WHEN 'G000611' THEN
			'广盈投资'
			WHEN 'H000923' THEN
			'弘阳地产'
			WHEN 'L000299' THEN
			'龙光集团'
			WHEN 'R000075' THEN
			'瑞安房地产'
			WHEN 'S001310' THEN
			'舜宇光学科技'
			WHEN 'T000346' THEN
			'腾讯控股'
			WHEN 'X000452' THEN
			'新奥能源'
			WHEN 'Z001538' THEN
			'中国奥园'
			WHEN 'Z001539' THEN
			'中国海外宏洋'
			WHEN 'Z001540' THEN
			'中国再保险'
			WHEN 'Z001541' THEN
			'中骏集团'
			WHEN 'W000282' THEN
			'万国数据'
			WHEN 'W000283' THEN
			'微创医疗'
			WHEN 'W000284' THEN
			'维信金科'
			WHEN 'W000285' THEN
			'蔚来汽车'
			WHEN 'W000286' THEN
			'长江建投'
			WHEN 'X000453' THEN
			'西安航空城集团'
			WHEN 'X000454' THEN
			'西王特钢'
			WHEN 'X000455' THEN
			'锡发投资'
			WHEN 'X000456' THEN
			'锡汇海外壹号'
			WHEN 'X000457' THEN
			'香港保融'
			WHEN 'X000458' THEN
			'香港一联'
			WHEN 'X000459' THEN
			'维尔京群岛翔宇'
			WHEN 'X000460' THEN
			'携程旅行网'
			WHEN 'X000461' THEN
			'新浪'
			WHEN 'X000462' THEN
			'鑫港国际'
			WHEN 'Y000405' THEN
			'阳光保险'
			WHEN 'Y000406' THEN
			'一嗨汽车'
			WHEN 'Y000407' THEN
			'易大宗'
			WHEN 'Y000408' THEN
			'易居企业'
			WHEN 'W000233' THEN
			'温岭钱江投资经营'
			WHEN 'N000388' THEN
			'宁东新城开发'
			WHEN 'J000623' THEN
			'安吉交投'
			WHEN 'H000672' THEN
			'恒安投资'
			WHEN 'A000139' THEN
			'庐江农商行'
			WHEN 'W000226' THEN
			'万泽集团'
			WHEN 'T000273' THEN
			'天津轨道'
			WHEN 'B000342' THEN
			'信威集团'
			WHEN 'H000673' THEN
			'秋林集团'
			WHEN 'X000463' THEN
			'阿克苏农商行'
			WHEN 'Y000409' THEN
			'远景集团'
			WHEN 'H000924' THEN
			'九洲集团'
			WHEN 'G000612' THEN
			'翔鹭钨业'
			WHEN 'Z001542' THEN
			'正荣地产'
			WHEN 'Z001543' THEN
			'中飞租赁'
			WHEN 'Z001544' THEN
			'国储能源'
			WHEN 'Z001545' THEN
			'中国环保科技'
			WHEN 'Z001546' THEN
			'浙能锦江环境'
			WHEN 'Z001547' THEN
			'中国人寿'
			WHEN 'H000806' THEN
			'皇氏集团'
			WHEN 'Z001548' THEN
			'嵘燊集团'
			WHEN 'Z001549' THEN
			'中国森林'
			WHEN 'H000925' THEN
			'湘江集团'
			WHEN 'Z001550' THEN
			'天然气集团'
			WHEN 'Z001551' THEN
			'中国医疗技术'
			WHEN 'Z001552' THEN
			'中国'
			WHEN 'Z001553' THEN
			'中瑞实业集团'
			WHEN 'Z001554' THEN
			'中铁工程'
			WHEN 'Z001555' THEN
			'中毅控股'
			WHEN 'B000425' THEN
			'北京环卫'
			WHEN 'L000300' THEN
			'绿景中国地产'
			WHEN 'G000613' THEN
			'广东国际信托投资(香港)'
			WHEN 'H000926' THEN
			'瀚瑞国际'
			WHEN 'H000927' THEN
			'弘阳集团'
			WHEN 'S001311' THEN
			'山东海运'
			WHEN 'S001312' THEN
			'香港上港'
			WHEN 'S001313' THEN
			'香港宿迁经开'
			WHEN 'H000928' THEN
			'江干城建'
			WHEN 'B000426' THEN
			'百度网络技术'
			WHEN 'B000427' THEN
			'哔哩哔哩'
			WHEN 'D000262' THEN
			'大发地产'
			WHEN 'D000263' THEN
			'东旭启明星'
			WHEN 'Y000410' THEN
			'东阳光药'
			WHEN 'F000213' THEN
			'福建国际信托'
			WHEN 'G000614' THEN
			'广东国际信托'
			WHEN 'G000615' THEN
			'铜仁交旅集团'
			WHEN 'G000616' THEN
			'国美零售'
			WHEN 'G000617' THEN
			'国瑞置业'
			WHEN 'G000618' THEN
			'国泰国际'
			WHEN 'H000929' THEN
			'海隆控股'
			WHEN 'H000930' THEN
			'合众人寿'
			WHEN 'H000931' THEN
			'和骏顺泽'
			WHEN 'H000932' THEN
			'恒鼎实业'
			WHEN 'H000933' THEN
			'华住酒店'
			WHEN 'G000619' THEN
			'欢聚时代'
			WHEN 'J000784' THEN
			'佳源国际控股'
			WHEN 'J000785' THEN
			'金胜国际'
			WHEN 'J000786' THEN
			'晶科能源'
			WHEN 'J000787' THEN
			'巨星医疗控股'
			WHEN 'J000788' THEN
			'峻煌生化'
			WHEN 'L000301' THEN
			'来宝集团'
			WHEN 'H000807' THEN
			'宾州农商行'
			WHEN 'L000302' THEN
			'力高集团'
			WHEN 'L000303' THEN
			'绿龙煤气'
			WHEN 'L000304' THEN
			'绿旗控股'
			WHEN 'L000305' THEN
			'绿叶制药'
			WHEN 'M000086' THEN
			'东方生物技术股份'
			WHEN 'M000087' THEN
			'陌陌'
			WHEN 'P000109' THEN
			'普洛斯'
			WHEN 'Q000166' THEN
			'奇虎360科技'
			WHEN 'Q000167' THEN
			'趣店'
			WHEN 'S001314' THEN
			'山东海运融资'
			WHEN 'S001315' THEN
			'尚德电力'
			WHEN 'S001316' THEN
			'盛大科技'
			WHEN 'S001317' THEN
			'时代中国控股'
			WHEN 'T000347' THEN
			'天合光能'
			WHEN 'T000348' THEN
			'天誉置业'
			WHEN 'Z001556' THEN
			'中行双鸭山分行'
			WHEN 'Z000835' THEN
			'重庆供销集团'
			WHEN 'A000165' THEN
			'安岳农商行'
			WHEN 'J000591' THEN
			'吉林国投'
			WHEN 'F000151' THEN
			'福州国资'
			WHEN 'Q000075' THEN
			'滨海投资'
			WHEN 'H000765' THEN
			'含山城投'
			WHEN 'K000034' THEN
			'深喀投资'
			WHEN 'D000116' THEN
			'黄海港务'
			WHEN 'G000509' THEN
			'宏大爆破'
			WHEN 'S001106' THEN
			'遂溪农商行'
			WHEN 'G000510' THEN
			'广宁农商行'
			WHEN 'D000128' THEN
			'戴姆勒'
			WHEN 'Z000945' THEN
			'郑州煤电'
			WHEN 'W000234' THEN
			'文投控股'
			WHEN 'Z001260' THEN
			'诸暨城东城建'
			WHEN 'B000318' THEN
			'保利南方'
			WHEN 'Z001261' THEN
			'兵工物资集团'
			WHEN 'Z001262' THEN
			'肇庆高新建投'
			WHEN 'S000923' THEN
			'榆次农商行'
			WHEN 'C000434' THEN
			'麓谷建设'
			WHEN 'H000996' THEN
			'西湖文旅'
			WHEN 'T000376' THEN
			'新城投资'
			WHEN 'Z001388' THEN
			'中国航发'
			WHEN 'S001127' THEN
			'孝义农商行'
			WHEN 'G000635' THEN
			'广投能源'
			WHEN 'G000511' THEN
			'广西荣和'
			WHEN 'S001427' THEN
			'裕城建设'
			WHEN 'L000248' THEN
			'凉山农商行'
			WHEN 'X000504' THEN
			'新昌产业园'
			WHEN 'G000665' THEN
			'华荣实业'
			WHEN 'H000674' THEN
			'惠博普'
			WHEN 'Z001263' THEN
			'中建六局'
			WHEN 'X000343' THEN
			'国统股份'
			WHEN 'D000196' THEN
			'东北电气'
			WHEN 'S000924' THEN
			'苏州高经'
			WHEN 'B000319' THEN
			'华融基础'
			WHEN 'J000592' THEN
			'江西港建'
			WHEN 'B000320' THEN
			'京运通'
			WHEN 'W000227' THEN
			'硚口国资'
			WHEN 'N000289' THEN
			'银星能源'
			WHEN 'Y000286' THEN
			'阳煤化工'
			WHEN 'S000925' THEN
			'华虹计通'
			WHEN 'Z001264' THEN
			'中水远洋'
			WHEN 'S000926' THEN
			'山西路桥'
			WHEN 'J000593' THEN
			'金奥国际'
			WHEN 'J000594' THEN
			'京诚投资'
			WHEN 'T000349' THEN
			'太平石化金融租赁'
			WHEN 'C000265' THEN
			'巴源建设'
			WHEN 'C000150' THEN
			'金禹水利'
			WHEN 'J000789' THEN
			'建信投资'
			WHEN 'S001318' THEN
			'苏州资管'
			WHEN 'Z001389' THEN
			'钟祥城投'
			WHEN 'S000668' THEN
			'玖龙海产'
			WHEN 'Z001390' THEN
			'万云交投'
			WHEN 'A000225' THEN
			'null'
			WHEN 'A000226' THEN
			'null'
			WHEN 'A000227' THEN
			'null'
			WHEN 'B000491' THEN
			'null'
			WHEN 'C000435' THEN
			'null'
			WHEN 'D000284' THEN
			'null'
			WHEN 'D000139' THEN
			'大同证券'
			WHEN 'E000023' THEN
			'null'
			WHEN 'I000001' THEN
			'null'
			WHEN 'I000002' THEN
			'null'
			WHEN 'I000003' THEN
			'null'
			WHEN 'K000097' THEN
			'null'
			WHEN 'K000098' THEN
			'null'
			WHEN 'L000331' THEN
			'null'
			WHEN 'L000332' THEN
			'null'
			WHEN 'L000333' THEN
			'null'
			WHEN 'N000405' THEN
			'null'
			WHEN 'S001428' THEN
			'null'
			WHEN 'S001429' THEN
			'null'
			WHEN 'S001430' THEN
			'null'
			WHEN 'S001431' THEN
			'null'
			WHEN 'T000377' THEN
			'null'
			WHEN 'T000378' THEN
			'null'
			WHEN 'T000379' THEN
			'null'
			WHEN 'V000001' THEN
			'null'
			WHEN 'A000228' THEN
			'null'
			WHEN 'A000229' THEN
			'null'
			WHEN 'A000230' THEN
			'null'
			WHEN 'A000231' THEN
			'null'
			WHEN 'Z001557' THEN
			'哈尔斯'
			WHEN 'H000934' THEN
			'杭州湾投资发展集团'
			WHEN 'B000492' THEN
			'null'
			WHEN 'B000493' THEN
			'百世物流'
			WHEN 'B000494' THEN
			'null'
			WHEN 'B000495' THEN
			'波司登'
			WHEN 'D000285' THEN
			'null'
			WHEN 'D000286' THEN
			'德祥地产'
			WHEN 'D000287' THEN
			'第一太平'
			WHEN 'D000288' THEN
			'电视广播'
			WHEN 'N000373' THEN
			'派雷斯特'
			WHEN 'F000233' THEN
			'富邦金融'
			WHEN 'F000234' THEN
			'null'
			WHEN 'F000235' THEN
			'富卫'
			WHEN 'G000666' THEN
			'港灯电力投资'
			WHEN 'G000667' THEN
			'唯品会'
			WHEN 'G000668' THEN
			'null'
			WHEN 'G000669' THEN
			'null'
			WHEN 'G000670' THEN
			'国泰航空'
			WHEN 'N000327' THEN
			'嘉陵发展'
			WHEN 'H000997' THEN
			'海天国际'
			WHEN 'H000998' THEN
			'null'
			WHEN 'H000999' THEN
			'null'
			WHEN 'H001000' THEN
			'浩沙国际'
			WHEN 'H001001' THEN
			'恒隆集团'
			WHEN 'H001002' THEN
			'汇丰控股'
			WHEN 'S001107' THEN
			'五莲农商行'
			WHEN 'J000848' THEN
			'null'
			WHEN 'J000849' THEN
			'null'
			WHEN 'J000850' THEN
			'null'
			WHEN 'T000199' THEN
			'凤城河建设'
			WHEN 'Y000176' THEN
			'营口天瑞水泥'
			WHEN 'K000099' THEN
			'null'
			WHEN 'L000334' THEN
			'丽新国际'
			WHEN 'L000335' THEN
			'null'
			WHEN 'L000336' THEN
			'联合集团'
			WHEN 'L000337' THEN
			'null'
			WHEN 'M000092' THEN
			'美国高通'
			WHEN 'M000093' THEN
			'明发集团'
			WHEN 'M000094' THEN
			'null'
			WHEN 'P000116' THEN
			'null'
			WHEN 'Q000189' THEN
			'null'
			WHEN 'R000086' THEN
			'瑞安建业'
			WHEN 'S001432' THEN
			'null'
			WHEN 'S001433' THEN
			'新潮能源'
			WHEN 'S001434' THEN
			'商业'
			WHEN 'S001435' THEN
			'尚乘集团'
			WHEN 'S001436' THEN
			'null'
			WHEN 'S001437' THEN
			'null'
			WHEN 'T000380' THEN
			'null'
			WHEN 'T000381' THEN
			'太平洋航运'
			WHEN 'P000045' THEN
			'邳州交通'
			WHEN 'W000305' THEN
			'null'
			WHEN 'W000306' THEN
			'药明康德'
			WHEN 'S000625' THEN
			'苏州第壹制药'
			WHEN 'S001239' THEN
			'前海建合'
			WHEN 'X000505' THEN
			'null'
			WHEN 'X000506' THEN
			'null'
			WHEN 'X000507' THEN
			'交易及'
			WHEN 'X000508' THEN
			'俊发地产'
			WHEN 'X000509' THEN
			'null'
			WHEN 'X000510' THEN
			'香港中华煤气'
			WHEN 'X000511' THEN
			'携程商务'
			WHEN 'X000512' THEN
			'新昌集团控股'
			WHEN 'X000513' THEN
			'新濠国际发展'
			WHEN 'X000514' THEN
			'新加坡'
			WHEN 'X000515' THEN
			'信德集团'
			WHEN 'X000516' THEN
			'null'
			WHEN 'Y000441' THEN
			'null'
			WHEN 'Y000442' THEN
			'null'
			WHEN 'A000090' THEN
			'天润化学'
			WHEN 'M000030' THEN
			'民生加银资管'
			WHEN 'Y000443' THEN
			'null'
			WHEN 'Y000444' THEN
			'null'
			WHEN 'Y000445' THEN
			'英皇国际'
			WHEN 'Y000446' THEN
			'远东发展'
			WHEN 'Y000447' THEN
			'null'
			WHEN 'Z001699' THEN
			'渣打集团'
			WHEN 'Z001700' THEN
			'爪哇控股'
			WHEN 'Z001701' THEN
			'null'
			WHEN 'Z001702' THEN
			'null'
			WHEN 'Z001703' THEN
			'资本策略'
			WHEN 'Z000946' THEN
			'环太湖经投'
			WHEN 'X000216' THEN
			'西安草堂'
			WHEN 'N000389' THEN
			'栖霞科技产业'
			WHEN 'X000477' THEN
			'襄江国资'
			WHEN 'N000188' THEN
			'六合路桥建设'
			WHEN 'G000451' THEN
			'贵州广电'
			WHEN 'D000197' THEN
			'新世纪科教'
			WHEN 'X000344' THEN
			'欣捷集团'
			WHEN 'N000290' THEN
			'市北新城'
			WHEN 'B000321' THEN
			'波兰'
			WHEN 'B000322' THEN
			'渤海钢铁'
			WHEN 'B000323' THEN
			'中关村'
			WHEN 'N000291' THEN
			'浦口交通集团'
			WHEN 'G000452' THEN
			'公安城投'
			WHEN 'F000152' THEN
			'阜宁自来水'
			WHEN 'P000081' THEN
			'润民水务'
			WHEN 'S000927' THEN
			'胥口建设'
			WHEN 'N000374' THEN
			'宁波水务集团'
			WHEN 'J000341' THEN
			'中南建设'
			WHEN 'L000306' THEN
			'泸州老窖'
			WHEN 'N000380' THEN
			'雪窦开投集团'
			WHEN 'C000399' THEN
			'楚昌投资'
			WHEN 'X000217' THEN
			'徐州申鑫建材'
			WHEN 'S006152' THEN
			'前沿生物'
			WHEN 'F000153' THEN
			'威立雅'
			WHEN 'Z001265' THEN
			'中天科技'
			WHEN 'X000345' THEN
			'西安国航发展公司'
			WHEN 'Y000287' THEN
			'颐和地产'
			WHEN 'G000453' THEN
			'靖远煤电'
			WHEN 'Z001266' THEN
			'张家界'
			WHEN 'H000675' THEN
			'恒盛地产'
			WHEN 'Y000305' THEN
			'水浒城建'
			WHEN 'J000595' THEN
			'正荣集团'
			WHEN 'Z001313' THEN
			'农行郓城县支行'
			WHEN 'Y000448' THEN
			'悦达保理'
			WHEN 'S001319' THEN
			'上海上报资管'
			WHEN 'T000302' THEN
			'顺昌投资'
			WHEN 'G000512' THEN
			'新东观建投'
			WHEN 'Z001558' THEN
			'中原航空租赁'
			WHEN 'H000935' THEN
			'江苏海鸿集团'
			WHEN 'F000178' THEN
			'丰都国资'
			WHEN 'J000680' THEN
			'佳通轮胎'
			WHEN 'Y000339' THEN
			'永鼎集团'
			WHEN 'Y000411' THEN
			'岳阳城投集团'
			WHEN 'Z001704' THEN
			'农行盐城分行'
			WHEN 'Z001391' THEN
			'邹城利民'
			WHEN 'P000090' THEN
			'彭山发展'
			WHEN 'H000766' THEN
			'图南'
			WHEN 'G000671' THEN
			'光大永明人寿'
			WHEN 'Z001267' THEN
			'正兴隆房地产(深圳)'
			WHEN 'H000676' THEN
			'城际铁路'
			WHEN 'T000274' THEN
			'红日药业'
			WHEN 'H000677' THEN
			'许都农商行'
			WHEN 'Z001268' THEN
			'华峰化学'
			WHEN 'J000596' THEN
			'金鹰'
			WHEN 'S001108' THEN
			'上海世茂国际广场'
			WHEN 'N000328' THEN
			'南陵建投'
			WHEN 'H000767' THEN
			'徽商银行南陵支行'
			WHEN 'N000329' THEN
			'江宁交建'
			WHEN 'Y000288' THEN
			'兴宜建投'
			WHEN 'Z001269' THEN
			'石化机械'
			WHEN 'H000678' THEN
			'中盛投资'
			WHEN 'Z001270' THEN
			'中国康富'
			WHEN 'H000864' THEN
			'海能达'
			WHEN 'G000454' THEN
			'番禺信投'
			WHEN 'X000346' THEN
			'高新地产'
			WHEN 'G000455' THEN
			'高邮经济发展'
			WHEN 'Z001271' THEN
			'中珠集团'
			WHEN 'Z001272' THEN
			'中信银行南通分行'
			WHEN 'X000398' THEN
			'新经开'
			WHEN 'A000167' THEN
			'爱尔医疗'
			WHEN 'S001109' THEN
			'润达医疗'
			WHEN 'Z001392' THEN
			'中兵投资'
			WHEN 'D000198' THEN
			'都城伟业'
			WHEN 'B000324' THEN
			'博天环境'
			WHEN 'Y000289' THEN
			'滇中产业发展集团'
			WHEN 'Z001273' THEN
			'蒙牛乳业'
			WHEN 'B000325' THEN
			'保利协鑫能源'
			WHEN 'Z001274' THEN
			'格力电器'
			WHEN 'B000326' THEN
			'新智认知'
			WHEN 'J000597' THEN
			'汇恒置业'
			WHEN 'Z001275' THEN
			'振华石油'
			WHEN 'G000456' THEN
			'复兴行'
			WHEN 'S000928' THEN
			'深国投房地产'
			WHEN 'Z000836' THEN
			'光大银行武汉分行'
			WHEN 'L000240' THEN
			'null'
			WHEN 'J000624' THEN
			'晋中银行'
			WHEN 'A000211' THEN
			'中安金融'
			WHEN 'B000368' THEN
			'新宇建投'
			WHEN 'S001355' THEN
			'新北洋'
			WHEN 'Y000348' THEN
			'永兴荣鹏金属'
			WHEN 'X000410' THEN
			'丰达合金科技'
			WHEN 'H000808' THEN
			'中铁五新钢模'
			WHEN 'H000809' THEN
			'金海集团'
			WHEN 'H000810' THEN
			'广信科技'
			WHEN 'C000338' THEN
			'郴州雄风'
			WHEN 'C000339' THEN
			'凯瑞重工'
			WHEN 'L000308' THEN
			'兰州建投'
			WHEN 'N000375' THEN
			'武夷集团'
			WHEN 'S001320' THEN
			'晶瑞股份'
			WHEN 'Z001559' THEN
			'郑州供水'
			WHEN 'N000376' THEN
			'恒都房产'
			WHEN 'N000377' THEN
			'宋都房产'
			WHEN 'X000464' THEN
			'兴证国际'
			WHEN 'X000190' THEN
			'襄阳高新国资'
			WHEN 'A000166' THEN
			'当涂经开区建投'
			WHEN 'A000168' THEN
			'霍山农商行'
			WHEN 'W000287' THEN
			'惠山开发'
			WHEN 'X000347' THEN
			'喀什农商行'
			WHEN 'S000929' THEN
			'聊城润昌农商行'
			WHEN 'S000930' THEN
			'陕西燃气集团'
			WHEN 'R000056' THEN
			'如皋经开'
			WHEN 'H000679' THEN
			'雨花经开'
			WHEN 'R000057' THEN
			'瑞金城投'
			WHEN 'Z001276' THEN
			'雨润集团'
			WHEN 'Z001277' THEN
			'北方工业'
			WHEN 'J000598' THEN
			'罗家桥港发展'
			WHEN 'T000275' THEN
			'优联集团'
			WHEN 'H000680' THEN
			'金融中心'
			WHEN 'Z001278' THEN
			'诸暨国资'
			WHEN 'Z001279' THEN
			'达华智能'
			WHEN 'C000392' THEN
			'环球融创'
			WHEN 'A000212' THEN
			'肥东农商行'
			WHEN 'S000931' THEN
			'莘县农商行'
			WHEN 'S001321' THEN
			'紫坪铺开发'
			WHEN 'S000932' THEN
			'沈阳地铁集团'
			WHEN 'Y000290' THEN
			'阳光油砂'
			WHEN 'F000154' THEN
			'振中电器'
			WHEN 'S000933' THEN
			'神州数码'
			WHEN 'B000327' THEN
			'方正富邦资管'
			WHEN 'S006167' THEN
			'九号公司'
			WHEN 'S000934' THEN
			'神州信息'
			WHEN 'Z001560' THEN
			'中电通商'
			WHEN 'Y000291' THEN
			'广陵新城'
			WHEN 'Z001561' THEN
			'中铁隧道集团'
			WHEN 'Q000168' THEN
			'青岛军民融合'
			WHEN 'C000393' THEN
			'慈东工业发展'
			WHEN 'B000428' THEN
			'大兴国投'
			WHEN 'J000599' THEN
			'吉林担保'
			WHEN 'M000047' THEN
			'民生保险'
			WHEN 'K000060' THEN
			'康师傅控股'
			WHEN 'H000681' THEN
			'恒安集团'
			WHEN 'B000328' THEN
			'保利置业'
			WHEN 'Z001280' THEN
			'农化公司'
			WHEN 'G000457' THEN
			'广饶经发投资集团'
			WHEN 'S000935' THEN
			'苏宁环球集团'
			WHEN 'C000266' THEN
			'天合光能'
			WHEN 'X000348' THEN
			'仙游农商行'
			WHEN 'Q000136' THEN
			'前海开源'
			WHEN 'Y000340' THEN
			'产城资本'
			WHEN 'S001110' THEN
			'利津农商行'
			WHEN 'X000349' THEN
			'湘乡经开投'
			WHEN 'S000936' THEN
			'华易投资'
			WHEN 'L000207' THEN
			'朗诗集团'
			WHEN 'Z001281' THEN
			'棒杰股份'
			WHEN 'J000600' THEN
			'江苏银行上海分行'
			WHEN 'W000247' THEN
			'温州生态园建投'
			WHEN 'Y000292' THEN
			'广陵经开建'
			WHEN 'M000048' THEN
			'美乐家'
			WHEN 'Q000126' THEN
			'昌阳投资'
			WHEN 'Z001562' THEN
			'中电海康'
			WHEN 'C000316' THEN
			'盈地实业'
			WHEN 'Q000169' THEN
			'融控集团'
			WHEN 'Z001393' THEN
			'中国人保健康'
			WHEN 'S001111' THEN
			'深圳粮食集团'
			WHEN 'G000513' THEN
			'粤财控股'
			WHEN 'H000768' THEN
			'华英农业'
			WHEN 'Z001394' THEN
			'张家界农商行'
			WHEN 'S001322' THEN
			'汇盈置业'
			WHEN 'L000307' THEN
			'龙游国资'
			WHEN 'Z001395' THEN
			'农行温州龙湾支行'
			WHEN 'G000514' THEN
			'高密城投'
			WHEN 'H000769' THEN
			'五常农商行'
			WHEN 'J000681' THEN
			'邗江村镇行'
			WHEN 'Z001563' THEN
			'舟山六横国资'
			WHEN 'N000378' THEN
			'栖霞山旅游'
			WHEN 'B000329' THEN
			'北京银行上海分行'
			WHEN 'L000208' THEN
			'聊城农商行'
			WHEN 'S006144' THEN
			'中铁广州工程'
			WHEN 'M000049' THEN
			'茂业国际'
			WHEN 'Z001282' THEN
			'华电资本'
			WHEN 'J000601' THEN
			'吴江丝绸'
			WHEN 'G000458' THEN
			'白云城建'
			WHEN 'R000058' THEN
			'融创中国'
			WHEN 'J000602' THEN
			'润企万国'
			WHEN 'R000076' THEN
			'如皋高新技术园区开发'
			WHEN 'G000459' THEN
			'兴义农商行'
			WHEN 'A000140' THEN
			'舒城农商行'
			WHEN 'X000350' THEN
			'沭东新城投'
			WHEN 'H000682' THEN
			'中经资本'
			WHEN 'W000228' THEN
			'威海国有资产经营'
			WHEN 'S000937' THEN
			'柯桥城建'
			WHEN 'D000199' THEN
			'大庆农商行'
			WHEN 'X000465' THEN
			'仙游城南新开'
			WHEN 'Y000412' THEN
			'有格投资'
			WHEN 'B000429' THEN
			'昌平发展'
			WHEN 'L000241' THEN
			'百川资产'
			WHEN 'S006699' THEN
			'科兴制药'
			WHEN 'S006700' THEN
			'欧科亿'
			WHEN 'S006701' THEN
			'招行长春分行'
			WHEN 'Y000341' THEN
			'辰投公司'
			WHEN 'S001112' THEN
			'壶关农商行'
			WHEN 'S006702' THEN
			'西安城墙文投'
			WHEN 'W000248' THEN
			'五矿控股'
			WHEN 'S006703' THEN
			'芝罘财控'
			WHEN 'M000060' THEN
			'蒙城城投'
			WHEN 'C000317' THEN
			'成都农发投'
			WHEN 'C000318' THEN
			'创维集团'
			WHEN 'C000319' THEN
			'武隆建设'
			WHEN 'F000179' THEN
			'辅仁药业集团'
			WHEN 'Z000853' THEN
			'扎兰屯水利枢纽'
			WHEN 'S000410' THEN
			'石家庄建投'
			WHEN 'Z000649' THEN
			'中合担保'
			WHEN 'S000411' THEN
			'商洛城投'
			WHEN 'H000770' THEN
			'衡阳建投'
			WHEN 'C000394' THEN
			'通瑞农业发展'
			WHEN 'J000682' THEN
			'建德国资'
			WHEN 'C000320' THEN
			'珞璜建设'
			WHEN 'Y000342' THEN
			'银座股份'
			WHEN 'L000242' THEN
			'恒驰实业'
			WHEN 'X000399' THEN
			'新疆银行'
			WHEN 'Z001396' THEN
			'遵义湘投'
			WHEN 'Y000343' THEN
			'营口经开华源供暖'
			WHEN 'S001113' THEN
			'陕西水务'
			WHEN 'J000683' THEN
			'嘉秀发展'
			WHEN 'B000369' THEN
			'渤海汇金资管'
			WHEN 'D000264' THEN
			'合展实业'
			WHEN 'D000265' THEN
			'大悟城投'
			WHEN 'S001323' THEN
			'山东机场管理'
			WHEN 'X000466' THEN
			'南阳财和'
			WHEN 'A000213' THEN
			'安乡城投'
			WHEN 'C000395' THEN
			'长沙银行安乡支行'
			WHEN 'S005795' THEN
			'未央城建'
			WHEN 'S005796' THEN
			'宝泰隆供热'
			WHEN 'S005797' THEN
			'德利股份'
			WHEN 'W000093' THEN
			'温公用'
			WHEN 'Q000170' THEN
			'青岛开发建设公司'
			WHEN 'J000684' THEN
			'莒南城投'
			WHEN 'T000303' THEN
			'金凤凰服务'
			WHEN 'E000019' THEN
			'彝族农信社'
			WHEN 'S001114' THEN
			'陕西金融资产管理'
			WHEN 'Z001397' THEN
			'遵义交旅投'
			WHEN 'K000079' THEN
			'跨境通'
			WHEN 'W000249' THEN
			'无锡食品园'
			WHEN 'W000250' THEN
			'武胜投资'
			WHEN 'H000771' THEN
			'淮阴城资'
			WHEN 'G000516' THEN
			'新疆能源化工'
			WHEN 'S005798' THEN
			'太行水泥'
			WHEN 'J000688' THEN
			'林洋能源'
			WHEN 'N000379' THEN
			'农银投资'
			WHEN 'S001324' THEN
			'上汽集团'
			WHEN 'H000772' THEN
			'珲春城投'
			WHEN 'M000061' THEN
			'宏达投资'
			WHEN 'C000321' THEN
			'新益州城建发'
			WHEN 'D000227' THEN
			'大盛微电'
			WHEN 'S005799' THEN
			'大华农'
			WHEN 'W000132' THEN
			'武安国有资产经营'
			WHEN 'Q000171' THEN
			'海洋控股集团'
			WHEN 'S001325' THEN
			'嵊州城南建设投资'
			WHEN 'K000093' THEN
			'开阳农信社'
			WHEN 'Y000413' THEN
			'舜财投控'
			WHEN 'J000790' THEN
			'先行控股集团'
			WHEN 'G000515' THEN
			'洋浦南华'
			WHEN 'J000685' THEN
			'君信金融'
			WHEN 'M000019' THEN
			'康达公路'
			WHEN 'T000350' THEN
			'桃李面包'
			WHEN 'R000020' THEN
			'乳山城市国资'
			WHEN 'Z001401' THEN
			'宇通客车'
			WHEN 'G000517' THEN
			'广元城投'
			WHEN 'H001003' THEN
			'湖北金融'
			WHEN 'S005800' THEN
			'承德钒钛'
			WHEN 'S000626' THEN
			'康得新'
			WHEN 'J000419' THEN
			'江苏阳光'
			WHEN 'S005801' THEN
			'邯郸钢铁'
			WHEN 'S005802' THEN
			'东北高速'
			WHEN 'S005803' THEN
			'美的电器'
			WHEN 'S005804' THEN
			'盐湖集团'
			WHEN 'S005805' THEN
			'上港集箱'
			WHEN 'S001128' THEN
			'上海交大产投'
			WHEN 'L000267' THEN
			'联创电子'
			WHEN 'Y000350' THEN
			'锦苑集团'
			WHEN 'Z000947' THEN
			'涪陵交旅'
			WHEN 'S001115' THEN
			'未名医药'
			WHEN 'T000319' THEN
			'竹乡国资'
			WHEN 'Z001398' THEN
			'株洲轨道交通'
			WHEN 'C000322' THEN
			'章源控股'
			WHEN 'S005806' THEN
			'上电股份'
			WHEN 'S005807' THEN
			'中西药业'
			WHEN 'S005808' THEN
			'上实医药'
			WHEN 'S005809' THEN
			'白云山'
			WHEN 'Z001596' THEN
			'中国同辐'
			WHEN 'Q000137' THEN
			'青岛海信房地产'
			WHEN 'H000406' THEN
			'怀化水业投资'
			WHEN 'K000033' THEN
			'昆山国创'
			WHEN 'X000478' THEN
			'金牌厨柜'
			WHEN 'R000061' THEN
			'仁怀水务'
			WHEN 'S001116' THEN
			'华昱煤化'
			WHEN 'Z001399' THEN
			'南京国轩控股'
			WHEN 'Z001423' THEN
			'枣庄农商行'
			WHEN 'Z001402' THEN
			'东方资产(国际)'
			WHEN 'N000330' THEN
			'北坤交投'
			WHEN 'J000686' THEN
			'徐工租赁'
			WHEN 'H000773' THEN
			'新密农商行'
			WHEN 'J000358' THEN
			'靖江港口'
			WHEN 'T000182' THEN
			'兴宁建设'
			WHEN 'S001117' THEN
			'山阴农商行'
			WHEN 'L000276' THEN
			'西苑城投'
			WHEN 'H000774' THEN
			'弘瑞投资'
			WHEN 'N000331' THEN
			'能兴集团'
			WHEN 'M000062' THEN
			'郑蒲港建投'
			WHEN 'J000745' THEN
			'江西资管'
			WHEN 'A000169' THEN
			'安通控股'
			WHEN 'S001118' THEN
			'寿县国资'
			WHEN 'W000168' THEN
			'金凰珠宝'
			WHEN 'Q000095' THEN
			'山一中氚'
			WHEN 'A000186' THEN
			'应流股份'
			WHEN 'C000323' THEN
			'两山建投'
			WHEN 'J000371' THEN
			'江苏广亚集团'
			WHEN 'R000062' THEN
			'如东民泰建设'
			WHEN 'S000627' THEN
			'杉杉控股'
			WHEN 'C000416' THEN
			'香城投资集团'
			WHEN 'G000672' THEN
			'广东出版集团'
			WHEN 'H001004' THEN
			'淮南建发集团'
			WHEN 'S001174' THEN
			'君实生物'
			WHEN 'T000200' THEN
			'海泰发展'
			WHEN 'Z000948' THEN
			'郑州地铁'
			WHEN 'W000290' THEN
			'先导智能'
			WHEN 'S000628' THEN
			'上虞水务集团'
			WHEN 'D000289' THEN
			'大信'
			WHEN 'Z000949' THEN
			'重铝开投'
			WHEN 'J000392' THEN
			'有色建设'
			WHEN 'N000189' THEN
			'滨江新城开发建设'
			WHEN 'J000342' THEN
			'null'
			WHEN 'S000975' THEN
			'东平农商行'
			WHEN 'L000145' THEN
			'耒阳城市农村建投'
			WHEN 'C000137' THEN
			'常州民生环保'
			WHEN 'Z000950' THEN
			'万盛旅业'
			WHEN 'B000227' THEN
			'同利建筑'
			WHEN 'J000420' THEN
			'洋口港建设'
			WHEN 'Z000837' THEN
			'重庆三峡银行永川支行'
			WHEN 'H000471' THEN
			'湖南铁路建投'
			WHEN 'C000120' THEN
			'成都国投'
			WHEN 'N000190' THEN
			'世锦实业'
			WHEN 'K000037' THEN
			'凯盛重工'
			WHEN 'Y000177' THEN
			'老边区供热'
			WHEN 'Y000178' THEN
			'南洋经发'
			WHEN 'Z000951' THEN
			'株洲高科建设'
			WHEN 'D000129' THEN
			'德城园林绿化'
			WHEN 'J000393' THEN
			'长荡湖旅游'
			WHEN 'D000130' THEN
			'精华润源农业'
			WHEN 'Q000087' THEN
			'三特电器'
			WHEN 'W000155' THEN
			'武冈交投'
			WHEN 'S000629' THEN
			'金阳矿业'
			WHEN 'N000191' THEN
			'南通一建集团'
			WHEN 'S000630' THEN
			'金河混凝土'
			WHEN 'H000451' THEN
			'null'
			WHEN 'T000320' THEN
			'兴黄综合'
			WHEN 'Z000952' THEN
			'中恒通'
			WHEN 'Z000953' THEN
			'朝晖过滤'
			WHEN 'K000038' THEN
			'开州汉丰湖旅游'
			WHEN 'W000156' THEN
			'丹枫白露'
			WHEN 'J000394' THEN
			'铜枣实业'
			WHEN 'S000631' THEN
			'畅通集团'
			WHEN 'C000346' THEN
			'渝康资产'
			WHEN 'B000210' THEN
			'京西鑫融'
			WHEN 'T000183' THEN
			'唐山丰南建投'
			WHEN 'Q000074' THEN
			'海东投资'
			WHEN 'L000243' THEN
			'凌海资投'
			WHEN 'J000687' THEN
			'鑫达城建'
			WHEN 'S006148' THEN
			'吉银村镇行'
			WHEN 'S001119' THEN
			'宏达股份'
			WHEN 'C000324' THEN
			'南谯国运'
			WHEN 'S006147' THEN
			'南京公交'
			WHEN 'S001120' THEN
			'延安文旅投资'
			WHEN 'N000332' THEN
			'克明食品'
			WHEN 'L000244' THEN
			'汇兴投资'
			WHEN 'Z001400' THEN
			'招行双楠支行'
			WHEN 'X000184' THEN
			'兴业银行南昌分行'
			WHEN 'S001121' THEN
			'浦银安盛资管'
			WHEN 'S001122' THEN
			'顺丰泰森'
			WHEN 'H000775' THEN
			'天成租赁'
			WHEN 'S006149' THEN
			'法兴银行'
			WHEN 'Z001097' THEN
			'中国科学院'
			WHEN 'S006704' THEN
			'舒华体育'
			WHEN 'S006705' THEN
			'彩虹集团'
			WHEN 'S006706' THEN
			'西上海'
			WHEN 'S006707' THEN
			'思进智能'
			WHEN 'S006708' THEN
			'常山投资集团'
			WHEN 'S006709' THEN
			'上实环境'
			WHEN 'S006710' THEN
			'西安经开城市'
			WHEN 'S006711' THEN
			'建湖高新投资'
			WHEN 'S006712' THEN
			'远吉互联'
			WHEN 'S006713' THEN
			'中治集团'
			WHEN 'S000757' THEN
			'上海国资'
			WHEN 'C000404' THEN
			'重庆医药'
			WHEN 'Z001098' THEN
			'肇庆农商行'
			WHEN 'J000467' THEN
			'济宁银行'
			WHEN 'S005870' THEN
			'富皋万泰'
			WHEN 'S005357' THEN
			'淮阳农信社'
			WHEN 'S005358' THEN
			'裕信银行'
			WHEN 'S006138' THEN
			'天泰旅投'
			WHEN 'S005359' THEN
			'金茂信和投资'
			WHEN 'S005360' THEN
			'南平土地'
			WHEN 'S005361' THEN
			'鄱湖生态'
			WHEN 'S005362' THEN
			'洋湖再生水'
			WHEN 'S005363' THEN
			'中能化保理'
			WHEN 'S005364' THEN
			'陕煤工程中心'
			WHEN 'S005365' THEN
			'金财产业'
			WHEN 'S005366' THEN
			'易睿投资'
			WHEN 'S005367' THEN
			'玉林交旅集团'
			WHEN 'S005368' THEN
			'新城公有资产'
			WHEN 'S005369' THEN
			'富诚集团'
			WHEN 'S005370' THEN
			'大冶森农水利'
			WHEN 'S005371' THEN
			'龙翔集团'
			WHEN 'S005372' THEN
			'大双实业'
			WHEN 'L000277' THEN
			'洛银租赁'
			WHEN 'A000173' THEN
			'聚金城投'
			WHEN 'Q000139' THEN
			'齐鲁交发集团'
			WHEN 'S005373' THEN
			'美畅股份'
			WHEN 'S005374' THEN
			'锋尚文化'
			WHEN 'S005375' THEN
			'唐山新城建投'
			WHEN 'Z000869' THEN
			'中材国际'
			WHEN 'S001335' THEN
			'名家汇'
			WHEN 'J000746' THEN
			'吉林国资'
			WHEN 'Z001597' THEN
			'太平洋寿险'
			WHEN 'X000479' THEN
			'仙鹤股份'
			WHEN 'H000954' THEN
			'鸿达兴业'
			WHEN 'Z001432' THEN
			'中国化学集团'
			WHEN 'S001240' THEN
			'金泉股份'
			WHEN 'T000354' THEN
			'金城银行'
			WHEN 'B000396' THEN
			'元年科技'
			WHEN 'H000472' THEN
			'华南城'
			WHEN 'G000286' THEN
			'顾家集团'
			WHEN 'S005376' THEN
			'义乌经开'
			WHEN 'Z001598' THEN
			'光大银行青岛分行'
			WHEN 'S005377' THEN
			'南京楷得'
			WHEN 'G000319' THEN
			'天安新材'
			WHEN 'X000218' THEN
			'浐灞生态园林和浐灞贸易公司'
			WHEN 'H000452' THEN
			'海安利泰水务'
			WHEN 'S000632' THEN
			'天泰钢塑'
			WHEN 'N000192' THEN
			'吉元冶金'
			WHEN 'Z000954' THEN
			'海普顿'
			WHEN 'L000139' THEN
			'鼎盛投资'
			WHEN 'L000140' THEN
			'临汾热力供应'
			WHEN 'J000395' THEN
			'吉林粮食集团'
			WHEN 'G000312' THEN
			'桂阳市政'
			WHEN 'W000307' THEN
			'车都项目管理'
			WHEN 'X000219' THEN
			'孝昌供水'
			WHEN 'C000138' THEN
			'槐海服务'
			WHEN 'Q000190' THEN
			'山东高速通和'
			WHEN 'A000091' THEN
			'奥盛新材料'
			WHEN 'W000157' THEN
			'吴文化园'
			WHEN 'J000396' THEN
			'康佳新材料'
			WHEN 'H000453' THEN
			'兴淮农村经济发展'
			WHEN 'Y000179' THEN
			'扬州绿色产业'
			WHEN 'D000131' THEN
			'下渚湖旅游'
			WHEN 'Q000088' THEN
			'银河环保'
			WHEN 'B000496' THEN
			'北京银行济南分行'
			WHEN 'Z000955' THEN
			'丹徒科创'
			WHEN 'G000673' THEN
			'国浩(南京)'
			WHEN 'J000359' THEN
			'江西政府'
			WHEN 'H000454' THEN
			'厉华妤婕联合纺织'
			WHEN 'S000633' THEN
			'紫竹信息'
			WHEN 'H001005' THEN
			'襄投置业'
			WHEN 'Z001705' THEN
			'东新区投资'
			WHEN 'C000436' THEN
			'溪城现代农业'
			WHEN 'A000092' THEN
			'湖滨建设'
			WHEN 'N000172' THEN
			'南昌农商行'
			WHEN 'J000851' THEN
			'瑞海集团'
			WHEN 'B000238' THEN
			'中海创投'
			WHEN 'J000802' THEN
			'江西金控集团'
			WHEN 'T000361' THEN
			'黄岩城建'
			WHEN 'Z001575' THEN
			'德清交运投资'
			WHEN 'G000538' THEN
			'谷城建投'
			WHEN 'X000480' THEN
			'建潘集团'
			WHEN 'S000610' THEN
			'广饶农商行'
			WHEN 'Z000838' THEN
			'郑州控股公司'
			WHEN 'C000437' THEN
			'齐梁建设'
			WHEN 'C000438' THEN
			'成都融资租赁'
			WHEN 'S001191' THEN
			'泗阳佳鼎实业'
			WHEN 'T000201' THEN
			'台山核电'
			WHEN 'D000235' THEN
			'邦信置业'
			WHEN 'J000852' THEN
			'景业名邦集团'
			WHEN 'R000087' THEN
			'瑞幸咖啡'
			WHEN 'T000382' THEN
			'台郡科技'
			WHEN 'X000517' THEN
			'新力控股'
			WHEN 'T000212' THEN
			'天津铁路控股集团'
			WHEN 'Y000157' THEN
			'恒基大通光电'
			WHEN 'L000117' THEN
			'连岛旅游'
			WHEN 'D000114' THEN
			'东风日产'
			WHEN 'J000343' THEN
			'江阴旅游文化'
			WHEN 'J000344' THEN
			'金庐陵经济发展'
			WHEN 'S000561' THEN
			'三林万业'
			WHEN 'D000266' THEN
			'东亚银行'
			WHEN 'F000215' THEN
			'富士康国际控股'
			WHEN 'H000936' THEN
			'恒基地产'
			WHEN 'J000794' THEN
			'集友银行'
			WHEN 'L000309' THEN
			'利丰'
			WHEN 'F000124' THEN
			'南安农商行'
			WHEN 'J000468' THEN
			'爱康科技'
			WHEN 'S006714' THEN
			'航亚科技'
			WHEN 'S006715' THEN
			'恒玄科技'
			WHEN 'S006716' THEN
			'青岛院士港'
			WHEN 'S006717' THEN
			'仰山实业'
			WHEN 'S006718' THEN
			'新昌投资集团'
			WHEN 'Q000174' THEN
			'蔷薇保理'
			WHEN 'T000352' THEN
			'同煤漳泽'
			WHEN 'S006719' THEN
			'长兴太湖'
			WHEN 'S006720' THEN
			'德清经开'
			WHEN 'R000040' THEN
			'融信集团'
			WHEN 'B000265' THEN
			'兆泰集团'
			WHEN 'S005378' THEN
			'小米保理'
			WHEN 'S005379' THEN
			'中合保理'
			WHEN 'S005380' THEN
			'庐宇融资租赁'
			WHEN 'S005381' THEN
			'黄石城发集团'
			WHEN 'C000405' THEN
			'金牛国资'
			WHEN 'Y000344' THEN
			'长乐集团'
			WHEN 'G000625' THEN
			'广西旅发集团'
			WHEN 'W000251' THEN
			'东创融资'
			WHEN 'R000041' THEN
			'任丘建投'
			WHEN 'S001129' THEN
			'吴中建设'
			WHEN 'S006166' THEN
			'中金公司'
			WHEN 'S005382' THEN
			'津西集团'
			WHEN 'G000674' THEN
			'GFH金融'
			WHEN 'T000329' THEN
			'天津能源投资'
			WHEN 'S005383' THEN
			'蓝盾光电'
			WHEN 'S005384' THEN
			'博睿数据'
			WHEN 'S005385' THEN
			'复洁环保'
			WHEN 'S005386' THEN
			'众望布艺'
			WHEN 'S005387' THEN
			'南亚新材'
			WHEN 'S005388' THEN
			'南宁交投'
			WHEN 'D000117' THEN
			'搜于特'
			WHEN 'S001130' THEN
			'索菱'
			WHEN 'D000121' THEN
			'东江环保'
			WHEN 'J000689' THEN
			'滨河新区建投'
			WHEN 'Y000449' THEN
			'思茅农商行'
			WHEN 'H000439' THEN
			'海通恒信'
			WHEN 'S000584' THEN
			'上虞城建'
			WHEN 'P000042' THEN
			'平安资管'
			WHEN 'S006158' THEN
			'河口农商行'
			WHEN 'Z000839' THEN
			'重庆园业实业'
			WHEN 'Z001314' THEN
			'中国人保'
			WHEN 'L000221' THEN
			'绿地控股'
			WHEN 'Z000840' THEN
			'重庆农商行南川支行'
			WHEN 'H000820' THEN
			'荆门农商行'
			WHEN 'M000067' THEN
			'明光跃龙投资'
			WHEN 'S000585' THEN
			'空港发展集团'
			WHEN 'H000867' THEN
			'湖州银行安吉支行'
			WHEN 'Y000368' THEN
			'永丰银行'
			WHEN 'Z001470' THEN
			'煤田农信社'
			WHEN 'Z000841' THEN
			'台州高速'
			WHEN 'G000275' THEN
			'广州建筑'
			WHEN 'X000417' THEN
			'新疆同济堂'
			WHEN 'S001192' THEN
			'韶山高新'
			WHEN 'B000343' THEN
			'动力源'
			WHEN 'T000321' THEN
			'同济堂'
			WHEN 'Z000990' THEN
			'农行武汉江汉支行'
			WHEN 'Z000989' THEN
			'中行武汉江汉支行'
			WHEN 'Z000927' THEN
			'农行重庆双桥支行'
			WHEN 'Z000902' THEN
			'瓯海农商行'
			WHEN 'S005389' THEN
			'南航租赁'
			WHEN 'S005390' THEN
			'佛慈医药产发'
			WHEN 'S005391' THEN
			'中国铁建财务'
			WHEN 'H001006' THEN
			'杭州空港投资'
			WHEN 'X000518' THEN
			'新昌城投'
			WHEN 'Z001706' THEN
			'鸭溪大地投资'
			WHEN 'Z000870' THEN
			'华信邮电'
			WHEN 'S001131' THEN
			'宝生村镇行'
			WHEN 'Y000345' THEN
			'弥勒农商行'
			WHEN 'P000082' THEN
			'平高集团'
			WHEN 'X000229' THEN
			'拓普农业股份'
			WHEN 'Q000081' THEN
			'金鼎水泥'
			WHEN 'Z001599' THEN
			'镇江华建置业'
			WHEN 'F000221' THEN
			'高明建投'
			WHEN 'H000440' THEN
			'集合企业'
			WHEN 'C000417' THEN
			'昌吉国资'
			WHEN 'M000068' THEN
			'安投集团'
			WHEN 'Y000351' THEN
			'云阳人和投开'
			WHEN 'A000214' THEN
			'宏源国资经营'
			WHEN 'Z001600' THEN
			'中信银行广州分行'
			WHEN 'N000406' THEN
			'通汇融资'
			WHEN 'X000191' THEN
			'大唐鼎旺水泥'
			WHEN 'S000984' THEN
			'水城城投'
			WHEN 'S000562' THEN
			'神润发'
			WHEN 'Z001433' THEN
			'武义城投'
			WHEN 'H000413' THEN
			'河北融投'
			WHEN 'T000322' THEN
			'通化金马'
			WHEN 'K000061' THEN
			'九鼎投资'
			WHEN 'G000675' THEN
			'金控资管'
			WHEN 'Y000352' THEN
			'永修建投'
			WHEN 'Z001288' THEN
			'中信股份'
			WHEN 'Y000353' THEN
			'于都振兴投开'
			WHEN 'Z001289' THEN
			'中信泰富'
			WHEN 'G000320' THEN
			'高要国资'
			WHEN 'N000343' THEN
			'南宁轨道交通'
			WHEN 'T000362' THEN
			'台州循环经发'
			WHEN 'A000145' THEN
			'渝坤地产'
			WHEN 'S000942' THEN
			'清徐农商行'
			WHEN 'S000943' THEN
			'芮城农商行'
			WHEN 'S005810' THEN
			'世茂集团'
			WHEN 'S005811' THEN
			'湘火炬'
			WHEN 'S005812' THEN
			'新湖创业'
			WHEN 'S005813' THEN
			'上海航空'
			WHEN 'S005814' THEN
			'路桥建设'
			WHEN 'S005815' THEN
			'包头铝业'
			WHEN 'S005816' THEN
			'山东铝业'
			WHEN 'S005817' THEN
			'兰州铝业'
			WHEN 'S005818' THEN
			'中原油气'
			WHEN 'S005819' THEN
			'齐鲁石化'
			WHEN 'S005820' THEN
			'石油大明'
			WHEN 'J000799' THEN
			'金力永磁'
			WHEN 'S005821' THEN
			'辽河油田'
			WHEN 'S005822' THEN
			'锦州石化'
			WHEN 'S005823' THEN
			'吉林化工'
			WHEN 'S005824' THEN
			'外运发展'
			WHEN 'S005825' THEN
			'长城信息'
			WHEN 'S005826' THEN
			'天方药业'
			WHEN 'S006721' THEN
			'清江浦城'
			WHEN 'S006722' THEN
			'一诺城建'
			WHEN 'S005827' THEN
			'山西焦化'
			WHEN 'S005828' THEN
			'新洁能'
			WHEN 'S005829' THEN
			'铜牛信息'
			WHEN 'S005830' THEN
			'中天火箭'
			WHEN 'S005831' THEN
			'松原股份'
			WHEN 'S005832' THEN
			'相城金控集团'
			WHEN 'N000240' THEN
			'金隆开发建设'
			WHEN 'G000368' THEN
			'贵阳城市轨道交通'
			WHEN 'S005833' THEN
			'羊安新城建'
			WHEN 'S000412' THEN
			'null'
			WHEN 'S005392' THEN
			'null'
			WHEN 'S005834' THEN
			'高新科创'
			WHEN 'S005835' THEN
			'亳州文旅集团'
			WHEN 'S006723' THEN
			'兰山城投集团'
			WHEN 'S005393' THEN
			'东岭物资'
			WHEN 'X000470' THEN
			'阜康农商行'
			WHEN 'S005394' THEN
			'中哲慕尚'
			WHEN 'J000469' THEN
			'句容农商行'
			WHEN 'J000470' THEN
			'盱眙农商行'
			WHEN 'J000471' THEN
			'建德农商行'
			WHEN 'S005836' THEN
			'中泰租赁'
			WHEN 'Z001099' THEN
			'普陀农商行'
			WHEN 'X000261' THEN
			'仙居农商行'
			WHEN 'J000472' THEN
			'扬中农商行'
			WHEN 'S005837' THEN
			'温高开发'
			WHEN 'S005838' THEN
			'万鑫联保理'
			WHEN 'S005395' THEN
			'美其名贸易'
			WHEN 'B000497' THEN
			'首发控股'
			WHEN 'S005396' THEN
			'前锦蔬果'
			WHEN 'H000940' THEN
			'鸿海精密工业'
			WHEN 'D000270' THEN
			'德昌电机控股'
			WHEN 'S005397' THEN
			'均瑶健康'
			WHEN 'S005398' THEN
			'芯原股份'
			WHEN 'S005399' THEN
			'航天财务'
			WHEN 'H000705' THEN
			'确山农商行'
			WHEN 'Y000160' THEN
			'雅戈尔服装'
			WHEN 'H000706' THEN
			'东盈村镇行'
			WHEN 'S000985' THEN
			'临淄农商行'
			WHEN 'S001438' THEN
			'嬴城控股'
			WHEN 'S000986' THEN
			'泽州农商行'
			WHEN 'S000987' THEN
			'沂源农商行'
			WHEN 'C000439' THEN
			'千信集团'
			WHEN 'H000707' THEN
			'偃师农商行'
			WHEN 'Z000928' THEN
			'中闻印务集团'
			WHEN 'Y000294' THEN
			'阳光人寿'
			WHEN 'W000138' THEN
			'万联能源集团'
			WHEN 'P000094' THEN
			'攀枝花钢钒'
			WHEN 'T000355' THEN
			'泰康养老'
			WHEN 'K000035' THEN
			'康恩贝集团'
			WHEN 'B000498' THEN
			'乐居投资'
			WHEN 'Z001315' THEN
			'招商局港口'
			WHEN 'J000372' THEN
			'绿保木竹'
			WHEN 'S000604' THEN
			'茗强实业'
			WHEN 'J000373' THEN
			'洋口港投资'
			WHEN 'G000627' THEN
			'白云电器'
			WHEN 'D000122' THEN
			'旅泰投资'
			WHEN 'X000196' THEN
			'润盛投资'
			WHEN 'C000440' THEN
			'浦里投资'
			WHEN 'Y000420' THEN
			'庆和瑞投建'
			WHEN 'H001007' THEN
			'杭州国资'
			WHEN 'D000290' THEN
			'观音岩水电开发'
			WHEN 'X000519' THEN
			'徐工汽车'
			WHEN 'B000499' THEN
			'嘉源上海分所'
			WHEN 'S001439' THEN
			'上会'
			WHEN 'J000853' THEN
			'江苏银行徐州分行'
			WHEN 'X000353' THEN
			'伊犁农商行'
			WHEN 'J000608' THEN
			'响水农商行'
			WHEN 'H000684' THEN
			'德源棚户区改造投资'
			WHEN 'X000187' THEN
			'蔡家湖国投'
			WHEN 'S000560' THEN
			'永业集团'
			WHEN 'Z000831' THEN
			'农行新疆生产建设兵团分行'
			WHEN 'J000807' THEN
			'水利投资集团'
			WHEN 'S006724' THEN
			'灵康控股'
			WHEN 'S000758' THEN
			'石羊股份'
			WHEN 'B000266' THEN
			'北方凌云工业'
			WHEN 'S005839' THEN
			'万洲国际'
			WHEN 'S005840' THEN
			'中国银行(澳大利亚)'
			WHEN 'Z001573' THEN
			'浙商保理'
			WHEN 'J000800' THEN
			'通光线缆'
			WHEN 'S006725' THEN
			'天府水城资管'
			WHEN 'X000471' THEN
			'新世界发展'
			WHEN 'C000406' THEN
			'长江和记实业'
			WHEN 'D000271' THEN
			'电讯盈科'
			WHEN 'C000407' THEN
			'长实集团'
			WHEN 'L000312' THEN
			'金沙集团'
			WHEN 'H000941' THEN
			'会德丰'
			WHEN 'X000472' THEN
			'香港政府'
			WHEN 'Z001572' THEN
			'中电控股'
			WHEN 'Y000417' THEN
			'友邦保险'
			WHEN 'S000413' THEN
			'临港经济发展集团'
			WHEN 'Y000219' THEN
			'云南水务'
			WHEN 'S000759' THEN
			'石河子城投'
			WHEN 'S006726' THEN
			'宣城宣州国资'
			WHEN 'S005841' THEN
			'抚州文旅投'
			WHEN 'P000062' THEN
			'蓬莱城市建设'
			WHEN 'S005842' THEN
			'伟时电子'
			WHEN 'S005843' THEN
			'芯海科技'
			WHEN 'S005844' THEN
			'若羽臣'
			WHEN 'S005845' THEN
			'晋江文旅集团'
			WHEN 'S005846' THEN
			'鑫通经投'
			WHEN 'Y000118' THEN
			'亚厦控股'
			WHEN 'Y000418' THEN
			'云能租赁'
			WHEN 'S005847' THEN
			'浙江和辉'
			WHEN 'G000626' THEN
			'赣州高速公路'
			WHEN 'B000431' THEN
			'北京投资建设'
			WHEN 'S005400' THEN
			'深担增信'
			WHEN 'S006169' THEN
			'航信物管'
			WHEN 'J000349' THEN
			'中超控股'
			WHEN 'S000414' THEN
			'成阿实业'
			WHEN 'Z000871' THEN
			'中信银行芜湖分行'
			WHEN 'W000140' THEN
			'潍坊银行'
			WHEN 'L000120' THEN
			'两面针'
			WHEN 'S000611' THEN
			'浦东金桥'
			WHEN 'G000301' THEN
			'广州银行'
			WHEN 'W000141' THEN
			'宜居投资'
			WHEN 'H000414' THEN
			'新奥股份'
			WHEN 'S005401' THEN
			'卡倍亿'
			WHEN 'S005402' THEN
			'安克创新'
			WHEN 'S005403' THEN
			'大宏立'
			WHEN 'S005404' THEN
			'格林达'
			WHEN 'S005405' THEN
			'华光新材'
			WHEN 'Z000956' THEN
			'大港集团'
			WHEN 'J000397' THEN
			'宝地装饰'
			WHEN 'H000942' THEN
			'滨海投资'
			WHEN 'Z000957' THEN
			'新芦淞产业'
			WHEN 'K000039' THEN
			'开州建设'
			WHEN 'C000279' THEN
			'沧州港务'
			WHEN 'S000634' THEN
			'维多利亚海湾旅游'
			WHEN 'P000046' THEN
			'普定粮油'
			WHEN 'J000398' THEN
			'崇明科技'
			WHEN 'Z000903' THEN
			'舟山海投'
			WHEN 'Z000958' THEN
			'镇远名旅'
			WHEN 'T000202' THEN
			'铜仁水务'
			WHEN 'J000399' THEN
			'惠海旅游'
			WHEN 'J000400' THEN
			'润扬交通工程'
			WHEN 'Z001316' THEN
			'中国人保财险'
			WHEN 'G000313' THEN
			'思美尔服饰'
			WHEN 'J000401' THEN
			'句容赤山湖生态建设'
			WHEN 'T000203' THEN
			'重钢机械'
			WHEN 'G000302' THEN
			'南粤银行'
			WHEN 'H000943' THEN
			'社旗农商行'
			WHEN 'H000944' THEN
			'福斯特'
			WHEN 'Z000904' THEN
			'中联重科'
			WHEN 'F000102' THEN
			'禅城城建'
			WHEN 'G000303' THEN
			'平海发电厂'
			WHEN 'S005406' THEN
			'泷润置业'
			WHEN 'S005407' THEN
			'易居企业'
			WHEN 'S005408' THEN
			'畅祥建发'
			WHEN 'H000685' THEN
			'河源宁联'
			WHEN 'C000412' THEN
			'常熟汽饰'
			WHEN 'S001339' THEN
			'顺丰控股'
			WHEN 'X000354' THEN
			'新民市国资'
			WHEN 'S000944' THEN
			'近海腾达'
			WHEN 'S000945' THEN
			'华锦资产经营'
			WHEN 'Z001290' THEN
			'中钨高新'
			WHEN 'Z001291' THEN
			'水发兴业能源'
			WHEN 'J000625' THEN
			'长白山开发建设集团'
			WHEN 'Z000905' THEN
			'华发综合'
			WHEN 'H000686' THEN
			'鹤山公营'
			WHEN 'Z001292' THEN
			'中信银行鹤山支行'
			WHEN 'Y000306' THEN
			'元达信资本'
			WHEN 'D000210' THEN
			'德邦创新资本'
			WHEN 'S000946' THEN
			'金控集团'
			WHEN 'S000586' THEN
			'创投集团'
			WHEN 'Y000161' THEN
			'本香农业集团'
			WHEN 'N000173' THEN
			'玄武集团'
			WHEN 'S000612' THEN
			'为海建材'
			WHEN 'J000350' THEN
			'南通二建'
			WHEN 'W000142' THEN
			'光谷生物产业'
			WHEN 'J000351' THEN
			'交行南通分行'
			WHEN 'L000121' THEN
			'粤开证券'
			WHEN 'Z001293' THEN
			'中国证监会'
			WHEN 'N000384' THEN
			'海曙开发建投'
			WHEN 'Z001576' THEN
			'中国铜业'
			WHEN 'S006137' THEN
			'中胤时尚'
			WHEN 'H000415' THEN
			'湖北路桥'
			WHEN 'W000158' THEN
			'新昌印务'
			WHEN 'J000402' THEN
			'江西路桥'
			WHEN 'N000193' THEN
			'龙潭物流'
			WHEN 'S000635' THEN
			'金海投资'
			WHEN 'N000194' THEN
			'路鹏建设工程'
			WHEN 'C000139' THEN
			'浩湖渔业'
			WHEN 'S000636' THEN
			'金桥汽车产业园'
			WHEN 'H000455' THEN
			'恒远国际'
			WHEN 'N000195' THEN
			'雨花经发'
			WHEN 'W000159' THEN
			'北塘建投'
			WHEN 'C000140' THEN
			'惠通路桥'
			WHEN 'S000574' THEN
			'山东核电'
			WHEN 'H000708' THEN
			'中牟农商行'
			WHEN 'Y000421' THEN
			'银保监会'
			WHEN 'Z001577' THEN
			'中债登'
			WHEN 'Z001578' THEN
			'邮储银行上海分行'
			WHEN 'S006161' THEN
			'中城文旅'
			WHEN 'G000633' THEN
			'国投'
			WHEN 'D000162' THEN
			'洞头农商行'
			WHEN 'G000369' THEN
			'国开行香港分行'
			WHEN 'S005848' THEN
			'开港公司'
			WHEN 'S005849' THEN
			'德银融资租赁'
			WHEN 'S005850' THEN
			'广州工控'
			WHEN 'S005851' THEN
			'仁恒置地'
			WHEN 'S005852' THEN
			'一汽租赁'
			WHEN 'S005853' THEN
			'阳光城阳'
			WHEN 'S005854' THEN
			'聊城旅发'
			WHEN 'S005855' THEN
			'泰州金控集团'
			WHEN 'S005856' THEN
			'南通天一置业'
			WHEN 'S005857' THEN
			'吴中金控'
			WHEN 'S005858' THEN
			'太湖旅发'
			WHEN 'S005859' THEN
			'首置地产'
			WHEN 'S005860' THEN
			'诚通建投'
			WHEN 'S005861' THEN
			'兴泰担保集团'
			WHEN 'L000168' THEN
			'兴路路桥'
			WHEN 'A000109' THEN
			'安源煤业'
			WHEN 'G000634' THEN
			'华锋股份'
			WHEN 'S005862' THEN
			'上纬新材'
			WHEN 'S005863' THEN
			'天臣医疗'
			WHEN 'S005864' THEN
			'爱美客'
			WHEN 'S005865' THEN
			'丽人丽妆'
			WHEN 'S005866' THEN
			'长华股份'
			WHEN 'F000180' THEN
			'福建国资'
			WHEN 'J000256' THEN
			'福如东海发展集团'
			WHEN 'S005409' THEN
			'康泰医学'
			WHEN 'S005410' THEN
			'圣元环保'
			WHEN 'S005411' THEN
			'杰美特'
			WHEN 'S005412' THEN
			'安必平'
			WHEN 'S005413' THEN
			'正帆科技'
			WHEN 'X000197' THEN
			'修正集团'
			WHEN 'X000425' THEN
			'新鸿基地产'
			WHEN 'S000988' THEN
			'迪浩股份'
			WHEN 'Z001317' THEN
			'腾晖光伏'
			WHEN 'S000575' THEN
			'金鹏生物'
			WHEN 'T000187' THEN
			'金硕信息'
			WHEN 'L000210' THEN
			'利亚德'
			WHEN 'Y000119' THEN
			'雅安发展'
			WHEN 'D000211' THEN
			'清源水务'
			WHEN 'S000989' THEN
			'晨鸣租赁'
			WHEN 'Z001601' THEN
			'招行杭州分行'
			WHEN 'Z001579' THEN
			'工行安徽分行'
			WHEN 'B000432' THEN
			'毕马威华振'
			WHEN 'B000433' THEN
			'大成'
			WHEN 'A000199' THEN
			'平坝农信社'
			WHEN 'S001241' THEN
			'左云农商行'
			WHEN 'L000222' THEN
			'凉山农商行'
			WHEN 'N000196' THEN
			'建成砼业'
			WHEN 'Y000180' THEN
			'银川艾尼散热器'
			WHEN 'Z000857' THEN
			'建行台州分行'
			WHEN 'J000811' THEN
			'九江城发'
			WHEN 'G000636' THEN
			'振兴实业'
			WHEN 'M000051' THEN
			'牧原实业'
			WHEN 'H000821' THEN
			'湖北资管'
			WHEN 'T000356' THEN
			'天津太钢融资'
			WHEN 'S001356' THEN
			'华蓥农商行'
			WHEN 'Z000959' THEN
			'中交一航局'
			WHEN 'Z000960' THEN
			'四航局'
			WHEN 'S000637' THEN
			'山西经济建设投资'
			WHEN 'Z001602' THEN
			'中信银行北京分行'
			WHEN 'H000687' THEN
			'汝州农商行'
			WHEN 'T000357' THEN
			'太平财险'
			WHEN 'X000481' THEN
			'象山经开园区'
			WHEN 'S000947' THEN
			'沂南农商行'
			WHEN 'S001340' THEN
			'上国投资管'
			WHEN 'S001341' THEN
			'绵阳停车'
			WHEN 'S006141' THEN
			'知识城集团'
			WHEN 'S006175' THEN
			'厦门益悦'
			WHEN 'S006172' THEN
			'杨浦滨江'
			WHEN 'S005867' THEN
			'太平再保险'
			WHEN 'S005868' THEN
			'狮桥资本'
			WHEN 'S000415' THEN
			'上海永达投资'
			WHEN 'G000225' THEN
			'广日集团'
			WHEN 'S005871' THEN
			'世华科技'
			WHEN 'S005872' THEN
			'共创草坪'
			WHEN 'S005873' THEN
			'桐庐城发'
			WHEN 'S005874' THEN
			'仙居城建'
			WHEN 'S005875' THEN
			'开普检测'
			WHEN 'S005876' THEN
			'直真科技'
			WHEN 'Z000650' THEN
			'中国神华'
			WHEN 'S005877' THEN
			'桐庐城投'
			WHEN 'F000201' THEN
			'福晟集团'
			WHEN 'T000330' THEN
			'TCL保理'
			WHEN 'Z000961' THEN
			'中弘股份'
			WHEN 'H000780' THEN
			'海马财务'
			WHEN 'G000472' THEN
			'广联达'
			WHEN 'S001357' THEN
			'森特股份'
			WHEN 'Z001603' THEN
			'振德医疗'
			WHEN 'Z001604' THEN
			'招行深圳分行'
			WHEN 'H000293' THEN
			'哈尔滨基础设施开发建设'
			WHEN 'S000948' THEN
			'平邑农商行'
			WHEN 'D000202' THEN
			'天盟塑料'
			WHEN 'S000949' THEN
			'好一新'
			WHEN 'Z001318' THEN
			'金润源集团'
			WHEN 'K000023' THEN
			'克州投资'
			WHEN 'J000626' THEN
			'江苏建工'
			WHEN 'C000093' THEN
			'昌润投资控股集团'
			WHEN 'Z001605' THEN
			'工行海南分行'
			WHEN 'Z000842' THEN
			'中澳控股'
			WHEN 'N000344' THEN
			'兴隆村镇行'
			WHEN 'X000355' THEN
			'鑫鹏源'
			WHEN 'C000268' THEN
			'天府建设'
			WHEN 'G000460' THEN
			'泉丰城投'
			WHEN 'J000345' THEN
			'江西建工集团'
			WHEN 'Z001606' THEN
			'中银金融'
			WHEN 'N000333' THEN
			'六合交通建投'
			WHEN 'N000204' THEN
			'威宁资产经营'
			WHEN 'X000426' THEN
			'湘潭建投'
			WHEN 'N000345' THEN
			'舜通集团'
			WHEN 'G000518' THEN
			'信宜农商行'
			WHEN 'B000228' THEN
			'万达文化集团'
			WHEN 'J000722' THEN
			'道森投资'
			WHEN 'B000397' THEN
			'兴投鼎沣资管'
			WHEN 'N000390' THEN
			'浦口保障房'
			WHEN 'G000637' THEN
			'遵铁物流开发'
			WHEN 'L000122' THEN
			'临沂开发建设'
			WHEN 'N000346' THEN
			'宁波国贸投资'
			WHEN 'K000094' THEN
			'新莱应材'
			WHEN 'H000709' THEN
			'正定农商行'
			WHEN 'S000990' THEN
			'桓台农商行'
			WHEN 'S000991' THEN
			'新泰农商行'
			WHEN 'L000211' THEN
			'泸州农村开发'
			WHEN 'S006146' THEN
			'中铁十局'
			WHEN 'S006727' THEN
			'同兴环保'
			WHEN 'S006728' THEN
			'明微电子'
			WHEN 'S006150' THEN
			'泰坦科技'
			WHEN 'S006136' THEN
			'广联航空'
			WHEN 'S006177' THEN
			'江油城投'
			WHEN 'S006729' THEN
			'福田投控'
			WHEN 'S006730' THEN
			'潍坊创投'
			WHEN 'S006731' THEN
			'新建城投'
			WHEN 'S006143' THEN
			'中铁北京工程'
			WHEN 'S006732' THEN
			'贵州国资'
			WHEN 'S005869' THEN
			'中建湘和投资'
			WHEN 'S005878' THEN
			'金龙湖集团'
			WHEN 'S000416' THEN
			'四川双马'
			WHEN 'S005879' THEN
			'交行广东分行'
			WHEN 'C000325' THEN
			'三圣股份'
			WHEN 'C000326' THEN
			'龙头港物流'
			WHEN 'S001132' THEN
			'汕尾投资'
			WHEN 'S005880' THEN
			'高新投资'
			WHEN 'Z001471' THEN
			'海洋租赁'
			WHEN 'D000228' THEN
			'东方集团'
			WHEN 'S001242' THEN
			'特发信息'
			WHEN 'K000088' THEN
			'科森科技'
			WHEN 'D000087' THEN
			'大洼城建'
			WHEN 'P000028' THEN
			'盘锦银行大洼支行'
			WHEN 'S005881' THEN
			'万通控股'
			WHEN 'C000124' THEN
			'新开元城投'
			WHEN 'Z000651' THEN
			'珠海汇华基础'
			WHEN 'P000029' THEN
			'平凉城投'
			WHEN 'F000181' THEN
			'三水农信社'
			WHEN 'S000950' THEN
			'河东农商行'
			WHEN 'S001133' THEN
			'东明农商行'
			WHEN 'Z001294' THEN
			'网商银行'
			WHEN 'G000519' THEN
			'瓮安农商行'
			WHEN 'H000781' THEN
			'海口联合农商行'
			WHEN 'Z001295' THEN
			'迪安诊断'
			WHEN 'L000146' THEN
			'庐江城建'
			WHEN 'L000125' THEN
			'浪潮'
			WHEN 'L000212' THEN
			'六盘水水利开发'
			WHEN 'S000587' THEN
			'鲁北集团'
			WHEN 'Y000369' THEN
			'玉环国资经营'
			WHEN 'Z000991' THEN
			'苏佳物资'
			WHEN 'S001243' THEN
			'全筑股份'
			WHEN 'D000239' THEN
			'恒达建设'
			WHEN 'N000174' THEN
			'宁夏政府'
			WHEN 'H000955' THEN
			'交投地产'
			WHEN 'W000291' THEN
			'江夏经济发展'
			WHEN 'C000418' THEN
			'金牛城市建投'
			WHEN 'G000638' THEN
			'赣州建投'
			WHEN 'H000421' THEN
			'黄河农商行'
			WHEN 'G000639' THEN
			'贵安新区发展'
			WHEN 'Z001607' THEN
			'建行厦门分行'
			WHEN 'Z001461' THEN
			'中煤集团'
			WHEN 'Z001434' THEN
			'中原资产'
			WHEN 'E000021' THEN
			'峨眉山旅游'
			WHEN 'Z001462' THEN
			'章贡建投'
			WHEN 'S006733' THEN
			'东海基金'
			WHEN 'S006734' THEN
			'三星财产保险'
			WHEN 'C000194' THEN
			'国信控股'
			WHEN 'S006735' THEN
			'健麾信息'
			WHEN 'S006736' THEN
			'森林包装'
			WHEN 'S006737' THEN
			'鼎通科技'
			WHEN 'S006738' THEN
			'中晶科技'
			WHEN 'S006739' THEN
			'苏州太湖国资'
			WHEN 'S006740' THEN
			'盐官景区开发'
			WHEN 'S006741' THEN
			'渤海银行杭州分行'
			WHEN 'S006742' THEN
			'中光控股'
			WHEN 'S006743' THEN
			'海诺投资'
			WHEN 'S006744' THEN
			'鄞州滨海开发'
			WHEN 'S006745' THEN
			'青科控股集团'
			WHEN 'S006746' THEN
			'正荣御尊'
			WHEN 'S006747' THEN
			'北京市政'
			WHEN 'S006748' THEN
			'经控集团'
			WHEN 'S006749' THEN
			'台州交投'
			WHEN 'S006750' THEN
			'青投租赁'
			WHEN 'S006751' THEN
			'鼎顺通'
			WHEN 'S006752' THEN
			'中国建基'
			WHEN 'R000042' THEN
			'瑞昌投资'
			WHEN 'J000473' THEN
			'润新建设'
			WHEN 'S001134' THEN
			'新时达'
			WHEN 'X000400' THEN
			'灵武城建'
			WHEN 'Z001403' THEN
			'中原银行许昌分行'
			WHEN 'F000202' THEN
			'佛燃能源'
			WHEN 'H000422' THEN
			'华电新疆发电'
			WHEN 'S000669' THEN
			'高新投'
			WHEN 'S005414' THEN
			'南大环境'
			WHEN 'S005415' THEN
			'欧陆通'
			WHEN 'S005416' THEN
			'回盛生物'
			WHEN 'K000080' THEN
			'康美实业'
			WHEN 'X000482' THEN
			'北京能源国际'
			WHEN 'H000956' THEN
			'汇丰银行(马来西亚)'
			WHEN 'H000957' THEN
			'淮北矿业'
			WHEN 'W000137' THEN
			'太极实业'
			WHEN 'R000080' THEN
			'日月股份'
			WHEN 'S001358' THEN
			'阳安交投'
			WHEN 'Z000992' THEN
			'工行绍兴分行'
			WHEN 'H000958' THEN
			'永创智能'
			WHEN 'S001193' THEN
			'孙吴兴城资本'
			WHEN 'L000268' THEN
			'萝北力云开发'
			WHEN 'S001194' THEN
			'宏基投资'
			WHEN 'H000822' THEN
			'鸿兴资本'
			WHEN 'F000195' THEN
			'锦程城建'
			WHEN 'H000441' THEN
			'海口农商行'
			WHEN 'D000115' THEN
			'大连建投集团'
			WHEN 'M000090' THEN
			'梅州农商行'
			WHEN 'H000407' THEN
			'合肥滨湖建投'
			WHEN 'S001244' THEN
			'武乡农商行'
			WHEN 'S000563' THEN
			'崇明建投'
			WHEN 'X000483' THEN
			'兴业银行北京分行'
			WHEN 'A000080' THEN
			'新鑫国资'
			WHEN 'G000276' THEN
			'桂林新城'
			WHEN 'S000564' THEN
			'上海农商行崇明支行'
			WHEN 'Z001463' THEN
			'淄矿集团'
			WHEN 'S001175' THEN
			'十堰城投'
			WHEN 'B000372' THEN
			'柏瑞爱建资管'
			WHEN 'H000858' THEN
			'华电云南发电'
			WHEN 'C000151' THEN
			'常德公用资产'
			WHEN 'Q000177' THEN
			'山东高速'
			WHEN 'Y000354' THEN
			'宜春交投'
			WHEN 'N000391' THEN
			'滨江新城开发'
			WHEN 'G000539' THEN
			'国厚资产'
			WHEN 'N000392' THEN
			'海创集团'
			WHEN 'G000640' THEN
			'高密国资'
			WHEN 'Y000422' THEN
			'营口农商行'
			WHEN 'S001342' THEN
			'首都银行'
			WHEN 'C000419' THEN
			'茅山投控'
			WHEN 'S001359' THEN
			'西岳华山'
			WHEN 'Z000843' THEN
			'中交天航'
			WHEN 'X000192' THEN
			'天源集团'
			WHEN 'B000211' THEN
			'宝马汽车'
			WHEN 'M000089' THEN
			'马上金融'
			WHEN 'Z001580' THEN
			'正商实业'
			WHEN 'S006753' THEN
			'海港港投'
			WHEN 'S006754' THEN
			'宝龙星汇'
			WHEN 'S006755' THEN
			'凯利捷投'
			WHEN 'S006756' THEN
			'福州新区开投'
			WHEN 'S006757' THEN
			'汊沽港经开'
			WHEN 'S006758' THEN
			'中交世茂'
			WHEN 'S006759' THEN
			'徂汶投资'
			WHEN 'S006760' THEN
			'南山智尚'
			WHEN 'S006761' THEN
			'特发服务'
			WHEN 'Z001100' THEN
			'中国海外发展'
			WHEN 'G000370' THEN
			'甘肃广电'
			WHEN 'J000474' THEN
			'湘家荡发展投资'
			WHEN 'S006168' THEN
			'大洋生物'
			WHEN 'S006174' THEN
			'江苏农水'
			WHEN 'Y000370' THEN
			'圆通速递'
			WHEN 'Z001472' THEN
			'中国远洋运输'
			WHEN 'S000760' THEN
			'寿阳农商行'
			WHEN 'S000761' THEN
			'平遥农商行'
			WHEN 'J000475' THEN
			'景德镇陶文旅'
			WHEN 'N000353' THEN
			'寒锐钴业'
			WHEN 'S001135' THEN
			'石柱鸿盛'
			WHEN 'S001245' THEN
			'平裕保理'
			WHEN 'J000360' THEN
			'金华银行'
			WHEN 'S000588' THEN
			'陕汽控股'
			WHEN 'S005417' THEN
			'蒙泰高新'
			WHEN 'S005418' THEN
			'海晨股份'
			WHEN 'S005419' THEN
			'天阳科技'
			WHEN 'S005420' THEN
			'长鸿高科'
			WHEN 'S005421' THEN
			'捷强装备'
			WHEN 'Z000872' THEN
			'中核集团'
			WHEN 'S001246' THEN
			'四川国资'
			WHEN 'C000125' THEN
			'超威动力'
			WHEN 'H000868' THEN
			'浣江水务'
			WHEN 'N000181' THEN
			'四川天府银行'
			WHEN 'M000076' THEN
			'涪城农信社'
			WHEN 'S000576' THEN
			'晨曦集团'
			WHEN 'Z001473' THEN
			'金茂物业'
			WHEN 'Z001608' THEN
			'中金香港公司'
			WHEN 'E000022' THEN
			'峨眉山发展控股'
			WHEN 'C000327' THEN
			'诚志股份'
			WHEN 'C000121' THEN
			'金桥投资'
			WHEN 'J000627' THEN
			'金世旗'
			WHEN 'S001360' THEN
			'东风股份'
			WHEN 'S005422' THEN
			'四维空间建发'
			WHEN 'S005423' THEN
			'三峡资本'
			WHEN 'S005424' THEN
			'通州湾控股'
			WHEN 'S005425' THEN
			'湖北金融租赁'
			WHEN 'S005426' THEN
			'南昌国资产业'
			WHEN 'S005427' THEN
			'临海城投'
			WHEN 'S005428' THEN
			'国药投资'
			WHEN 'S005429' THEN
			'泽洲城建'
			WHEN 'S005430' THEN
			'赣江建设'
			WHEN 'S005431' THEN
			'新蔡城投'
			WHEN 'S005432' THEN
			'东方影都融创'
			WHEN 'S005433' THEN
			'锡山城建'
			WHEN 'S005434' THEN
			'四川机场集团'
			WHEN 'S005435' THEN
			'印力置业开发'
			WHEN 'S005436' THEN
			'新源水务投资'
			WHEN 'S005437' THEN
			'宿迁东方投资'
			WHEN 'S005438' THEN
			'鑫泉产业'
			WHEN 'S005439' THEN
			'兴福临空'
			WHEN 'S005440' THEN
			'济高公用'
			WHEN 'S005441' THEN
			'播州国投'
			WHEN 'S005442' THEN
			'铜仁城投集团'
			WHEN 'S005443' THEN
			'港鑫汽车物流'
			WHEN 'S005444' THEN
			'中国物流'
			WHEN 'Z001581' THEN
			'海亮股份'
			WHEN 'H000710' THEN
			'湖州新型投资'
			WHEN 'M000077' THEN
			'美盛控股'
			WHEN 'S000992' THEN
			'苏州协鑫'
			WHEN 'J000384' THEN
			'苏交科'
			WHEN 'S001176' THEN
			'阳城农商行'
			WHEN 'C000347' THEN
			'临空投资'
			WHEN 'P000091' THEN
			'夜郎国资'
			WHEN 'S005445' THEN
			'中信银行苏州分行'
			WHEN 'B000389' THEN
			'白城农商行'
			WHEN 'C000441' THEN
			'鼎兴实业'
			WHEN 'L000278' THEN
			'振东建投'
			WHEN 'G000304' THEN
			'来宾工业投资集团'
			WHEN 'Z000993' THEN
			'南太湖集团'
			WHEN 'L000147' THEN
			'老河口公建'
			WHEN 'Y000189' THEN
			'凤凰园经开'
			WHEN 'Q000096' THEN
			'宏利水务'
			WHEN 'H000473' THEN
			'淮安交通控股'
			WHEN 'H000442' THEN
			'杭州银行官巷口支行'
			WHEN 'Q000140' THEN
			'庆元农商行'
			WHEN 'X000214' THEN
			'西湖电子集团'
			WHEN 'Z001474' THEN
			'中国雄安集团'
			WHEN 'G000641' THEN
			'国电宁夏新能源开发'
			WHEN 'Z000858' THEN
			'郑州高新投资'
			WHEN 'W000259' THEN
			'乌鲁木齐高铁综合'
			WHEN 'G000642' THEN
			'国电河北新能源开发'
			WHEN 'H000823' THEN
			'萧山交投'
			WHEN 'N000340' THEN
			'内蒙古国资运营'
			WHEN 'G000533' THEN
			'赛莱拉'
			WHEN 'Z001424' THEN
			'金卡高科'
			WHEN 'H000824' THEN
			'金投融资'
			WHEN 'Z001609' THEN
			'郑州安图实业'
			WHEN 'Y000426' THEN
			'姚江科技投开'
			WHEN 'M000031' THEN
			'花山城投集团'
			WHEN 'R000081' THEN
			'通泰投资'
			WHEN 'R000082' THEN
			'日照水务'
			WHEN 'X000193' THEN
			'华中光彩大市场物业管理'
			WHEN 'J000346' THEN
			'群康食品'
			WHEN 'Z001610' THEN
			'工行山东分行'
			WHEN 'S001343' THEN
			'惠融诚通保理'
			WHEN 'B000344' THEN
			'河套农商行'
			WHEN 'B000345' THEN
			'宏达财金投资集团'
			WHEN 'Z000844' THEN
			'重庆公路物流基建'
			WHEN 'H000711' THEN
			'辉县农商行'
			WHEN 'L000169' THEN
			'耒阳国资经营'
			WHEN 'S006762' THEN
			'中伟股份'
			WHEN 'S006763' THEN
			'福立旺'
			WHEN 'S006764' THEN
			'通商集团'
			WHEN 'Y000220' THEN
			'滨河公司'
			WHEN 'S005882' THEN
			'山科智能'
			WHEN 'W000094' THEN
			'正通联合'
			WHEN 'S006765' THEN
			'中信银行东莞分行'
			WHEN 'H000541' THEN
			'恒泰艾普'
			WHEN 'Y000221' THEN
			'禹洲集团'
			WHEN 'S000762' THEN
			'四川金顶'
			WHEN 'C000195' THEN
			'润弘投资'
			WHEN 'J000476' THEN
			'盛泽投资'
			WHEN 'G000371' THEN
			'珠江投管集团'
			WHEN 'J000477' THEN
			'常州金坛交通产业'
			WHEN 'G000372' THEN
			'广州金控'
			WHEN 'G000373' THEN
			'广州基金'
			WHEN 'S005883' THEN
			'黄岩经开集团'
			WHEN 'Q000106' THEN
			'麒麟建投'
			WHEN 'S005884' THEN
			'通商律所'
			WHEN 'S005885' THEN
			'农发行安庆市分行营业部'
			WHEN 'S005446' THEN
			'兴蓉西城运'
			WHEN 'S005447' THEN
			'杭州湾建发'
			WHEN 'S006766' THEN
			'能投资本'
			WHEN 'S005886' THEN
			'农行总行营业部'
			WHEN 'S005887' THEN
			'广信君达律所'
			WHEN 'S000763' THEN
			'上海资信'
			WHEN 'N000241' THEN
			'内蒙古银行'
			WHEN 'S005448' THEN
			'维康药业'
			WHEN 'S005449' THEN
			'天普股份'
			WHEN 'S005450' THEN
			'金春股份'
			WHEN 'S005451' THEN
			'派克新材'
			WHEN 'S005452' THEN
			'键凯科技'
			WHEN 'S001440' THEN
			'永达融资'
			WHEN 'S005453' THEN
			'双龙空港置业'
			WHEN 'T000189' THEN
			'天津渤海化工集团'
			WHEN 'T000188' THEN
			'渤化股份'
			WHEN 'S005454' THEN
			'陕州财经开发'
			WHEN 'S005455' THEN
			'简投集团'
			WHEN 'S005456' THEN
			'铜川国投'
			WHEN 'D000118' THEN
			'东方电气'
			WHEN 'S005457' THEN
			'烽火集团'
			WHEN 'D000123' THEN
			'大连农商行'
			WHEN 'S005458' THEN
			'句容经开'
			WHEN 'G000281' THEN
			'国家核电'
			WHEN 'S000577' THEN
			'苏州园林投资集团'
			WHEN 'S000993' THEN
			'张店农商行'
			WHEN 'Z000929' THEN
			'广天日月集团'
			WHEN 'X000198' THEN
			'新华水电'
			WHEN 'G000676' THEN
			'广东旅控集团'
			WHEN 'Z001296' THEN
			'新昌浦发村镇银行'
			WHEN 'J000854' THEN
			'荆门交旅'
			WHEN 'X000199' THEN
			'新华水力'
			WHEN 'W000235' THEN
			'无锡惠基'
			WHEN 'B000331' THEN
			'隆基泰和'
			WHEN 'A000142' THEN
			'西秀城投'
			WHEN 'H000688' THEN
			'合盛硅业'
			WHEN 'G000461' THEN
			'腾越建筑'
			WHEN 'W000230' THEN
			'铜官投资建设'
			WHEN 'Q000127' THEN
			'黔西南州城投'
			WHEN 'Y000295' THEN
			'泰佳鑫公司'
			WHEN 'J000609' THEN
			'神华集团'
			WHEN 'L000135' THEN
			'金阳投资集团'
			WHEN 'A000084' THEN
			'虹阳投资'
			WHEN 'F000095' THEN
			'阜宁城投'
			WHEN 'B000215' THEN
			'华索科技'
			WHEN 'S000589' THEN
			'沣西新城'
			WHEN 'C000126' THEN
			'江南花都'
			WHEN 'X000200' THEN
			'兴业银行西安分行'
			WHEN 'B000390' THEN
			'本溪银行'
			WHEN 'G000540' THEN
			'宏桂资本'
			WHEN 'S001195' THEN
			'四川广电'
			WHEN 'N000347' THEN
			'南京江北投资'
			WHEN 'C000141' THEN
			'万林投资'
			WHEN 'Y000365' THEN
			'英大财险'
			WHEN 'H000825' THEN
			'华润融资租赁'
			WHEN 'C000280' THEN
			'郴州文旅'
			WHEN 'C000400' THEN
			'千岛湖建设集团'
			WHEN 'A000196' THEN
			'安吉租赁'
			WHEN 'S001233' THEN
			'基石资管'
			WHEN 'P000047' THEN
			'神马机械集团'
			WHEN 'B000434' THEN
			'标普中国'
			WHEN 'L000310' THEN
			'路劲地产'
			WHEN 'H000937' THEN
			'海伦堡控股'
			WHEN 'X000367' THEN
			'西藏政府'
			WHEN 'S006767' THEN
			'永冠科发'
			WHEN 'D000163' THEN
			'大新华航空'
			WHEN 'X000262' THEN
			'华凌集团'
			WHEN 'H000542' THEN
			'海安动改'
			WHEN 'S006768' THEN
			'明冠新材'
			WHEN 'S006769' THEN
			'悦康药业'
			WHEN 'S006770' THEN
			'通源环境'
			WHEN 'S006771' THEN
			'萍乡国投集团'
			WHEN 'S006772' THEN
			'瑞丽建投控股'
			WHEN 'C000196' THEN
			'西太湖旅游'
			WHEN 'D000164' THEN
			'都匀市城建投资'
			WHEN 'S000764' THEN
			'秦汉新城'
			WHEN 'S005888' THEN
			'帅丰电器'
			WHEN 'S005889' THEN
			'巴比食品'
			WHEN 'J000478' THEN
			'射阳农商行'
			WHEN 'S005890' THEN
			'绿洲新城'
			WHEN 'S005891' THEN
			'攸州国投'
			WHEN 'S006773' THEN
			'招商证券上海分公司'
			WHEN 'S000417' THEN
			'山东黄金'
			WHEN 'S005892' THEN
			'新希望'
			WHEN 'Y000450' THEN
			'叙州国资'
			WHEN 'Z000873' THEN
			'渝开发'
			WHEN 'H001008' THEN
			'迪士尼'
			WHEN 'S005459' THEN
			'聚鑫国投'
			WHEN 'B000216' THEN
			'石景山国资'
			WHEN 'J000352' THEN
			'长青股份'
			WHEN 'S000590' THEN
			'新纶科技'
			WHEN 'Z000874' THEN
			'农行慈溪分行'
			WHEN 'Z000859' THEN
			'中国十四冶'
			WHEN 'S000951' THEN
			'前海微众银行'
			WHEN 'H000689' THEN
			'豫能控股'
			WHEN 'Z000652' THEN
			'郑发投资'
			WHEN 'B000213' THEN
			'云政金融'
			WHEN 'Y000296' THEN
			'宜昌交投'
			WHEN 'K000062' THEN
			'凯里文化旅游'
			WHEN 'C000127' THEN
			'慈溪建设集团'
			WHEN 'Z000875' THEN
			'太平洋财险'
			WHEN 'J000715' THEN
			'安东控股'
			WHEN 'G000620' THEN
			'万里马'
			WHEN 'C000442' THEN
			'长春集团'
			WHEN 'K000087' THEN
			'克明面业'
			WHEN 'S005460' THEN
			'九龙仓置业'
			WHEN 'S005461' THEN
			'世纪互联'
			WHEN 'S005462' THEN
			'null'
			WHEN 'S005463' THEN
			'祥生地产'
			WHEN 'S005464' THEN
			'金沙中国'
			WHEN 'S005465' THEN
			'新创建集团'
			WHEN 'S005466' THEN
			'南洋商业银行'
			WHEN 'S005467' THEN
			'临空'
			WHEN 'S005468' THEN
			'明发集团'
			WHEN 'S005469' THEN
			'美高梅中国'
			WHEN 'S005470' THEN
			'昆仑能源'
			WHEN 'S005471' THEN
			'京东'
			WHEN 'S005472' THEN
			'工银国际'
			WHEN 'S005473' THEN
			'工银国际'
			WHEN 'S005474' THEN
			'香港航空'
			WHEN 'S005475' THEN
			'null'
			WHEN 'S005476' THEN
			'null'
			WHEN 'S005477' THEN
			'湖州经投发集'
			WHEN 'S005478' THEN
			'null'
			WHEN 'S005479' THEN
			'null'
			WHEN 'S005480' THEN
			'船舶航运'
			WHEN 'S005481' THEN
			'中远海运'
			WHEN 'S005482' THEN
			'长江基建集团'
			WHEN 'S005483' THEN
			'中信国际电讯'
			WHEN 'S005484' THEN
			'招商永隆'
			WHEN 'S005485' THEN
			'华润燃气'
			WHEN 'S005486' THEN
			'中国地产'
			WHEN 'S005487' THEN
			'中科智担保'
			WHEN 'S005488' THEN
			'华信能源'
			WHEN 'S005489' THEN
			'哔哩哔哩'
			WHEN 'S005490' THEN
			'北京建设'
			WHEN 'S005491' THEN
			'null'
			WHEN 'S005492' THEN
			'富通保险'
			WHEN 'S005493' THEN
			'亚洲铝业'
			WHEN 'S005494' THEN
			'null'
			WHEN 'S005495' THEN
			'北京燃气蓝天'
			WHEN 'S005496' THEN
			'中渝置地'
			WHEN 'S005497' THEN
			'中渔集团'
			WHEN 'S005498' THEN
			'null'
			WHEN 'S005499' THEN
			'普汇中金国际'
			WHEN 'S005500' THEN
			'鹰君资产'
			WHEN 'S005501' THEN
			'大宇集团'
			WHEN 'S005502' THEN
			'null'
			WHEN 'S005503' THEN
			'null'
			WHEN 'S005504' THEN
			'富龙投资'
			WHEN 'S005505' THEN
			'富卫集团'
			WHEN 'S005506' THEN
			'null'
			WHEN 'S005507' THEN
			'嘉民物流'
			WHEN 'S005508' THEN
			'null'
			WHEN 'S005509' THEN
			'null'
			WHEN 'S005510' THEN
			'null'
			WHEN 'S005511' THEN
			'null'
			WHEN 'S005512' THEN
			'null'
			WHEN 'S005513' THEN
			'null'
			WHEN 'S005514' THEN
			'null'
			WHEN 'S005515' THEN
			'嘉里建设'
			WHEN 'S005516' THEN
			'乐明国际'
			WHEN 'S005517' THEN
			'瑞幸咖啡'
			WHEN 'S005518' THEN
			'null'
			WHEN 'S005519' THEN
			'null'
			WHEN 'S005520' THEN
			'null'
			WHEN 'S005521' THEN
			'null'
			WHEN 'S005522' THEN
			'null'
			WHEN 'S005523' THEN
			'null'
			WHEN 'S005524' THEN
			'null'
			WHEN 'S005525' THEN
			'null'
			WHEN 'S005526' THEN
			'权汇'
			WHEN 'S005527' THEN
			'null'
			WHEN 'S005528' THEN
			'富豪酒店国际'
			WHEN 'S005529' THEN
			'香格里拉(亚洲)'
			WHEN 'S005530' THEN
			'新濠博亚'
			WHEN 'S005531' THEN
			'太古地产'
			WHEN 'S005532' THEN
			'太古股份'
			WHEN 'S005533' THEN
			'null'
			WHEN 'S005534' THEN
			'null'
			WHEN 'S005535' THEN
			'众安在线'
			WHEN 'B000217' THEN
			'祥顺达工贸'
			WHEN 'Z000962' THEN
			'浙江永强'
			WHEN 'Q000082' THEN
			'豪士诚能源'
			WHEN 'S001441' THEN
			'沁水农商行'
			WHEN 'G000462' THEN
			'益佰制药'
			WHEN 'H000712' THEN
			'宝丰农商行'
			WHEN 'G000565' THEN
			'国网租赁'
			WHEN 'Q000089' THEN
			'青海水电集团'
			WHEN 'Z000963' THEN
			'中建材进出口'
			WHEN 'X000220' THEN
			'西部机场'
			WHEN 'Z000964' THEN
			'中交广航'
			WHEN 'H000456' THEN
			'华电湖北发电'
			WHEN 'C000413' THEN
			'万州经济开发集团'
			WHEN 'K000036' THEN
			'昆明经投'
			WHEN 'J000740' THEN
			'济南轨道交通'
			WHEN 'H000859' THEN
			'洞庭资源'
			WHEN 'T000327' THEN
			'桃源城投'
			WHEN 'S000952' THEN
			'湖滨农商行'
			WHEN 'J000803' THEN
			'济南金控'
			WHEN 'C000281' THEN
			'万盛城投'
			WHEN 'H000860' THEN
			'邓州农商行'
			WHEN 'P000098' THEN
			'沛县经开'
			WHEN 'J000479' THEN
			'紫金农商行'
			WHEN 'C000197' THEN
			'淳安农商行'
			WHEN 'S005893' THEN
			'北京控股'
			WHEN 'S005894' THEN
			'香港中旅'
			WHEN 'S005895' THEN
			'开远兴远集团'
			WHEN 'Z001101' THEN
			'农行平凉分行'
			WHEN 'H000543' THEN
			'中孚电力'
			WHEN 'S000765' THEN
			'凯嘉能源'
			WHEN 'S005896' THEN
			'平阳城投'
			WHEN 'S005897' THEN
			'宏力达'
			WHEN 'S005536' THEN
			'null'
			WHEN 'S005537' THEN
			'null'
			WHEN 'S005538' THEN
			'爱奇艺'
			WHEN 'S005898' THEN
			'中审华深圳分所'
			WHEN 'S005899' THEN
			'华润置地投资'
			WHEN 'S005900' THEN
			'欧亚开发银行'
			WHEN 'S005901' THEN
			'华润投创深圳'
			WHEN 'S005902' THEN
			'诸暨交建'
			WHEN 'S005903' THEN
			'鞍钢集团资本'
			WHEN 'S005904' THEN
			'云南宝象物流'
			WHEN 'S005905' THEN
			'苏高新福瑞'
			WHEN 'S005906' THEN
			'建恒润和地产'
			WHEN 'S005907' THEN
			'文化科技担保'
			WHEN 'S005908' THEN
			'粤财金融租赁'
			WHEN 'S005909' THEN
			'青羊城乡建设'
			WHEN 'S005910' THEN
			'力合科创集团'
			WHEN 'S005911' THEN
			'北海国资'
			WHEN 'G000282' THEN
			'杰赛科技'
			WHEN 'Z000860' THEN
			'中国电子科技财务'
			WHEN 'S005539' THEN
			'时空科技'
			WHEN 'S005540' THEN
			'鈊渝金融租赁'
			WHEN 'S005541' THEN
			'西安高新热力'
			WHEN 'S005542' THEN
			'骧远投资'
			WHEN 'S005543' THEN
			'开福城投'
			WHEN 'S005544' THEN
			'长沙水业集团'
			WHEN 'S001136' THEN
			'南方同正'
			WHEN 'Y000371' THEN
			'翠屏国资'
			WHEN 'S001361' THEN
			'联得装备'
			WHEN 'G000294' THEN
			'广汽汇理'
			WHEN 'Z001611' THEN
			'招行天津分行'
			WHEN 'X000356' THEN
			'西王食品'
			WHEN 'Z001319' THEN
			'中储棉公司'
			WHEN 'Z001320' THEN
			'中储粮'
			WHEN 'K000068' THEN
			'积大制药'
			WHEN 'N000178' THEN
			'昌工控股'
			WHEN 'J000795' THEN
			'金能科技'
			WHEN 'G000569' THEN
			'水城水投'
			WHEN 'Z001475' THEN
			'工行六盘水分行'
			WHEN 'J000796' THEN
			'金轮股份'
			WHEN 'C000282' THEN
			'长安责任保险'
			WHEN 'Z001321' THEN
			'中国国贸'
			WHEN 'C000283' THEN
			'矿石码头股份'
			WHEN 'H000713' THEN
			'华融实业'
			WHEN 'B000229' THEN
			'北京奔驰'
			WHEN 'C000284' THEN
			'长春燃气'
			WHEN 'C000269' THEN
			'海尔云贷'
			WHEN 'H000690' THEN
			'兴淮水务'
			WHEN 'L000213' THEN
			'京御房产'
			WHEN 'C000270' THEN
			'望城建投'
			WHEN 'M000050' THEN
			'茂业商业'
			WHEN 'J000855' THEN
			'江苏银行北京分行'
			WHEN 'Z000965' THEN
			'中城投六局'
			WHEN 'C000443' THEN
			'龙廷城建'
			WHEN 'N000182' THEN
			'南京公路集团'
			WHEN 'T000204' THEN
			'泰州医药城'
			WHEN 'S001362' THEN
			'浦发银行天津分行'
			WHEN 'C000142' THEN
			'成都兴旅'
			WHEN 'S001363' THEN
			'中际投资'
			WHEN 'L000141' THEN
			'祥云投资'
			WHEN 'S000638' THEN
			'邵东建投'
			WHEN 'Z001612' THEN
			'邹城恒泰建发'
			WHEN 'Y000297' THEN
			'雅安农商行'
			WHEN 'X000484' THEN
			'西安航天高技术公司'
			WHEN 'J000610' THEN
			'润和科技'
			WHEN 'J000812' THEN
			'婺城城乡建投'
			WHEN 'S000953' THEN
			'中盛创业'
			WHEN 'J000804' THEN
			'晋阳资管'
			WHEN 'Z000845' THEN
			'重庆农商行綦江支行'
			WHEN 'R000031' THEN
			'日照经发区国资管理公司'
			WHEN 'H000408' THEN
			'北山投资'
			WHEN 'G000628' THEN
			'贵州水投集团'
			WHEN 'F000105' THEN
			'福州建设发展'
			WHEN 'S000639' THEN
			'阳煤丰喜'
			WHEN 'Z000966' THEN
			'中交隧道'
			WHEN 'D000132' THEN
			'达州发展'
			WHEN 'X000221' THEN
			'万楼新城公司'
			WHEN 'N000197' THEN
			'内蒙华电'
			WHEN 'H000457' THEN
			'骏化发展'
			WHEN 'G000314' THEN
			'国能华北'
			WHEN 'S000640' THEN
			'铁西国资'
			WHEN 'Y000307' THEN
			'义乌建投集团'
			WHEN 'Y000427' THEN
			'银城国际控股'
			WHEN 'S005912' THEN
			'世纪互联'
			WHEN 'S005913' THEN
			'秦川机床'
			WHEN 'S005914' THEN
			'null'
			WHEN 'S005915' THEN
			'三明经开集团'
			WHEN 'S005916' THEN
			'晏站涂建设'
			WHEN 'S005917' THEN
			'三门经投开发'
			WHEN 'S005918' THEN
			'嘉牧投资'
			WHEN 'S005919' THEN
			'万盛商业'
			WHEN 'S005920' THEN
			'隆盛吾悦' ELSE short_name
	END
	);

-- sql8
UPDATE qb_news_public_opinion
SET short_name = (
	CASE
			issuer_code
			WHEN 'S005921' THEN
			'瑞丰国际'
			WHEN 'S005922' THEN
			'绿地海珀'
			WHEN 'S005923' THEN
			'西子联合投资'
			WHEN 'S005924' THEN
			'豫园商城'
			WHEN 'S005925' THEN
			'豫园旅游'
			WHEN 'S005926' THEN
			'利源环保'
			WHEN 'S005927' THEN
			'临汾土储'
			WHEN 'S005928' THEN
			'丽水南城建设'
			WHEN 'S005929' THEN
			'乌钢'
			WHEN 'S005930' THEN
			'中信银行青岛分行'
			WHEN 'S005931' THEN
			'抚州高新发展'
			WHEN 'S005932' THEN
			'泰达国际'
			WHEN 'S005933' THEN
			'沣东控股'
			WHEN 'S005934' THEN
			'宣汉城乡建设'
			WHEN 'S005935' THEN
			'魏都投资'
			WHEN 'S005936' THEN
			'银川金控'
			WHEN 'S005937' THEN
			'怀柔科学城'
			WHEN 'S005938' THEN
			'云南铁路'
			WHEN 'S005939' THEN
			'滨江投资发展'
			WHEN 'S005940' THEN
			'海象新材'
			WHEN 'S005941' THEN
			'嘉定颐和'
			WHEN 'S005942' THEN
			'嘉宏房地产'
			WHEN 'S005943' THEN
			'嘉宝神马'
			WHEN 'S005944' THEN
			'嘉宝奇伊'
			WHEN 'S005945' THEN
			'埃玛矿业'
			WHEN 'S005946' THEN
			'乌兰浩特建投'
			WHEN 'S005947' THEN
			'双欣资源'
			WHEN 'S005948' THEN
			'海亮房地产'
			WHEN 'S005949' THEN
			'珠江壹号'
			WHEN 'S005950' THEN
			'陕西环保集团'
			WHEN 'S005951' THEN
			'厦门国际物流'
			WHEN 'S005952' THEN
			'上海投资管理'
			WHEN 'S005953' THEN
			'象屿物业'
			WHEN 'N000354' THEN
			'旭升股份'
			WHEN 'S005954' THEN
			'建能实业'
			WHEN 'S005955' THEN
			'江铃集团'
			WHEN 'W000263' THEN
			'梧州城投'
			WHEN 'Y000372' THEN
			'易盛德产业'
			WHEN 'S005956' THEN
			'中电建贵阳'
			WHEN 'S005957' THEN
			'新疆国投'
			WHEN 'B000398' THEN
			'碧桂园地产'
			WHEN 'F000090' THEN
			'福建七匹狼集团'
			WHEN 'Z000906' THEN
			'浙能电力'
			WHEN 'A000216' THEN
			'开润股份'
			WHEN 'S001364' THEN
			'麦格米特'
			WHEN 'N000299' THEN
			'南通太平洋'
			WHEN 'X000368' THEN
			'深圳星河实业'
			WHEN 'S000994' THEN
			'大海集团'
			WHEN 'B000220' THEN
			'宝钛股份'
			WHEN 'G000277' THEN
			'广西物资集团'
			WHEN 'J000611' THEN
			'捷信金融'
			WHEN 'Z001613' THEN
			'工行天津分行'
			WHEN 'B000221' THEN
			'中南钢铁'
			WHEN 'H000416' THEN
			'杭州银行湖墅支行'
			WHEN 'H000417' THEN
			'拱墅投资'
			WHEN 'J000612' THEN
			'晋商信用增进'
			WHEN 'C000361' THEN
			'渝垫国资'
			WHEN 'Q000076' THEN
			'曲靖投资集团'
			WHEN 'F000099' THEN
			'繁昌建投'
			WHEN 'H000474' THEN
			'华夏幸福基业'
			WHEN 'Z000907' THEN
			'建行繁昌支行'
			WHEN 'H000475' THEN
			'园兴投资'
			WHEN 'G000321' THEN
			'国泰租赁'
			WHEN 'Z000861' THEN
			'工行昌乐支行'
			WHEN 'C000420' THEN
			'重庆南新产投'
			WHEN 'M000032' THEN
			'新金叶'
			WHEN 'S001365' THEN
			'艇湖新兴'
			WHEN 'J000421' THEN
			'交行桂林分行'
			WHEN 'T000314' THEN
			'浩通物产'
			WHEN 'F000100' THEN
			'福鼎城投'
			WHEN 'D000203' THEN
			'丹阳投资'
			WHEN 'N000341' THEN
			'农银人寿'
			WHEN 'H000714' THEN
			'韩城城投'
			WHEN 'T000281' THEN
			'天长城投'
			WHEN 'R000034' THEN
			'人本集团'
			WHEN 'D000133' THEN
			'建龙北满'
			WHEN 'X000485' THEN
			'兴业银行广州分行'
			WHEN 'Z001614' THEN
			'民生银行深圳分行'
			WHEN 'S000954' THEN
			'临清农商行'
			WHEN 'B000450' THEN
			'大成(上海)'
			WHEN 'Z001615' THEN
			'建行安徽分行'
			WHEN 'H000691' THEN
			'恒生银行'
			WHEN 'H000692' THEN
			'正阳农商行'
			WHEN 'S006774' THEN
			'东方富海'
			WHEN 'S006775' THEN
			'中金公司深圳分公司'
			WHEN 'S005958' THEN
			'富卫保险'
			WHEN 'S005959' THEN
			'金融街资管'
			WHEN 'S005960' THEN
			'莱钢集团'
			WHEN 'S005961' THEN
			'青建物流'
			WHEN 'S005962' THEN
			'溧水清源水务'
			WHEN 'S005963' THEN
			'楚雄国投'
			WHEN 'S005964' THEN
			'江苏嘉亭'
			WHEN 'S005965' THEN
			'武汉长发'
			WHEN 'S005966' THEN
			'海投房产'
			WHEN 'S005967' THEN
			'恒远国投'
			WHEN 'S005968' THEN
			'德美奥翔'
			WHEN 'S005969' THEN
			'南方希望'
			WHEN 'S005970' THEN
			'大连机床营销'
			WHEN 'S006776' THEN
			'吉大正元'
			WHEN 'S006777' THEN
			'润阳科技'
			WHEN 'S006778' THEN
			'振邦智能'
			WHEN 'S005971' THEN
			'远洲大酒店'
			WHEN 'S005972' THEN
			'长风置业'
			WHEN 'S006779' THEN
			'河北高速集团'
			WHEN 'S005973' THEN
			'燕山建安'
			WHEN 'S005974' THEN
			'上陵房产'
			WHEN 'S006780' THEN
			'南凌科技'
			WHEN 'S005648' THEN
			'印度国家银行'
			WHEN 'S005975' THEN
			'汇和投资'
			WHEN 'S005976' THEN
			'日本永翔'
			WHEN 'S005977' THEN
			'宁波世茂'
			WHEN 'S006781' THEN
			'金圆统一证券'
			WHEN 'S005978' THEN
			'宁波中建物管'
			WHEN 'S005979' THEN
			'信达物管'
			WHEN 'S005980' THEN
			'建银物管'
			WHEN 'S005981' THEN
			'青岛宏方物业'
			WHEN 'S005982' THEN
			'信达银通物业'
			WHEN 'S006782' THEN
			'北塘城投'
			WHEN 'S005983' THEN
			'君禾投资'
			WHEN 'S005984' THEN
			'杉杉科技宁波分公司'
			WHEN 'S005985' THEN
			'云南文投'
			WHEN 'S005986' THEN
			'金龙鱼'
			WHEN 'S005987' THEN
			'延平国运'
			WHEN 'S005988' THEN
			'佛水环保'
			WHEN 'S005989' THEN
			'光大银行重庆分行'
			WHEN 'T000331' THEN
			'崇德投资'
			WHEN 'S005990' THEN
			'中建上信'
			WHEN 'S005991' THEN
			'旭晟控股'
			WHEN 'S005992' THEN
			'引力保理'
			WHEN 'S005993' THEN
			'启惠益通保理'
			WHEN 'S005994' THEN
			'新集煤电'
			WHEN 'S005995' THEN
			'富阳地产'
			WHEN 'S005996' THEN
			'山东光彩投资'
			WHEN 'F000182' THEN
			'凤阳经投'
			WHEN 'G000570' THEN
			'民乐农商行'
			WHEN 'X000230' THEN
			'新余渝水城建投开'
			WHEN 'Z000876' THEN
			'重庆轨道交通'
			WHEN 'A000174' THEN
			'长丰农商行'
			WHEN 'H000782' THEN
			'轩达建投'
			WHEN 'X000209' THEN
			'西南水泥'
			WHEN 'S001177' THEN
			'玲珑轮胎'
			WHEN 'S000565' THEN
			'广电网络'
			WHEN 'Q000097' THEN
			'青岛海湾集团'
			WHEN 'J000361' THEN
			'中小企业'
			WHEN 'J000613' THEN
			'九龙仓集团'
			WHEN 'R000035' THEN
			'凌云海糖业集团'
			WHEN 'L000249' THEN
			'六枝水务'
			WHEN 'G000315' THEN
			'工银租赁'
			WHEN 'N000166' THEN
			'南瑞集团'
			WHEN 'M000078' THEN
			'宁博投资'
			WHEN 'D000125' THEN
			'德兴投资'
			WHEN 'Z000846' THEN
			'长寿旅业开发'
			WHEN 'L000274' THEN
			'利尔化学'
			WHEN 'J000741' THEN
			'江苏交通控股'
			WHEN 'Z000877' THEN
			'工行九龙坡支行'
			WHEN 'Z000878' THEN
			'九龙园集团'
			WHEN 'D000140' THEN
			'轩岗煤电'
			WHEN 'S000670' THEN
			'光韵达'
			WHEN 'N000198' THEN
			'萌业粮油'
			WHEN 'L000142' THEN
			'信通印刷'
			WHEN 'Q000077' THEN
			'青岛市政府'
			WHEN 'S001366' THEN
			'建艺集团'
			WHEN 'Q000078' THEN
			'青岛农商行'
			WHEN 'X000486' THEN
			'兴业国兴资管'
			WHEN 'H000959' THEN
			'宏泰贸易'
			WHEN 'G000643' THEN
			'贵港交投'
			WHEN 'Z000967' THEN
			'新大集团'
			WHEN 'K000040' THEN
			'开滦集团'
			WHEN 'C000271' THEN
			'兴锦建投'
			WHEN 'J000347' THEN
			'济高控股'
			WHEN 'X000194' THEN
			'兴业银行济南分行'
			WHEN 'Y000298' THEN
			'益阳集合'
			WHEN 'Z000994' THEN
			'建行淮安分行'
			WHEN 'T000213' THEN
			'津融集团'
			WHEN 'Z000995' THEN
			'浙商银行温州分行'
			WHEN 'Z000996' THEN
			'瓯海城建投'
			WHEN 'A000217' THEN
			'休宁农商行'
			WHEN 'T000328' THEN
			'华友控股'
			WHEN 'H000861' THEN
			'汇通租赁'
			WHEN 'H000960' THEN
			'华融湘江银行邵东支行'
			WHEN 'S006783' THEN
			'国创资本'
			WHEN 'S006784' THEN
			'鄞通集团'
			WHEN 'S006785' THEN
			'一鸣食品'
			WHEN 'S006786' THEN
			'天秦装备'
			WHEN 'S006787' THEN
			'云南房投'
			WHEN 'S006788' THEN
			'宿州交旅集团'
			WHEN 'S006789' THEN
			'阳澄湖投资'
			WHEN 'S006790' THEN
			'深业资本'
			WHEN 'S006791' THEN
			'盛铜控股集团'
			WHEN 'S006792' THEN
			'国开新能源'
			WHEN 'S006793' THEN
			'创新谷发集团'
			WHEN 'S006794' THEN
			'潍坊农信社'
			WHEN 'S005545' THEN
			'建工京信基金'
			WHEN 'D000165' THEN
			'东方网力'
			WHEN 'J000480' THEN
			'如东农商行'
			WHEN 'B000399' THEN
			'北控清洁'
			WHEN 'H000783' THEN
			'济川药业'
			WHEN 'Z001476' THEN
			'中交路建'
			WHEN 'Z001477' THEN
			'中再寿险'
			WHEN 'G000520' THEN
			'云岩基建'
			WHEN 'G000287' THEN
			'海格通信'
			WHEN 'Y000451' THEN
			'亚太财险'
			WHEN 'B000218' THEN
			'空港股份'
			WHEN 'S005546' THEN
			'圣湘生物'
			WHEN 'S005547' THEN
			'中信博'
			WHEN 'S005548' THEN
			'瑞晟智能'
			WHEN 'S005549' THEN
			'顺博合金'
			WHEN 'W000169' THEN
			'苏南机场集团'
			WHEN 'T000363' THEN
			'唐人神'
			WHEN 'G000644' THEN
			'新天药业'
			WHEN 'W000149' THEN
			'太湖新城'
			WHEN 'H000811' THEN
			'艾华集团'
			WHEN 'G000322' THEN
			'省广集团'
			WHEN 'S000605' THEN
			'上海华信石油集团'
			WHEN 'Z000930' THEN
			'瑞丰银行'
			WHEN 'J000805' THEN
			'嘉善水务'
			WHEN 'S005649' THEN
			'贵阳银行黔南分行'
			WHEN 'T000205' THEN
			'大江投资控股'
			WHEN 'C000340' THEN
			'崇仁城投'
			WHEN 'F000091' THEN
			'福建稀土'
			WHEN 'S001178' THEN
			'招商公寓'
			WHEN 'T000358' THEN
			'铜仁农商行'
			WHEN 'Z001478' THEN
			'中建三局'
			WHEN 'R000065' THEN
			'融信租赁'
			WHEN 'S000591' THEN
			'柯桥城建'
			WHEN 'D000141' THEN
			'丹阳开发区高新技术产业'
			WHEN 'T000190' THEN
			'北辰科技园'
			WHEN 'Z000879' THEN
			'巴南实业'
			WHEN 'Z000880' THEN
			'重庆农商行巴南支行'
			WHEN 'S000592' THEN
			'南汇城乡建设'
			WHEN 'A000089' THEN
			'白兔湖'
			WHEN 'H000961' THEN
			'南浔旅游'
			WHEN 'N000393' THEN
			'浦口科学城'
			WHEN 'A000218' THEN
			'安远城投'
			WHEN 'A000219' THEN
			'安徽小额再贷款'
			WHEN 'H000826' THEN
			'合佳医药'
			WHEN 'C000414' THEN
			'长沙证券'
			WHEN 'G000645' THEN
			'国开行上海分行'
			WHEN 'M000095' THEN
			'眉天投集团'
			WHEN 'Z000847' THEN
			'普陀国资'
			WHEN 'H000945' THEN
			'中豫融资担保'
			WHEN 'Z000848' THEN
			'工行舟山分行'
			WHEN 'X000231' THEN
			'新疆生产建设兵团第十师国资'
			WHEN 'S001234' THEN
			'胜华欣业'
			WHEN 'P000110' THEN
			'普华永道中天'
			WHEN 'B000435' THEN
			'中伦'
			WHEN 'H000946' THEN
			'湖北交投财务'
			WHEN 'S000641' THEN
			'文广集团'
			WHEN 'N000199' THEN
			'宁乡城投'
			WHEN 'N000183' THEN
			'慈溪农商行'
			WHEN 'Z000931' THEN
			'中山农商行'
			WHEN 'J000742' THEN
			'东台农商行'
			WHEN 'A000215' THEN
			'安永华明'
			WHEN 'B000436' THEN
			'君泽君'
			WHEN 'Y000428' THEN
			'宜春新城建发'
			WHEN 'C000341' THEN
			'新津城建'
			WHEN 'X000473' THEN
			'兴国城发'
			WHEN 'R000068' THEN
			'产业集聚区'
			WHEN 'S005650' THEN
			'国开行江西分行'
			WHEN 'S005651' THEN
			'国开行四川分行'
			WHEN 'S006795' THEN
			'苏宁控股'
			WHEN 'G000374' THEN
			'桂阳城投'
			WHEN 'S006796' THEN
			'华旺科技'
			WHEN 'S006797' THEN
			'法本信息'
			WHEN 'S006798' THEN
			'研奥股份'
			WHEN 'S006799' THEN
			'南京扬子租赁'
			WHEN 'S005550' THEN
			'浦江国际'
			WHEN 'S006800' THEN
			'黑龙江电力'
			WHEN 'S006801' THEN
			'武汉福星药业'
			WHEN 'S006802' THEN
			'汕头沪美蓄电'
			WHEN 'S006803' THEN
			'价值在线'
			WHEN 'S001247' THEN
			'华源控股'
			WHEN 'N000334' THEN
			'陕坝农商行'
			WHEN 'T000304' THEN
			'台山农商行'
			WHEN 'D000240' THEN
			'东方恒业'
			WHEN 'Z000881' THEN
			'重庆农商行两江新区支行'
			WHEN 'K000081' THEN
			'昆明土地开发'
			WHEN 'N000355' THEN
			'溧水产业'
			WHEN 'G000278' THEN
			'锦龙股份'
			WHEN 'S000995' THEN
			'深圳华强'
			WHEN 'S000996' THEN
			'蓬莱农商行'
			WHEN 'S000997' THEN
			'长岛农商行'
			WHEN 'S000998' THEN
			'海阳农商行'
			WHEN 'S000999' THEN
			'莱阳农商行'
			WHEN 'S001000' THEN
			'招远农商行'
			WHEN 'H000812' THEN
			'恒逸石化'
			WHEN 'S005551' THEN
			'绿的谐波'
			WHEN 'S005552' THEN
			'铁科轨道'
			WHEN 'S005553' THEN
			'苑东生物'
			WHEN 'S005554' THEN
			'新亚强'
			WHEN 'S005555' THEN
			'上海沿浦'
			WHEN 'Z001616' THEN
			'正裕工业'
			WHEN 'L000279' THEN
			'联众新能源'
			WHEN 'Z001582' THEN
			'中行深圳分行'
			WHEN 'C000328' THEN
			'城北投资'
			WHEN 'L000313' THEN
			'理文造纸'
			WHEN 'R000077' THEN
			'瑞声科技'
			WHEN 'Z001583' THEN
			'中国宏泰发展'
			WHEN 'Z000882' THEN
			'空港新城开发'
			WHEN 'H000443' THEN
			'润业投资'
			WHEN 'B000400' THEN
			'毕节天河城投'
			WHEN 'J000362' THEN
			'海门农商行'
			WHEN 'S001344' THEN
			'华商农商行'
			WHEN 'Q000191' THEN
			'动车小镇'
			WHEN 'L000126' THEN
			'神农现代农业'
			WHEN 'Z000997' THEN
			'漳州经发'
			WHEN 'Q000148' THEN
			'青岛世园'
			WHEN 'N000175' THEN
			'盛祥投资'
			WHEN 'Q000083' THEN
			'宁泰鑫环保'
			WHEN 'Z000849' THEN
			'工行营口分行'
			WHEN 'S000566' THEN
			'神木国资'
			WHEN 'X000195' THEN
			'高创投资'
			WHEN 'Z000850' THEN
			'农行孝感市直支行'
			WHEN 'B000437' THEN
			'奋迅'
			WHEN 'W000260' THEN
			'兴融建投'
			WHEN 'H000947' THEN
			'河钢集团财务'
			WHEN 'G000629' THEN
			'赣县城建'
			WHEN 'L000314' THEN
			'临沂经开建投'
			WHEN 'H000476' THEN
			'徽商银行安庆分行'
			WHEN 'L000315' THEN
			'莱芜民生实业'
			WHEN 'H000962' THEN
			'合肥城建'
			WHEN 'Y000423' THEN
			'兖矿东华'
			WHEN 'S000567' THEN
			'宏河集团'
			WHEN 'S006804' THEN
			'恒生银行'
			WHEN 'Z001102' THEN
			'渣打银行(香港)'
			WHEN 'J000481' THEN
			'启东农商行'
			WHEN 'Z001103' THEN
			'嘉善农商行'
			WHEN 'J000482' THEN
			'东海农商行'
			WHEN 'S005997' THEN
			'城峰煤业'
			WHEN 'S005998' THEN
			'相府药业'
			WHEN 'S005999' THEN
			'树德地产'
			WHEN 'S006000' THEN
			'襄矿煤业'
			WHEN 'S006001' THEN
			'巢湖乡振投资'
			WHEN 'S006002' THEN
			'天晟复合'
			WHEN 'S006003' THEN
			'常州西源污水'
			WHEN 'S006004' THEN
			'汇华投资'
			WHEN 'S006005' THEN
			'北海金癸地产'
			WHEN 'S006006' THEN
			'北海房地产'
			WHEN 'S006007' THEN
			'南四湖国投'
			WHEN 'S006008' THEN
			'崇发城建'
			WHEN 'S006009' THEN
			'成都地建'
			WHEN 'S006010' THEN
			'田岭涧投资'
			WHEN 'S006011' THEN
			'新城万博'
			WHEN 'S006012' THEN
			'亚中物流'
			WHEN 'S006805' THEN
			'伟创电气'
			WHEN 'S006806' THEN
			'派能科技'
			WHEN 'S006013' THEN
			'新疆日用'
			WHEN 'Z001566' THEN
			'浙江建融'
			WHEN 'S006014' THEN
			'华凌热力'
			WHEN 'S006015' THEN
			'新郑房地产'
			WHEN 'S006016' THEN
			'无锡宝湾仓储'
			WHEN 'S006807' THEN
			'徐州开发'
			WHEN 'S006017' THEN
			'新都宝湾物流'
			WHEN 'S006018' THEN
			'龙泉宝湾物流'
			WHEN 'S006019' THEN
			'宝湾物流武汉'
			WHEN 'S006020' THEN
			'新西南'
			WHEN 'S006021' THEN
			'景洪开发投资'
			WHEN 'S006022' THEN
			'智安中国'
			WHEN 'T000129' THEN
			'中环股份'
			WHEN 'Z000653' THEN
			'三峡新能源'
			WHEN 'S000418' THEN
			'金晖煤焦'
			WHEN 'Z001104' THEN
			'中科建设'
			WHEN 'C000198' THEN
			'永兴建设'
			WHEN 'L000170' THEN
			'振兴实业'
			WHEN 'S000766' THEN
			'顺风光电'
			WHEN 'S006023' THEN
			'泛亚微透'
			WHEN 'S006024' THEN
			'东鹏控股'
			WHEN 'S006025' THEN
			'熊猫乳品'
			WHEN 'S006026' THEN
			'上海凯鑫'
			WHEN 'C000199' THEN
			'null'
			WHEN 'S006808' THEN
			'瑞安经开发'
			WHEN 'F000125' THEN
			'丰汇租赁'
			WHEN 'S006809' THEN
			'全瑞投资控股'
			WHEN 'S006027' THEN
			'绿城房地产'
			WHEN 'S006810' THEN
			'桐庐文旅集团'
			WHEN 'S006811' THEN
			'兴北实业'
			WHEN 'S006812' THEN
			'黔江旅投'
			WHEN 'S006028' THEN
			'杭州新胜达'
			WHEN 'S006029' THEN
			'株洲水利投'
			WHEN 'S006030' THEN
			'欧亚联营'
			WHEN 'S006031' THEN
			'武汉名流地产'
			WHEN 'S006032' THEN
			'东磁投资'
			WHEN 'S006033' THEN
			'博罗名流'
			WHEN 'S006034' THEN
			'东方豪富'
			WHEN 'S006035' THEN
			'沈阳印象'
			WHEN 'S006036' THEN
			'绿城装饰集团'
			WHEN 'S006037' THEN
			'三阳投资'
			WHEN 'S006038' THEN
			'武汉长凯'
			WHEN 'S006039' THEN
			'三江新城'
			WHEN 'S006040' THEN
			'拉萨金刚'
			WHEN 'S006041' THEN
			'新泉投资'
			WHEN 'S006042' THEN
			'骆氏减震件'
			WHEN 'S006043' THEN
			'萧山城建'
			WHEN 'S006044' THEN
			'远洲旅游'
			WHEN 'Y000222' THEN
			'银河资管'
			WHEN 'S006045' THEN
			'炼焦煤气'
			WHEN 'S006046' THEN
			'沈阳银基置业'
			WHEN 'S006047' THEN
			'兰航化工'
			WHEN 'S006048' THEN
			'信阳毛尖集团'
			WHEN 'H000294' THEN
			'昊华骏化'
			WHEN 'H000295' THEN
			'中小企业'
			WHEN 'S006049' THEN
			'盛润置业'
			WHEN 'S006050' THEN
			'洛秀开建'
			WHEN 'S006051' THEN
			'台商水投'
			WHEN 'S006052' THEN
			'中勤万信湖南分所'
			WHEN 'S006053' THEN
			'渤海银行深圳分行'
			WHEN 'S005556' THEN
			'瑞联新材'
			WHEN 'S005557' THEN
			'恒廷实业'
			WHEN 'S005558' THEN
			'新天地集团'
			WHEN 'S005559' THEN
			'海尔金融保理'
			WHEN 'S005560' THEN
			'新铁鑫建'
			WHEN 'S005561' THEN
			'凯德商用房产'
			WHEN 'S005562' THEN
			'盛康基业装饰'
			WHEN 'S005563' THEN
			'上海旭辉'
			WHEN 'S005564' THEN
			'建材集团'
			WHEN 'S005565' THEN
			'重庆鲁能物业'
			WHEN 'S005566' THEN
			'大唐山西发电'
			WHEN 'S005567' THEN
			'洛阳弘义'
			WHEN 'N000407' THEN
			'内蒙古金管'
			WHEN 'S005568' THEN
			'锦天城(深圳)'
			WHEN 'Z000908' THEN
			'郑州建投'
			WHEN 'G000473' THEN
			'国盛金控'
			WHEN 'L000223' THEN
			'利福国际'
			WHEN 'S001001' THEN
			'章丘农商行'
			WHEN 'S001002' THEN
			'栖霞农商行'
			WHEN 'H000813' THEN
			'杭电股份'
			WHEN 'L000316' THEN
			'辽宁能源'
			WHEN 'M000052' THEN
			'马鞍山建投'
			WHEN 'X000210' THEN
			'西安世园投资'
			WHEN 'F000096' THEN
			'福安城市建投'
			WHEN 'Q000175' THEN
			'柯城国资经营'
			WHEN 'J000806' THEN
			'苏亚金诚'
			WHEN 'B000385' THEN
			'北方铜业'
			WHEN 'S001345' THEN
			'浦发银行北京分行'
			WHEN 'Z001707' THEN
			'遵义文旅'
			WHEN 'H000423' THEN
			'衡阳白沙洲'
			WHEN 'Z001584' THEN
			'招行北京分行'
			WHEN 'B000438' THEN
			'天驰洪范'
			WHEN 'X000474' THEN
			'新乡平原投资集团'
			WHEN 'T000282' THEN
			'天弘创新'
			WHEN 'B000223' THEN
			'北京天路通'
			WHEN 'C000134' THEN
			'得和明兴'
			WHEN 'H000715' THEN
			'安阳商都农商行'
			WHEN 'N000300' THEN
			'贺兰农商行'
			WHEN 'Y000366' THEN
			'江来实业'
			WHEN 'M000027' THEN
			'绵阳商行'
			WHEN 'F000218' THEN
			'石狮产业'
			WHEN 'C000358' THEN
			'重庆机场集团'
			WHEN 'B000439' THEN
			'电子城建设公司'
			WHEN 'N000385' THEN
			'宁南贸易'
			WHEN 'H000814' THEN
			'祁阳农商行'
			WHEN 'S001346' THEN
			'三角咀'
			WHEN 'J000716' THEN
			'沭阳东吴村镇行'
			WHEN 'B000219' THEN
			'北京政府'
			WHEN 'Y000424' THEN
			'上海清算所'
			WHEN 'S001347' THEN
			'浦发银行上海分行'
			WHEN 'B000440' THEN
			'环球'
			WHEN 'X000423' THEN
			'新力'
			WHEN 'Z001585' THEN
			'中审众环'
			WHEN 'Z001586' THEN
			'邮储银行北京分行'
			WHEN 'B000441' THEN
			'大成'
			WHEN 'D000272' THEN
			'德勤华永'
			WHEN 'S006813' THEN
			'能信热电'
			WHEN 'S006814' THEN
			'温岭工量刃具'
			WHEN 'H000544' THEN
			'海航机场'
			WHEN 'S006054' THEN
			'泉港山腰盐场'
			WHEN 'S006055' THEN
			'银丰城建'
			WHEN 'S006056' THEN
			'振德控股'
			WHEN 'S006057' THEN
			'正裕投资'
			WHEN 'J000483' THEN
			'扬子大桥'
			WHEN 'S006058' THEN
			'衢州水业'
			WHEN 'S006059' THEN
			'海盐旅投'
			WHEN 'S006060' THEN
			'淮南企业资产'
			WHEN 'S006061' THEN
			'创维'
			WHEN 'S006062' THEN
			'三新地产'
			WHEN 'S006063' THEN
			'农科地产'
			WHEN 'S006064' THEN
			'华拓置业'
			WHEN 'S006065' THEN
			'豫盛投发'
			WHEN 'S006066' THEN
			'至卓飞高'
			WHEN 'S006815' THEN
			'三旺通信'
			WHEN 'S006067' THEN
			'南方香江'
			WHEN 'S006068' THEN
			'拜克生物'
			WHEN 'S006816' THEN
			'历城控股'
			WHEN 'S006069' THEN
			'保利置业'
			WHEN 'S006070' THEN
			'武麻高速'
			WHEN 'S006071' THEN
			'升华地产'
			WHEN 'S006072' THEN
			'百达集团'
			WHEN 'S006073' THEN
			'新榕城建'
			WHEN 'S006817' THEN
			'建行宁波分行'
			WHEN 'S006818' THEN
			'玉林投资集团'
			WHEN 'S006074' THEN
			'澳弘电子'
			WHEN 'S006075' THEN
			'北元集团'
			WHEN 'R000043' THEN
			'日照城投'
			WHEN 'S006076' THEN
			'三明机场'
			WHEN 'Q000107' THEN
			'大通农商行'
			WHEN 'S006077' THEN
			'丹江口投资'
			WHEN 'S005569' THEN
			'迦南智能'
			WHEN 'S005570' THEN
			'大叶股份'
			WHEN 'S005571' THEN
			'山东玻纤'
			WHEN 'S005572' THEN
			'莱伯泰科'
			WHEN 'S005573' THEN
			'宁波滨海城投'
			WHEN 'S005574' THEN
			'虞舜旅游'
			WHEN 'S001442' THEN
			'宿迁新城'
			WHEN 'Y000168' THEN
			'云南白药集团'
			WHEN 'S000606' THEN
			'上海能源'
			WHEN 'S001003' THEN
			'鲁抗医药'
			WHEN 'B000230' THEN
			'首航高科'
			WHEN 'D000126' THEN
			'大连融达'
			WHEN 'F000219' THEN
			'烽火通信'
			WHEN 'X000215' THEN
			'新兴发展集团'
			WHEN 'S001348' THEN
			'克来机电'
			WHEN 'A000085' THEN
			'阿克苏绿色实业'
			WHEN 'S001349' THEN
			'高平农商行'
			WHEN 'G000630' THEN
			'甘肃担保集团'
			WHEN 'S005575' THEN
			'菏泽交通集团'
			WHEN 'S005576' THEN
			'宏信国投'
			WHEN 'S005577' THEN
			'兰州农投集团'
			WHEN 'S005578' THEN
			'嘉兴嘉南投资'
			WHEN 'S005579' THEN
			'吉祥人寿'
			WHEN 'S005580' THEN
			'引江城建'
			WHEN 'S005581' THEN
			'北京怡和置业'
			WHEN 'S005582' THEN
			'鄞州城建'
			WHEN 'S005583' THEN
			'镜湖新农村'
			WHEN 'S005584' THEN
			'长城伟业'
			WHEN 'S005585' THEN
			'国华人寿'
			WHEN 'S005586' THEN
			'恒丰银行日照分行'
			WHEN 'S001443' THEN
			'盛洋电器'
			WHEN 'Y000425' THEN
			'岳阳市水建投'
			WHEN 'F000106' THEN
			'欧神诺'
			WHEN 'G000305' THEN
			'广州国资'
			WHEN 'J000385' THEN
			'嘉隆高科'
			WHEN 'Z000932' THEN
			'浙大网新集团'
			WHEN 'Z000933' THEN
			'国药器械'
			WHEN 'Z000909' THEN
			'蓬莱国投'
			WHEN 'H000430' THEN
			'海宁城投集团'
			WHEN 'B000224' THEN
			'电信易通'
			WHEN 'S000613' THEN
			'高唐泉洁'
			WHEN 'Z001587' THEN
			'天册'
			WHEN 'T000359' THEN
			'天健'
			WHEN 'J000743' THEN
			'俊发集团'
			WHEN 'P000044' THEN
			'恒润城投'
			WHEN 'N000301' THEN
			'乌拉特农商行'
			WHEN 'Z001322' THEN
			'三门银座村镇行'
			WHEN 'S001350' THEN
			'浦发银行广州分行'
			WHEN 'R000078' THEN
			'荣盛建设'
			WHEN 'Z001588' THEN
			'中德联合集团'
			WHEN 'R000079' THEN
			'荣盛控股'
			WHEN 'S000767' THEN
			'上海公积金'
			WHEN 'S006078' THEN
			'中交三公局'
			WHEN 'S006079' THEN
			'国新保理'
			WHEN 'S006080' THEN
			'创达投资建设'
			WHEN 'S006081' THEN
			'镇海发展'
			WHEN 'S006082' THEN
			'欧冶保理'
			WHEN 'S006083' THEN
			'河南路桥'
			WHEN 'S006084' THEN
			'岳阳南湖城投'
			WHEN 'S006085' THEN
			'新合盛租赁'
			WHEN 'S006086' THEN
			'苏州园恒'
			WHEN 'S006087' THEN
			'润铜投发'
			WHEN 'S006088' THEN
			'临泉交建'
			WHEN 'S006089' THEN
			'中福海峡'
			WHEN 'S006090' THEN
			'福清城投'
			WHEN 'S006091' THEN
			'福清交建'
			WHEN 'S006092' THEN
			'东大针织'
			WHEN 'S006093' THEN
			'上虞水建'
			WHEN 'S006094' THEN
			'洪淼供水'
			WHEN 'S006095' THEN
			'宇臻仓储'
			WHEN 'S006096' THEN
			'宇航物流'
			WHEN 'S006097' THEN
			'东太湖开发'
			WHEN 'S006098' THEN
			'科思科技'
			WHEN 'S006099' THEN
			'日久光电'
			WHEN 'S006100' THEN
			'地铁设计'
			WHEN 'S006101' THEN
			'江北科技'
			WHEN 'S006102' THEN
			'曲江金控'
			WHEN 'S006103' THEN
			'工科创投'
			WHEN 'S006104' THEN
			'广大科发'
			WHEN 'S006105' THEN
			'西子联合'
			WHEN 'S006106' THEN
			'吉隆矿业'
			WHEN 'S006107' THEN
			'华泰矿业'
			WHEN 'S006108' THEN
			'灌西投资'
			WHEN 'S006109' THEN
			'宵洋物流'
			WHEN 'S006110' THEN
			'德泽文旅投发'
			WHEN 'S006111' THEN
			'金岭煤业'
			WHEN 'S006112' THEN
			'金星煤业'
			WHEN 'S006113' THEN
			'华研地产'
			WHEN 'S006114' THEN
			'龙湖西街置业'
			WHEN 'L000171' THEN
			'龙里供排水'
			WHEN 'S006115' THEN
			'金科服务'
			WHEN 'S006116' THEN
			'犀牛脚盐场'
			WHEN 'W000194' THEN
			'惠憬城市发展'
			WHEN 'S006117' THEN
			'炬鑫矿业'
			WHEN 'S006118' THEN
			'阿克苏城建'
			WHEN 'B000267' THEN
			'邦信资产'
			WHEN 'W000195' THEN
			'无锡城铁投资'
			WHEN 'Y000223' THEN
			'义乌投建'
			WHEN 'S005587' THEN
			'美高梅国际酒店集团'
			WHEN 'S006119' THEN
			'双欣矿业'
			WHEN 'S006120' THEN
			'鹰潭城资'
			WHEN 'S006121' THEN
			'黄冈升华地产'
			WHEN 'S006122' THEN
			'双第华侨建发'
			WHEN 'Z001404' THEN
			'天台国资'
			WHEN 'S006123' THEN
			'中华保险'
			WHEN 'X000401' THEN
			'协鑫新能源'
			WHEN 'S005588' THEN
			'盛德鑫泰'
			WHEN 'S005589' THEN
			'奥来德'
			WHEN 'L000089' THEN
			'尧都投资'
			WHEN 'X000402' THEN
			'湘潭高新基建'
			WHEN 'G000521' THEN
			'红桥基础设施'
			WHEN 'A000093' THEN
			'九华旅游'
			WHEN 'T000196' THEN
			'天壕环境'
			WHEN 'H000963' THEN
			'得伟君尚'
			WHEN 'S005590' THEN
			'上海银行上海自贸区分行'
			WHEN 'S000607' THEN
			'深圳地铁三号'
			WHEN 'H000716' THEN
			'合力泰'
			WHEN 'F000220' THEN
			'农业信贷银行'
			WHEN 'Z001617' THEN
			'招行武汉分行'
			WHEN 'Z000851' THEN
			'中燃投资'
			WHEN 'Z001323' THEN
			'富民村镇行'
			WHEN 'J000386' THEN
			'金东纸业'
			WHEN 'A000087' THEN
			'马鞍山农商行'
			WHEN 'W000152' THEN
			'芜湖建投'
			WHEN 'Z000934' THEN
			'建行芜湖市分行'
			WHEN 'S000614' THEN
			'浦发银行徐州分行'
			WHEN 'Z001589' THEN
			'六和'
			WHEN 'Z001590' THEN
			'中勤万信'
			WHEN 'J000690' THEN
			'丹阳农商行'
			WHEN 'Z001591' THEN
			'中铝资本'
			WHEN 'G000571' THEN
			'东源农商行'
			WHEN 'X000427' THEN
			'信丰城投'
			WHEN 'R000036' THEN
			'富港建设'
			WHEN 'S000671' THEN
			'石狮城建'
			WHEN 'Z001618' THEN
			'鑫晟投资'
			WHEN 'Q000178' THEN
			'开投集团'
			WHEN 'C000421' THEN
			'金坛同城建设'
			WHEN 'C000152' THEN
			'大足建设'
			WHEN 'C000153' THEN
			'重庆农商行大足支行'
			WHEN 'G000631' THEN
			'甘肃金控'
			WHEN 'S001351' THEN
			'融孚'
			WHEN 'G000541' THEN
			'富力嘉盛置业'
			WHEN 'Z001592' THEN
			'中交物业'
			WHEN 'S001352' THEN
			'山东高速投资控股'
			WHEN 'P000048' THEN
			'盘山国资'
			WHEN 'H000948' THEN
			'岳阳农商行'
			WHEN 'C000285' THEN
			'九洲新世界'
			WHEN 'X000487' THEN
			'徐工基础'
			WHEN 'S006124' THEN
			'徐州公交'
			WHEN 'S006125' THEN
			'鼎君所'
			WHEN 'Y000373' THEN
			'宜华健康'
			WHEN 'S006126' THEN
			'通达投管'
			WHEN 'X000428' THEN
			'兴业消金'
			WHEN 'H000296' THEN
			'华融湘江银行'
			WHEN 'S006127' THEN
			'来宾国投'
			WHEN 'F000069' THEN
			'巴黎银行'
			WHEN 'Q000055' THEN
			'曲靖商行'
			WHEN 'G000522' THEN
			'钟山投资'
			WHEN 'S005652' THEN
			'南昌农商行迎宾支行'
			WHEN 'L000250' THEN
			'六盘水农商行'
			WHEN 'Z001405' THEN
			'招行六盘水分行'
			WHEN 'N000302' THEN
			'中卫农商行'
			WHEN 'Z000998' THEN
			'郑州热力'
			WHEN 'Z001619' THEN
			'招行南京分行'
			WHEN 'J000813' THEN
			'百川股份'
			WHEN 'Z001620' THEN
			'光大银行北京分行'
			WHEN 'J000628' THEN
			'顺风光电'
			WHEN 'G000295' THEN
			'广发银行北京分行'
			WHEN 'B000222' THEN
			'天恒集团'
			WHEN 'X000211' THEN
			'欣旺达'
			WHEN 'S001179' THEN
			'星源材质'
			WHEN 'W000236' THEN
			'江夏农业集团'
			WHEN 'Z000968' THEN
			'卫星石化'
			WHEN 'W000170' THEN
			'南国置业'
			WHEN 'Z000999' THEN
			'电建地产'
			WHEN 'A000187' THEN
			'界首农商行'
			WHEN 'S005653' THEN
			'华业香料'
			WHEN 'S005654' THEN
			'浙海德曼'
			WHEN 'Z001621' THEN
			'中信银行济南分行'
			WHEN 'Y000169' THEN
			'酉桃花源'
			WHEN 'W000160' THEN
			'望城经开投建'
			WHEN 'P000049' THEN
			'双台子区经发'
			WHEN 'G000572' THEN
			'广州资产'
			WHEN 'S005655' THEN
			'华夏银行武汉汉口支行'
			WHEN 'L000131' THEN
			'昆仑城建'
			WHEN 'H000477' THEN
			'兴泰控股'
			WHEN 'Z000910' THEN
			'重庆港务物流'
			WHEN 'H000478' THEN
			'海业基建'
			WHEN 'Z001425' THEN
			'葛洲坝一工'
			WHEN 'H000431' THEN
			'河北交投'
			WHEN 'Z000969' THEN
			'枣庄南郊热电'
			WHEN 'Z000911' THEN
			'重庆松藻煤电'
			WHEN 'Y000190' THEN
			'null'
			WHEN 'N000205' THEN
			'洋口港开发'
			WHEN 'D000142' THEN
			'道县财源建设'
			WHEN 'H000479' THEN
			'华盛园林'
			WHEN 'T000214' THEN
			'天津物产集团'
			WHEN 'F000110' THEN
			'富贵鸟'
			WHEN 'L000259' THEN
			'兰州西站交通枢纽工程'
			WHEN 'R000066' THEN
			'瑞穗银行'
			WHEN 'S005656' THEN
			'华夏银行重庆江北支行'
			WHEN 'S000672' THEN
			'沈经区集合'
			WHEN 'J000717' THEN
			'建信(北京)投资'
			WHEN 'G000296' THEN
			'广西路桥'
			WHEN 'C000154' THEN
			'悦来投资集团'
			WHEN 'Z000970' THEN
			'中国建投'
			WHEN 'S005657' THEN
			'建行太仓分行'
			WHEN 'S005658' THEN
			'江苏银行连云港分行'
			WHEN 'S006128' THEN
			'日照经开城投'
			WHEN 'S005659' THEN
			'交行沧州分行'
			WHEN 'S006819' THEN
			'奥普特'
			WHEN 'S006820' THEN
			'中瓷电子'
			WHEN 'S006821' THEN
			'火星人'
			WHEN 'S006822' THEN
			'兴铜城建投控'
			WHEN 'S005660' THEN
			'交行嘉兴海宁分行'
			WHEN 'S000419' THEN
			'金茂纺织化工集团'
			WHEN 'J000257' THEN
			'江苏政府'
			WHEN 'S005661' THEN
			'交行南通启东支行'
			WHEN 'S006823' THEN
			'龙马建发'
			WHEN 'S005662' THEN
			'交行台州分行'
			WHEN 'S005663' THEN
			'交行盐城分行'
			WHEN 'S005664' THEN
			'交行中山分行'
			WHEN 'H000784' THEN
			'华电融资租赁'
			WHEN 'F000097' THEN
			'中旅集团'
			WHEN 'Z001406' THEN
			'水晶光电'
			WHEN 'X000201' THEN
			'喜临门'
			WHEN 'C000128' THEN
			'成都农商行'
			WHEN 'S001137' THEN
			'宝信软件'
			WHEN 'Z001407' THEN
			'中庚集团'
			WHEN 'H000785' THEN
			'宜阳农商行'
			WHEN 'X000212' THEN
			'新兴新疆控股'
			WHEN 'S000642' THEN
			'山东地矿集团'
			WHEN 'Q000098' THEN
			'七冶建设'
			WHEN 'S000643' THEN
			'山东地矿'
			WHEN 'Z000912' THEN
			'中航电子'
			WHEN 'G000288' THEN
			'广元园区建投'
			WHEN 'X000411' THEN
			'徐工机械'
			WHEN 'Z001708' THEN
			'舟山海洋'
			WHEN 'S001248' THEN
			'云克科技'
			WHEN 'R000069' THEN
			'汝州温泉投建'
			WHEN 'G000323' THEN
			'贵阳高新'
			WHEN 'G000542' THEN
			'保德信资产'
			WHEN 'W000264' THEN
			'淮安高新控股'
			WHEN 'J000374' THEN
			'金鑫建材'
			WHEN 'Y000452' THEN
			'亚太集团'
			WHEN 'G000677' THEN
			'广东信达'
			WHEN 'T000197' THEN
			'泰康保险集团'
			WHEN 'Z000971' THEN
			'中行德宏州分行'
			WHEN 'Z001709' THEN
			'中国水电十六局'
			WHEN 'D000134' THEN
			'德宏国投控股'
			WHEN 'S001235' THEN
			'珠江村镇行'
			WHEN 'Z001464' THEN
			'中国纸业'
			WHEN 'Z001465' THEN
			'中广核租赁'
			WHEN 'D000143' THEN
			'第七师国资'
			WHEN 'H001009' THEN
			'下城国投'
			WHEN 'H000480' THEN
			'呼伦贝尔投资'
			WHEN 'F000111' THEN
			'连江国资投营'
			WHEN 'G000566' THEN
			'国药融资租赁'
			WHEN 'N000206' THEN
			'内蒙古金融投资集团'
			WHEN 'L000148' THEN
			'龙口城乡建投'
			WHEN 'H000827' THEN
			'华明装备'
			WHEN 'G000220' THEN
			'广州浪奇'
			WHEN 'J000744' THEN
			'创鸿资管'
			WHEN 'Z000647' THEN
			'中债资信'
			WHEN 'S006824' THEN
			'天铎'
			WHEN 'S006825' THEN
			'交行贵州分行'
			WHEN 'Z001105' THEN
			'兰溪农商行'
			WHEN 'J000484' THEN
			'泰兴农商行'
			WHEN 'H000545' THEN
			'科技农商行'
			WHEN 'X000263' THEN
			'湘江投资'
			WHEN 'S006826' THEN
			'祖名股份'
			WHEN 'S006827' THEN
			'新亚电子'
			WHEN 'S006828' THEN
			'西大门'
			WHEN 'S006829' THEN
			'亳州交控集团'
			WHEN 'C000200' THEN
			'昌乐新城发展'
			WHEN 'W000196' THEN
			'当代文体'
			WHEN 'S006830' THEN
			'山东黄金创投'
			WHEN 'S006831' THEN
			'大智慧保理'
			WHEN 'S006832' THEN
			'中交上航'
			WHEN 'J000691' THEN
			'临港经济园'
			WHEN 'S001138' THEN
			'申港证券'
			WHEN 'S001249' THEN
			'仁寿农商行'
			WHEN 'S005665' THEN
			'义行所'
			WHEN 'X000202' THEN
			'西安旅游集团'
			WHEN 'W000143' THEN
			'国裕集团'
			WHEN 'S005591' THEN
			'万胜智能'
			WHEN 'S005592' THEN
			'天禾股份'
			WHEN 'S005593' THEN
			'瑞鹄模具'
			WHEN 'S005594' THEN
			'固德威'
			WHEN 'S005595' THEN
			'优彩资源'
			WHEN 'H000481' THEN
			'华远地产'
			WHEN 'S005596' THEN
			'葛化集团'
			WHEN 'G000306' THEN
			'贵人鸟'
			WHEN 'N000356' THEN
			'南乐农商行'
			WHEN 'F000103' THEN
			'富滇银行'
			WHEN 'J000403' THEN
			'江西出版集团'
			WHEN 'S001180' THEN
			'金新农'
			WHEN 'Y000355' THEN
			'德商村镇行'
			WHEN 'N000200' THEN
			'航空港投资'
			WHEN 'J000363' THEN
			'揭阳城投'
			WHEN 'L000127' THEN
			'锑都投资'
			WHEN 'N000357' THEN
			'惠宁建投'
			WHEN 'X000424' THEN
			'新疆产建兵团财政局'
			WHEN 'C000129' THEN
			'百福投资'
			WHEN 'B000332' THEN
			'北海银都'
			WHEN 'G000463' THEN
			'大都投资'
			WHEN 'N000207' THEN
			'宁波供销集团'
			WHEN 'H000444' THEN
			'华能山东发电'
			WHEN 'L000136' THEN
			'兰州新区城投集团'
			WHEN 'B000225' THEN
			'null'
			WHEN 'J000387' THEN
			'润科集团'
			WHEN 'S000615' THEN
			'山东电建'
			WHEN 'Z001426' THEN
			'唐德影视'
			WHEN 'C000348' THEN
			'兴城人居'
			WHEN 'Y000299' THEN
			'银华资本'
			WHEN 'C000135' THEN
			'成房置业'
			WHEN 'F000200' THEN
			'福建冶金'
			WHEN 'J000404' THEN
			'晋商银行'
			WHEN 'D000127' THEN
			'东营银行'
			WHEN 'S000955' THEN
			'莒南农商行'
			WHEN 'H000862' THEN
			'余杭旅游'
			WHEN 'F000190' THEN
			'法国液化空气集团'
			WHEN 'S001196' THEN
			'二三四五'
			WHEN 'Z001297' THEN
			'郑州农信社'
			WHEN 'S006129' THEN
			'徐工施维英'
			WHEN 'S006130' THEN
			'广丰城投'
			WHEN 'S006131' THEN
			'上投集团'
			WHEN 'S006833' THEN
			'国控集团'
			WHEN 'J000485' THEN
			'江都农商行'
			WHEN 'C000201' THEN
			'潞州农商行'
			WHEN 'S006834' THEN
			'修水投资集团'
			WHEN 'S006835' THEN
			'浦发银行苏州分行'
			WHEN 'S006836' THEN
			'金华公交'
			WHEN 'G000375' THEN
			'番禺雅居乐'
			WHEN 'B000268' THEN
			'纳通科技'
			WHEN 'H000546' THEN
			'裕华新材'
			WHEN 'P000063' THEN
			'平阳利得'
			WHEN 'D000088' THEN
			'德力西集团'
			WHEN 'S001139' THEN
			'射阳城建'
			WHEN 'S001140' THEN
			'射阳县城投'
			WHEN 'S006132' THEN
			'海通证券北京分公司'
			WHEN 'B000401' THEN
			'北银金融租赁'
			WHEN 'C000362' THEN
			'诚泰融资'
			WHEN 'H000424' THEN
			'河北华德'
			WHEN 'S005597' THEN
			'金华交投集团'
			WHEN 'S005598' THEN
			'华峰铝业'
			WHEN 'S005599' THEN
			'中谷物流'
			WHEN 'S005600' THEN
			'海目星'
			WHEN 'S005601' THEN
			'田园智城集团'
			WHEN 'Z000883' THEN
			'鹿城农商行'
			WHEN 'S001444' THEN
			'苏州租赁'
			WHEN 'N000335' THEN
			'新工创业'
			WHEN 'J000814' THEN
			'嘉兴创意投资'
			WHEN 'C000130' THEN
			'长安银行'
			WHEN 'C000286' THEN
			'华泽钴镍'
			WHEN 'H000869' THEN
			'安和融资租赁'
			WHEN 'X000357' THEN
			'孝昌顺和开发'
			WHEN 'Y000191' THEN
			'扬州新盛投资'
			WHEN 'Z001324' THEN
			'中国国新'
			WHEN 'G000534' THEN
			'越秀金控'
			WHEN 'G000221' THEN
			'宜华生活'
			WHEN 'S001445' THEN
			'绍兴国资'
			WHEN 'B000373' THEN
			'北科建集团'
			WHEN 'Z000884' THEN
			'乐清农商行'
			WHEN 'R000088' THEN
			'财鑫投资'
			WHEN 'S001141' THEN
			'遂宁农商行'
			WHEN 'Z000885' THEN
			'中交一公局'
			WHEN 'Y000162' THEN
			'宜兴水务集团'
			WHEN 'A000232' THEN
			'广信集团'
			WHEN 'H000425' THEN
			'湖州城投'
			WHEN 'Z000886' THEN
			'工行吴兴支行'
			WHEN 'L000137' THEN
			'黎明液压'
			WHEN 'T000191' THEN
			'天门城投'
			WHEN 'G000646' THEN
			'盘州旅游'
			WHEN 'P000093' THEN
			'彭州国资'
			WHEN 'G000647' THEN
			'西南交通投资实业集团'
			WHEN 'Z001435' THEN
			'中国人保寿险'
			WHEN 'Z001466' THEN
			'中交房地产集团'
			WHEN 'L000275' THEN
			'国宏投资'
			WHEN 'Z001467' THEN
			'中国航材'
			WHEN 'A000197' THEN
			'奥克斯融资租赁'
			WHEN 'S000956' THEN
			'临沭农商行'
			WHEN 'S000616' THEN
			'绍兴柯桥经开投资'
			WHEN 'G000474' THEN
			'广安交投集团'
			WHEN 'S005666' THEN
			'标普'
			WHEN 'S005667' THEN
			'纽约证交所'
			WHEN 'S005668' THEN
			'纳斯达克证交所'
			WHEN 'S005669' THEN
			'罗素'
			WHEN 'S005670' THEN
			'圣保罗交所'
			WHEN 'S005671' THEN
			'富时指数'
			WHEN 'S005672' THEN
			'德意志交易所'
			WHEN 'S005673' THEN
			'巴黎证交所'
			WHEN 'S005674' THEN
			'西班牙证交所'
			WHEN 'S005675' THEN
			'莫斯科证交所'
			WHEN 'S005676' THEN
			'斯托克'
			WHEN 'S005677' THEN
			'恒生指数'
			WHEN 'S005678' THEN
			'台湾证交所'
			WHEN 'S005679' THEN
			'日经新闻'
			WHEN 'S005680' THEN
			'韩国交易所'
			WHEN 'S006837' THEN
			'安信资管'
			WHEN 'N000242' THEN
			'雨花国资'
			WHEN 'H000547' THEN
			'华北高速'
			WHEN 'S006838' THEN
			'博俊科技'
			WHEN 'S006839' THEN
			'江天化学'
			WHEN 'S006840' THEN
			'文投运营'
			WHEN 'S006841' THEN
			'崇兴投资'
			WHEN 'S006842' THEN
			'贵州公路开发'
			WHEN 'S006843' THEN
			'民生银行厦门分行'
			WHEN 'S006844' THEN
			'阳光时代'
			WHEN 'S006133' THEN
			'阿拉丁'
			WHEN 'S006134' THEN
			'东来技术'
			WHEN 'N000243' THEN
			'江宁城建集团'
			WHEN 'H000297' THEN
			'中小企业'
			WHEN 'W000197' THEN
			'滨海旅游集团'
			WHEN 'S006845' THEN
			'岱山农商行'
			WHEN 'X000264' THEN
			'邢台银行'
			WHEN 'J000486' THEN
			'扬州农商行'
			WHEN 'Z001106' THEN
			'莲都农商行'
			WHEN 'S005602' THEN
			'楚江集团'
			WHEN 'S005603' THEN
			'豪悦护理'
			WHEN 'N000184' THEN
			'江宁国资集团'
			WHEN 'J000629' THEN
			'泉阳泉'
			WHEN 'S005604' THEN
			'赣州发展'
			WHEN 'S005605' THEN
			'浙江国贸集团'
			WHEN 'S005606' THEN
			'鑫鑫农贷'
			WHEN 'S005607' THEN
			'张家港城投'
			WHEN 'S005608' THEN
			'中建水务环保'
			WHEN 'S005609' THEN
			'仁信置业'
			WHEN 'S005610' THEN
			'杭州国会中心'
			WHEN 'S005611' THEN
			'张金控股'
			WHEN 'C000287' THEN
			'嘉美包装'
			WHEN 'F000156' THEN
			'珍华工艺'
			WHEN 'A000088' THEN
			'司尔特'
			WHEN 'S000957' THEN
			'星美圣典'
			WHEN 'X000358' THEN
			'星美控股'
			WHEN 'L000260' THEN
			'辽阳农商行'
			WHEN 'J000718' THEN
			'吉林敖东'
			WHEN 'Z001298' THEN
			'中国电力'
			WHEN 'Z000935' THEN
			'牟中发展'
			WHEN 'J000630' THEN
			'九龙仓财务'
			WHEN 'Q000128' THEN
			'蕲春国投'
			WHEN 'H000717' THEN
			'海通国际'
			WHEN 'X000369' THEN
			'西证国际证券'
			WHEN 'X000520' THEN
			'新疆风能'
			WHEN 'D000212' THEN
			'东方资管'
			WHEN 'S001004' THEN
			'前海金融'
			WHEN 'A000146' THEN
			'澳洲联邦银行'
			WHEN 'W000261' THEN
			'瓯江建投'
			WHEN 'Y000264' THEN
			'元大商业银行'
			WHEN 'T000283' THEN
			'同心农商行'
			WHEN 'L000224' THEN
			'辽东农商行'
			WHEN 'N000303' THEN
			'固原农商行'
			WHEN 'J000631' THEN
			'金轮天地控股'
			WHEN 'Z001325' THEN
			'招行香港分行'
			WHEN 'J000632' THEN
			'嘉年华国际'
			WHEN 'J000633' THEN
			'交行台北分行'
			WHEN 'D000213' THEN
			'东方鸿盛'
			WHEN 'J000375' THEN
			'云港投资'
			WHEN 'Z001326' THEN
			'中国高速传动'
			WHEN 'Y000308' THEN
			'元大证券'
			WHEN 'Z001327' THEN
			'建行(亚洲)'
			WHEN 'Z001328' THEN
			'中银航空租赁'
			WHEN 'K000069' THEN
			'开曼统一实业'
			WHEN 'Y000309' THEN
			'远东宏信'
			WHEN 'D000214' THEN
			'大唐国际'
			WHEN 'H000815' THEN
			'钱投集团'
			WHEN 'D000215' THEN
			'大方金龙建投'
			WHEN 'G000297' THEN
			'广发资产管理'
			WHEN 'N000293' THEN
			'燕子矶开发'
			WHEN 'H000816' THEN
			'东龙控股'
			WHEN 'Z001107' THEN
			'中国武夷'
			WHEN 'G000376' THEN
			'越秀租赁'
			WHEN 'H000548' THEN
			'华润万家'
			WHEN 'X000265' THEN
			'新和成'
			WHEN 'S006846' THEN
			'惠泰医疗'
			WHEN 'S000768' THEN
			'必康制药'
			WHEN 'S006847' THEN
			'安得'
			WHEN 'S006848' THEN
			'安徽华辰'
			WHEN 'S006849' THEN
			'天能电池'
			WHEN 'S006850' THEN
			'福达汽车'
			WHEN 'S006851' THEN
			'红旗机床'
			WHEN 'S006852' THEN
			'恒信汽车内制'
			WHEN 'S006853' THEN
			'安徽华星集团'
			WHEN 'S006854' THEN
			'两型集团'
			WHEN 'S006855' THEN
			'弥勒工业投开'
			WHEN 'S006856' THEN
			'奉化新农建投'
			WHEN 'S006857' THEN
			'融汇财富投集'
			WHEN 'S006858' THEN
			'首义薄膜'
			WHEN 'S006859' THEN
			'通元投资'
			WHEN 'S006860' THEN
			'紫金股份'
			WHEN 'S006861' THEN
			'桑铌股份'
			WHEN 'S006862' THEN
			'中银三星人寿'
			WHEN 'S006863' THEN
			'绿陵润发化工'
			WHEN 'S006864' THEN
			'益客集团'
			WHEN 'S006865' THEN
			'美步'
			WHEN 'S006866' THEN
			'中鹏新材'
			WHEN 'S006867' THEN
			'通裕天然气'
			WHEN 'S006868' THEN
			'天缘食品'
			WHEN 'S006869' THEN
			'东成生物科技'
			WHEN 'S006870' THEN
			'万宝实业'
			WHEN 'S006871' THEN
			'龙洋水产'
			WHEN 'S006872' THEN
			'梅兰热电'
			WHEN 'S006873' THEN
			'华电冶金机械'
			WHEN 'S006874' THEN
			'亚诺生物'
			WHEN 'S006875' THEN
			'华能电力金具'
			WHEN 'S006876' THEN
			'东安精工'
			WHEN 'S006877' THEN
			'智同集团'
			WHEN 'S006878' THEN
			'上海申丝'
			WHEN 'S006879' THEN
			'上海欧际柯特'
			WHEN 'S006880' THEN
			'博兴华鲁钢铁'
			WHEN 'S006881' THEN
			'远大板业科技'
			WHEN 'S006882' THEN
			'锦恒物资'
			WHEN 'S006883' THEN
			'智诚食品'
			WHEN 'S006884' THEN
			'博兴华韵水业'
			WHEN 'S006885' THEN
			'蓝天钢结构'
			WHEN 'S006886' THEN
			'建行河南分行'
			WHEN 'Z001108' THEN
			'中小企业'
			WHEN 'S005612' THEN
			'坤智公司'
			WHEN 'S005613' THEN
			'中国结算上海分公司'
			WHEN 'S005614' THEN
			'高的'
			WHEN 'S005615' THEN
			'众华'
			WHEN 'G000377' THEN
			'兴义阳光'
			WHEN 'Z001109' THEN
			'遵义红旅集团'
			WHEN 'M000038' THEN
			'楚之晟控股'
			WHEN 'J000487' THEN
			'华宇投资建设'
			WHEN 'B000269' THEN
			'京威股份'
			WHEN 'T000239' THEN
			'天域生态'
			WHEN 'B000270' THEN
			'晓程科技'
			WHEN 'Z001110' THEN
			'浙富控股'
			WHEN 'X000266' THEN
			'鑫苑集团'
			WHEN 'W000144' THEN
			'万里扬集团'
			WHEN 'H000426' THEN
			'福星股份'
			WHEN 'F000098' THEN
			'福星集团'
			WHEN 'S005616' THEN
			'福昕软件'
			WHEN 'S005617' THEN
			'科威尔'
			WHEN 'S000593' THEN
			'万极'
			WHEN 'S000608' THEN
			'光大嘉宝'
			WHEN 'S000594' THEN
			'水发集团'
			WHEN 'N000185' THEN
			'鄂尔多斯冶金'
			WHEN 'S001005' THEN
			'山西焦化'
			WHEN 'B000346' THEN
			'捷成股份'
			WHEN 'Q000084' THEN
			'青岛能源'
			WHEN 'J000634' THEN
			'协鑫集团'
			WHEN 'X000370' THEN
			'新特能源'
			WHEN 'Y000310' THEN
			'沅江建投'
			WHEN 'Z000887' THEN
			'平潭发展'
			WHEN 'Z001329' THEN
			'中国铁塔'
			WHEN 'A000147' THEN
			'大源投资'
			WHEN 'Z001299' THEN
			'中核华兴'
			WHEN 'C000444' THEN
			'运达创新科技'
			WHEN 'B000500' THEN
			'诚通金控'
			WHEN 'Y000170' THEN
			'亿阳集团'
			WHEN 'Z000913' THEN
			'中行三门县支行'
			WHEN 'S001446' THEN
			'吴中交投'
			WHEN 'D000124' THEN
			'登电集团'
			WHEN 'H000863' THEN
			'华灿光电'
			WHEN 'B000226' THEN
			'讯鸟软件'
			WHEN 'H000718' THEN
			'呼和浩特集团'
			WHEN 'Z001710' THEN
			'中行新疆分行'
			WHEN 'B000501' THEN
			'德恒(乌鲁木齐)'
			WHEN 'X000203' THEN
			'西安银行'
			WHEN 'Z000936' THEN
			'农行贵阳云岩支行'
			WHEN 'G000307' THEN
			'贵州物流产业集团'
			WHEN 'S000644' THEN
			'恒通&钛宝'
			WHEN 'S000617' THEN
			'上海银行青浦支行'
			WHEN 'S000618' THEN
			'淀山湖新城发展'
			WHEN 'J000388' THEN
			'交行湖南分行'
			WHEN 'Z000937' THEN
			'招行长沙分行'
			WHEN 'H000445' THEN
			'中小企业'
			WHEN 'H000446' THEN
			'湖南担保'
			WHEN 'X000521' THEN
			'宏发电声'
			WHEN 'B000394' THEN
			'京水集团'
			WHEN 'Y000367' THEN
			'宜昌创元国控'
			WHEN 'D000204' THEN
			'临港建设'
			WHEN 'S001006' THEN
			'夏县农商行'
			WHEN 'Z001330' THEN
			'永兴村镇行'
			WHEN 'J000635' THEN
			'晋城农商行'
			WHEN 'F000126' THEN
			'长乐农商行'
			WHEN 'Y000224' THEN
			'盐城高新区投资公司'
			WHEN 'S005618' THEN
			'兴业银行哈尔滨分行'
			WHEN 'Y000225' THEN
			'宜昌高投'
			WHEN 'S000769' THEN
			'润银生物'
			WHEN 'Z001408' THEN
			'工行都匀分行'
			WHEN 'S005619' THEN
			'浮来春集团'
			WHEN 'S001142' THEN
			'浦发银行衡阳分行'
			WHEN 'H000786' THEN
			'森特实业'
			WHEN 'S006153' THEN
			'嘉定颐和'
			WHEN 'J000747' THEN
			'长江口开发'
			WHEN 'C000363' THEN
			'天齐集团'
			WHEN 'S005620' THEN
			'贵州融资担保'
			WHEN 'S005621' THEN
			'赣江集团'
			WHEN 'H000719' THEN
			'天目药业'
			WHEN 'S001367' THEN
			'宁津农商行'
			WHEN 'C000422' THEN
			'惠民村镇行'
			WHEN 'G000475' THEN
			'国电资本控股'
			WHEN 'X000222' THEN
			'新疆兵团水电'
			WHEN 'H000870' THEN
			'海尔金控'
			WHEN 'S000645' THEN
			'清水川能源'
			WHEN 'S001007' THEN
			'天源集团'
			WHEN 'W000237' THEN
			'华阔经贸'
			WHEN 'C000288' THEN
			'金洲城投'
			WHEN 'C000272' THEN
			'绿丰生态'
			WHEN 'B000239' THEN
			'药都农商行'
			WHEN 'L000132' THEN
			'柳州银行'
			WHEN 'B000231' THEN
			'毕节建投'
			WHEN 'F000104' THEN
			'榕基软件'
			WHEN 'Z000914' THEN
			'工行新昌支行'
			WHEN 'Q000085' THEN
			'黔西南州工投集团'
			WHEN 'Q000149' THEN
			'泉州农商行'
			WHEN 'S001250' THEN
			'万融保理'
			WHEN 'L000214' THEN
			'乐平国资'
			WHEN 'P000083' THEN
			'彭州国资'
			WHEN 'T000206' THEN
			'铜陵国控'
			WHEN 'H000458' THEN
			'徽商银行铜陵分行'
			WHEN 'X000429' THEN
			'象山大目湾城投'
			WHEN 'T000364' THEN
			'铜陵交投'
			WHEN 'P000043' THEN
			'攀枝花城投'
			WHEN 'L000133' THEN
			'一品木业'
			WHEN 'H000432' THEN
			'衡阳拖拉机厂'
			WHEN 'C000136' THEN
			'天宁建设'
			WHEN 'G000543' THEN
			'建方房屋租赁'
			WHEN 'J000636' THEN
			'江西公路开发'
			WHEN 'H000433' THEN
			'华商银行'
			WHEN 'B000374' THEN
			'四维图新'
			WHEN 'G000573' THEN
			'平塘农商行'
			WHEN 'G000523' THEN
			'国网新源控股'
			WHEN 'D000205' THEN
			'达州农商行'
			WHEN 'S000958' THEN
			'东阿农商行'
			WHEN 'S000959' THEN
			'高唐农商行'
			WHEN 'S001008' THEN
			'深圳特力'
			WHEN 'F000160' THEN
			'漳州农商行'
			WHEN 'H000964' THEN
			'豫辉投资'
			WHEN 'D000206' THEN
			'大连控股'
			WHEN 'T000284' THEN
			'滕州房地产'
			WHEN 'X000223' THEN
			'昌源水务集团'
			WHEN 'B000333' THEN
			'居然之家'
			WHEN 'Y000356' THEN
			'永春农信社'
			WHEN 'S001197' THEN
			'洪洞农商行'
			WHEN 'Z000973' THEN
			'中行新郑支行'
			WHEN 'Z000972' THEN
			'郑州银行新郑支行'
			WHEN 'J000637' THEN
			'环城农商行'
			WHEN 'F000183' THEN
			'佛冈农商行'
			WHEN 'H000787' THEN
			'十堰农商行'
			WHEN 'N000294' THEN
			'南通沿海集团'
			WHEN 'T000276' THEN
			'天齐锂业'
			WHEN 'H000459' THEN
			'国中水务'
			WHEN 'Z000974' THEN
			'招行济宁分行'
			WHEN 'J000405' THEN
			'市中区城投'
			WHEN 'A000220' THEN
			'安顺投资'
			WHEN 'S000646' THEN
			'柏狮'
			WHEN 'Q000090' THEN
			'江仓煤业'
			WHEN 'W000161' THEN
			'万思顿'
			WHEN 'S000647' THEN
			'陕旅集团'
			WHEN 'S000960' THEN
			'德品医疗'
			WHEN 'X000359' THEN
			'彭城农商行'
			WHEN 'S000961' THEN
			'罗庄农商行'
			WHEN 'K000063' THEN
			'鹿城村镇行'
			WHEN 'D000207' THEN
			'东方金钰'
			WHEN 'N000167' THEN
			'宁夏国资运营集团'
			WHEN 'S006887' THEN
			'山东绿健生物'
			WHEN 'S006888' THEN
			'金陵船舶威海'
			WHEN 'S006889' THEN
			'威海港集团'
			WHEN 'S006890' THEN
			'威海中玻'
			WHEN 'S006891' THEN
			'山东艺达'
			WHEN 'S006892' THEN
			'寿光富康'
			WHEN 'S006893' THEN
			'跃龙橡胶'
			WHEN 'S006894' THEN
			'千榕家纺'
			WHEN 'S006895' THEN
			'尧王制药'
			WHEN 'S006896' THEN
			'信邦机械'
			WHEN 'S006897' THEN
			'联科科技'
			WHEN 'S006898' THEN
			'陕西中兴林产'
			WHEN 'S006899' THEN
			'赛德高科'
			WHEN 'S006900' THEN
			'秦宝牧业'
			WHEN 'S006901' THEN
			'秦川牛业'
			WHEN 'S006902' THEN
			'迪赛诺'
			WHEN 'S006903' THEN
			'蓝光科技'
			WHEN 'S006904' THEN
			'华亚微电子'
			WHEN 'S006905' THEN
			'华勤技术'
			WHEN 'S006906' THEN
			'钜泉光电'
			WHEN 'S006907' THEN
			'莱必泰'
			WHEN 'S006908' THEN
			'吉联新软'
			WHEN 'S006909' THEN
			'永茂泰'
			WHEN 'S006910' THEN
			'上海成套院'
			WHEN 'S006911' THEN
			'精星'
			WHEN 'S006912' THEN
			'上海南洋电缆'
			WHEN 'S006913' THEN
			'欧迪芬'
			WHEN 'S006914' THEN
			'题桥纺织'
			WHEN 'S006915' THEN
			'上海网讯'
			WHEN 'S006916' THEN
			'富春建业科技'
			WHEN 'S006917' THEN
			'上海明珠钢构'
			WHEN 'S006918' THEN
			'null'
			WHEN 'S006919' THEN
			'三元种业'
			WHEN 'S006920' THEN
			'顺鑫农品'
			WHEN 'S006921' THEN
			'峪口禽业'
			WHEN 'S006922' THEN
			'红螺食品'
			WHEN 'S006923' THEN
			'中地种畜'
			WHEN 'S006924' THEN
			'北京家禽育种'
			WHEN 'S006925' THEN
			'百年栗园'
			WHEN 'S006926' THEN
			'清畅电力'
			WHEN 'S006927' THEN
			'绿友集团'
			WHEN 'S006928' THEN
			'鼎联高新技术'
			WHEN 'S006929' THEN
			'凯因科技'
			WHEN 'S006930' THEN
			'三鼎光电'
			WHEN 'S006931' THEN
			'首农股份'
			WHEN 'S006932' THEN
			'亚太食品'
			WHEN 'S006933' THEN
			'德青源'
			WHEN 'S006934' THEN
			'大地股份'
			WHEN 'S006935' THEN
			'卓宸畜牧'
			WHEN 'S006936' THEN
			'格瑞拓普'
			WHEN 'S006937' THEN
			'中企人力'
			WHEN 'S006938' THEN
			'天臣微纳米'
			WHEN 'S006939' THEN
			'杨浦科技投发'
			WHEN 'S006940' THEN
			'新上化'
			WHEN 'S006941' THEN
			'禾友化工'
			WHEN 'S006942' THEN
			'绿润食品'
			WHEN 'S006943' THEN
			'华东橡胶'
			WHEN 'S006944' THEN
			'寿光万龙'
			WHEN 'S006945' THEN
			'新龙聚氯乙烯'
			WHEN 'S006947' THEN
			'光耀玻璃'
			WHEN 'S006948' THEN
			'健元春'
			WHEN 'S006949' THEN
			'寿光蔬菜集团'
			WHEN 'S006950' THEN
			'东宝钢管'
			WHEN 'S006951' THEN
			'天雁服饰'
			WHEN 'S006952' THEN
			'新裕东铝业'
			WHEN 'S006953' THEN
			'蓝天首饰'
			WHEN 'S006954' THEN
			'天时海洋石装'
			WHEN 'S006955' THEN
			'康泰集团'
			WHEN 'S006956' THEN
			'铭辰汽车'
			WHEN 'S006957' THEN
			'东大冶金'
			WHEN 'S006958' THEN
			'沈阳天择彩印'
			WHEN 'S006959' THEN
			'达州玖源化工'
			WHEN 'S006960' THEN
			'达州运输'
			WHEN 'S006961' THEN
			'华建铝业'
			WHEN 'S006962' THEN
			'保利物业'
			WHEN 'S006963' THEN
			'椒江城发集团'
			WHEN 'S006964' THEN
			'攀枝花钢铁'
			WHEN 'G000524' THEN
			'生益科技'
			WHEN 'H000409' THEN
			'中小企业'
			WHEN 'F000203' THEN
			'福能股份'
			WHEN 'C000329' THEN
			'蚂蚁商诚贷款'
			WHEN 'N000408' THEN
			'宁波交运'
			WHEN 'S001447' THEN
			'视高天府'
			WHEN 'F000236' THEN
			'福莱特'
			WHEN 'F000237' THEN
			'火炬电子'
			WHEN 'Z000888' THEN
			'邮储银行随州市分行'
			WHEN 'S000595' THEN
			'随州城建'
			WHEN 'H000411' THEN
			'淮北矿业'
			WHEN 'H000434' THEN
			'华宝证券'
			WHEN 'F000222' THEN
			'富德生命人寿'
			WHEN 'K000100' THEN
			'昆明国资'
			WHEN 'S001448' THEN
			'荣宴租赁'
			WHEN 'S001449' THEN
			'山东水务'
			WHEN 'J000614' THEN
			'聚信租赁'
			WHEN 'A000095' THEN
			'江淮汽车'
			WHEN 'J000748' THEN
			'福源农业'
			WHEN 'C000133' THEN
			'金贵银业'
			WHEN 'Z001436' THEN
			'紫光国微'
			WHEN 'N000394' THEN
			'博威合金'
			WHEN 'K000064' THEN
			'龙腾光电'
			WHEN 'Z001427' THEN
			'中化岩土'
			WHEN 'Y000171' THEN
			'惠临投资'
			WHEN 'Z001622' THEN
			'中原银行投行部'
			WHEN 'Z001623' THEN
			'招联金融'
			WHEN 'T000323' THEN
			'天府信用'
			WHEN 'R000063' THEN
			'岚山农商行'
			WHEN 'M000096' THEN
			'蒙商银行'
			WHEN 'L000261' THEN
			'临邑城投'
			WHEN 'H001010' THEN
			'南北湖旅游'
			WHEN 'S000962' THEN
			'营山农商行'
			WHEN 'Z001300' THEN
			'天元农信社'
			WHEN 'G000464' THEN
			'高要农商行'
			WHEN 'J000370' THEN
			'利源精制'
			WHEN 'H000460' THEN
			'春语建设'
			WHEN 'S001368' THEN
			'神州高铁'
			WHEN 'J000376' THEN
			'交行温州分行'
			WHEN 'W000308' THEN
			'微盟'
			WHEN 'W000150' THEN
			'鹿城城市发展'
			WHEN 'Z000915' THEN
			'丹徒建投'
			WHEN 'J000815' THEN
			'济南城投'
			WHEN 'T000365' THEN
			'太仓城市发展'
			WHEN 'F000191' THEN
			'菲律宾'
			WHEN 'F000159' THEN
			'抚州农商行'
			WHEN 'G000678' THEN
			'荷城农商行'
			WHEN 'T000279' THEN
			'岱岳农商行'
			WHEN 'Q000129' THEN
			'青岛城发集团'
			WHEN 'C000359' THEN
			'长虹华意'
			WHEN 'S006965' THEN
			'士达炭素'
			WHEN 'S006966' THEN
			'永华机械'
			WHEN 'S006967' THEN
			'百盛生物'
			WHEN 'S006968' THEN
			'环宇车轮'
			WHEN 'S006969' THEN
			'钛宝钛业'
			WHEN 'S006970' THEN
			'亚安科技'
			WHEN 'S006971' THEN
			'海泰数码科技'
			WHEN 'S006972' THEN
			'天大天久科技'
			WHEN 'S006973' THEN
			'津荣天宇'
			WHEN 'S006974' THEN
			'天地伟业'
			WHEN 'S006975' THEN
			'创智新材'
			WHEN 'S006976' THEN
			'潍坊双星农药'
			WHEN 'S006977' THEN
			'昱合食品'
			WHEN 'S006978' THEN
			'威特变压器'
			WHEN 'S006979' THEN
			'海王股份'
			WHEN 'S006980' THEN
			'恒通'
			WHEN 'B000444' THEN
			'华联鑫创益'
			WHEN 'S006981' THEN
			'赛维绿色科技'
			WHEN 'S006982' THEN
			'金丝达实业'
			WHEN 'S006983' THEN
			'盛帆股份'
			WHEN 'S006984' THEN
			'爱德华'
			WHEN 'T000280' THEN
			'泰山农商行'
			WHEN 'S006985' THEN
			'曲江旅投集团'
			WHEN 'S006986' THEN
			'合容电气'
			WHEN 'S006987' THEN
			'浦曌科技发展'
			WHEN 'S006988' THEN
			'新疆农机'
			WHEN 'S006989' THEN
			'华世丹药业'
			WHEN 'S006990' THEN
			'农行江阴分行'
			WHEN 'S006991' THEN
			'经发建设'
			WHEN 'S006992' THEN
			'新城基建投资'
			WHEN 'S006993' THEN
			'三阳基建投资'
			WHEN 'S006994' THEN
			'长安跨越'
			WHEN 'S006995' THEN
			'柏泰集团'
			WHEN 'S006996' THEN
			'飞龙科技'
			WHEN 'S006997' THEN
			'浩明光电'
			WHEN 'S006998' THEN
			'荣能集团'
			WHEN 'S006999' THEN
			'银翔集团'
			WHEN 'S007000' THEN
			'双兔食品'
			WHEN 'S007001' THEN
			'彩讯科技'
			WHEN 'S007002' THEN
			'扬州五亭桥'
			WHEN 'S007003' THEN
			'娅丽达服饰'
			WHEN 'S007004' THEN
			'领秀服饰'
			WHEN 'X000364' THEN
			'湘潭农商行'
			WHEN 'F000127' THEN
			'金茂投资'
			WHEN 'S007005' THEN
			'东方文化园'
			WHEN 'S007006' THEN
			'华欣新材'
			WHEN 'S007007' THEN
			'联达化纤'
			WHEN 'S007008' THEN
			'合美休闲'
			WHEN 'S007009' THEN
			'东华纤维'
			WHEN 'S007010' THEN
			'华强控股'
			WHEN 'S007011' THEN
			'双阳食品'
			WHEN 'S007012' THEN
			'远大印务'
			WHEN 'S007013' THEN
			'宇邦线缆'
			WHEN 'S007014' THEN
			'博恩集团'
			WHEN 'S007015' THEN
			'商都生物技术'
			WHEN 'S007016' THEN
			'荣奇热电'
			WHEN 'S007017' THEN
			'华泰特种电缆'
			WHEN 'S007018' THEN
			'联泰广场'
			WHEN 'S000770' THEN
			'世纪金源集团'
			WHEN 'S007019' THEN
			'黑猫神日化'
			WHEN 'S007020' THEN
			'中显集团'
			WHEN 'S007021' THEN
			'维和药业'
			WHEN 'S007022' THEN
			'天浩稀贵金属'
			WHEN 'S007023' THEN
			'普尔顿'
			WHEN 'S000976' THEN
			'海普瑞'
			WHEN 'S007024' THEN
			'四维尔'
			WHEN 'S007025' THEN
			'重庆银行'
			WHEN 'S007026' THEN
			'征和工业'
			WHEN 'S007027' THEN
			'华安鑫创'
			WHEN 'S007028' THEN
			'慈兴集团'
			WHEN 'S007029' THEN
			'赛亿电器'
			WHEN 'S007030' THEN
			'万盛沙发'
			WHEN 'S007031' THEN
			'吉恩仕'
			WHEN 'S007032' THEN
			'阿波罗皮制'
			WHEN 'S007033' THEN
			'宝峰热电'
			WHEN 'S007034' THEN
			'诸暨第一百货'
			WHEN 'S007035' THEN
			'富邦集团'
			WHEN 'S007036' THEN
			'鸿翔建设'
			WHEN 'S007037' THEN
			'申发轴瓦'
			WHEN 'S007038' THEN
			'长海集团'
			WHEN 'S007039' THEN
			'中海建设'
			WHEN 'S007040' THEN
			'慎江阀门'
			WHEN 'S007041' THEN
			'新福钛白粉'
			WHEN 'S007042' THEN
			'德泰化学'
			WHEN 'S007043' THEN
			'宁波太平洋'
			WHEN 'S007044' THEN
			'伟海拉链'
			WHEN 'S007045' THEN
			'伊美薄膜工业'
			WHEN 'S007046' THEN
			'富润印染'
			WHEN 'S007047' THEN
			'盛虹科技'
			WHEN 'S007048' THEN
			'裕华集团'
			WHEN 'S007049' THEN
			'新鑫电力'
			WHEN 'S007050' THEN
			'恒飞电缆'
			WHEN 'S007051' THEN
			'启瑞药业'
			WHEN 'S007052' THEN
			'三环发展'
			WHEN 'S007053' THEN
			'建科股份'
			WHEN 'S007054' THEN
			'青化集团'
			WHEN 'S007055' THEN
			'河海新能源'
			WHEN 'S007056' THEN
			'思远投资'
			WHEN 'S007057' THEN
			'天马集团'
			WHEN 'S007058' THEN
			'永泰丰化工'
			WHEN 'S007059' THEN
			'三力炭素'
			WHEN 'S007060' THEN
			'佳讯光电'
			WHEN 'S007061' THEN
			'河南新科隆'
			WHEN 'S007062' THEN
			'朗生生命科技'
			WHEN 'S007063' THEN
			'新东方电缆'
			WHEN 'G000378' THEN
			'遵义高速建投'
			WHEN 'S007064' THEN
			'建行云南分行'
			WHEN 'J000488' THEN
			'济晋高速公路'
			WHEN 'N000244' THEN
			'威宁投资集团'
			WHEN 'S007065' THEN
			'恒慧通肉食'
			WHEN 'S007066' THEN
			'百奥药业'
			WHEN 'S007067' THEN
			'天山重工'
			WHEN 'S007068' THEN
			'久日化学'
			WHEN 'S007069' THEN
			'华科聚合物'
			WHEN 'S007070' THEN
			'绿创声学'
			WHEN 'S005622' THEN
			'强生公司'
			WHEN 'S007071' THEN
			'利德华福'
			WHEN 'S007072' THEN
			'京北方科技'
			WHEN 'S007073' THEN
			'甘肃民航机场'
			WHEN 'S007074' THEN
			'世纪空间'
			WHEN 'S007075' THEN
			'河南起重机器'
			WHEN 'S007076' THEN
			'绿色金可'
			WHEN 'S007077' THEN
			'雪丽造纸'
			WHEN 'S007078' THEN
			'盈成油脂'
			WHEN 'S007079' THEN
			'惠生肉业'
			WHEN 'S007080' THEN
			'丰康生物'
			WHEN 'S007081' THEN
			'交大微联'
			WHEN 'S007082' THEN
			'永达清真'
			WHEN 'S007083' THEN
			'宝舜科技'
			WHEN 'S007084' THEN
			'凤宝管业'
			WHEN 'S007085' THEN
			'光耀能源'
			WHEN 'S007086' THEN
			'地杰通信'
			WHEN 'S007087' THEN
			'北京时代'
			WHEN 'S007088' THEN
			'神州金信'
			WHEN 'S007089' THEN
			'赤峰中昊运输'
			WHEN 'S007090' THEN
			'宇清传动'
			WHEN 'S007091' THEN
			'追日电气'
			WHEN 'S007092' THEN
			'赤峰威龙汽贸'
			WHEN 'S007093' THEN
			'欧安电气'
			WHEN 'S007094' THEN
			'正和木业'
			WHEN 'S007095' THEN
			'远成鄂弓'
			WHEN 'S007096' THEN
			'海油工程'
			WHEN 'S007097' THEN
			'胜利油田龙玺'
			WHEN 'C000360' THEN
			'长安汽车金融'
			WHEN 'Y000158' THEN
			'盐城政公用投资'
			WHEN 'S007098' THEN
			'胜利新大新材'
			WHEN 'S007099' THEN
			'万得福实业'
			WHEN 'S007100' THEN
			'麦隆'
			WHEN 'Z001479' THEN
			'伟明环保'
			WHEN 'S007101' THEN
			'金网通电子'
			WHEN 'H000871' THEN
			'钧达股份'
			WHEN 'R000032' THEN
			'荣盛石化'
			WHEN 'Z001480' THEN
			'海南中汽'
			WHEN 'S007102' THEN
			'中铁隆'
			WHEN 'S007103' THEN
			'颠峰软件'
			WHEN 'S007104' THEN
			'宏基股份'
			WHEN 'S007105' THEN
			'四川制药制剂'
			WHEN 'S007106' THEN
			'久远新方向'
			WHEN 'S007107' THEN
			'东兴工业机械'
			WHEN 'S007108' THEN
			'尚艺科技集团'
			WHEN 'S007109' THEN
			'冶金轴承'
			WHEN 'S007110' THEN
			'生威粮食集团'
			WHEN 'S007111' THEN
			'大高阀门'
			WHEN 'S007112' THEN
			'巅峰集团'
			WHEN 'S007113' THEN
			'大连民勇集团'
			WHEN 'L000266' THEN
			'来安开发'
			WHEN 'A000086' THEN
			'安徽建工'
			WHEN 'S005623' THEN
			'龙利得'
			WHEN 'S005624' THEN
			'森麒麟'
			WHEN 'F000238' THEN
			'富力地产(香港)'
			WHEN 'S001450' THEN
			'首创环境'
			WHEN 'L000338' THEN
			'蓝帆医疗'
			WHEN 'S000596' THEN
			'浦东现代产业'
			WHEN 'Z000889' THEN
			'小康股份'
			WHEN 'T000185' THEN
			'通州建总'
			WHEN 'S000619' THEN
			'香江控股'
			WHEN 'S000620' THEN
			'金海马'
			WHEN 'D000274' THEN
			'戴姆勒财务'
			WHEN 'Z001624' THEN
			'中行江苏分行'
			WHEN 'Z001409' THEN
			'中国电力清洁能源'
			WHEN 'L000251' THEN
			'港投集团'
			WHEN 'J000692' THEN
			'石钟投资'
			WHEN 'Z001625' THEN
			'中行江西分行'
			WHEN 'W000153' THEN
			'乌鲁木齐国投'
			WHEN 'J000389' THEN
			'邯矿集团'
			WHEN 'S005625' THEN
			'东财集团'
			WHEN 'S005626' THEN
			'农行东阿县支行'
			WHEN 'X000522' THEN
			'国盛集团'
			WHEN 'S001451' THEN
			'山东土地'
			WHEN 'A000094' THEN
			'胜昔新材料'
			WHEN 'G000273' THEN
			'广铝集团'
			WHEN 'Z000827' THEN
			'齐翔腾达'
			WHEN 'S000648' THEN
			'深圳农商行'
			WHEN 'Z001626' THEN
			'浙江东方'
			WHEN 'Z001307' THEN
			'中期集团'
			WHEN 'S000977' THEN
			'传视影视传媒'
			WHEN 'S000978' THEN
			'聚创科贷'
			WHEN 'M000024' THEN
			'茂名港集团'
			WHEN 'S007114' THEN
			'千足珍珠'
			WHEN 'S007115' THEN
			'新火炬'
			WHEN 'S007116' THEN
			'新大方'
			WHEN 'S007117' THEN
			'剑峰矿业'
			WHEN 'S007118' THEN
			'金阳铝业'
			WHEN 'S007119' THEN
			'禹州神龙'
			WHEN 'S007120' THEN
			'名福'
			WHEN 'S007121' THEN
			'银河轴承'
			WHEN 'S007122' THEN
			'河北信德'
			WHEN 'S007123' THEN
			'福德化工'
			WHEN 'S007124' THEN
			'荣珍菌业'
			WHEN 'S007125' THEN
			'恒生内燃机'
			WHEN 'S007126' THEN
			'康远股份'
			WHEN 'S007127' THEN
			'鑫盛城乡建投'
			WHEN 'S007128' THEN
			'鑫源投资'
			WHEN 'S007129' THEN
			'宏远国资'
			WHEN 'S007130' THEN
			'肇州国资'
			WHEN 'S007131' THEN
			'依兰国资'
			WHEN 'S007132' THEN
			'兰盛投资'
			WHEN 'S007133' THEN
			'新余腾越投资'
			WHEN 'S007134' THEN
			'新余外轮投资'
			WHEN 'S007135' THEN
			'农行四川分行'
			WHEN 'S007136' THEN
			'金陵饭店集团'
			WHEN 'S007137' THEN
			'江西建材集团'
			WHEN 'S007138' THEN
			'济南水务'
			WHEN 'S007139' THEN
			'济南四建集团'
			WHEN 'S007140' THEN
			'山推建友'
			WHEN 'S007141' THEN
			'济南热力集团'
			WHEN 'S007142' THEN
			'山东三箭建工'
			WHEN 'S007143' THEN
			'金钟集团'
			WHEN 'Z000828' THEN
			'齐翔集团'
			WHEN 'S007144' THEN
			'深蓝机械'
			WHEN 'S007145' THEN
			'肯富来'
			WHEN 'T000184' THEN
			'天瑞集团'
			WHEN 'S007146' THEN
			'金意陶陶瓷'
			WHEN 'S007147' THEN
			'凯达重工'
			WHEN 'S007148' THEN
			'岩松金属'
			WHEN 'S007149' THEN
			'佳森化工'
			WHEN 'S007150' THEN
			'旺达纸业'
			WHEN 'S007151' THEN
			'侨裕旅游用品'
			WHEN 'S007152' THEN
			'大自然印刷'
			WHEN 'S007153' THEN
			'顶呱呱'
			WHEN 'S007154' THEN
			'常州高力'
			WHEN 'S007155' THEN
			'西电济南'
			WHEN 'S007156' THEN
			'济南城建集团'
			WHEN 'S000771' THEN
			'苏州轨道交通'
			WHEN 'Z000917' THEN
			'瑞安农商行'
			WHEN 'S007157' THEN
			'传智教育'
			WHEN 'N000245' THEN
			'圣牧高科'
			WHEN 'S007158' THEN
			'中外运仓码'
			WHEN 'S007159' THEN
			'华昊化工'
			WHEN 'S007160' THEN
			'晋工机械'
			WHEN 'S007161' THEN
			'合德轻工'
			WHEN 'S007162' THEN
			'盼盼生物科技'
			WHEN 'S007163' THEN
			'晋江凤竹鞋业'
			WHEN 'S007164' THEN
			'南阳实业'
			WHEN 'S007165' THEN
			'安波电机集团'
			WHEN 'S007166' THEN
			'官井洋大黄鱼'
			WHEN 'S007167' THEN
			'夏威食品'
			WHEN 'S007168' THEN
			'外汽集团'
			WHEN 'S007169' THEN
			'中油华东'
			WHEN 'S007170' THEN
			'常州化工轻工'
			WHEN 'S007171' THEN
			'强声纺织'
			WHEN 'S007172' THEN
			'常州糖烟酒'
			WHEN 'S007173' THEN
			'重汽福专'
			WHEN 'S007174' THEN
			'岳海'
			WHEN 'S007175' THEN
			'东风农机'
			WHEN 'S007176' THEN
			'新华昌集团'
			WHEN 'S007177' THEN
			'江苏中东集团'
			WHEN 'S007178' THEN
			'明都汽车'
			WHEN 'S007179' THEN
			'天目湖生态'
			WHEN 'S007180' THEN
			'金百泽科技'
			WHEN 'S007181' THEN
			'华运物流'
			WHEN 'S007182' THEN
			'象屿地产'
			WHEN 'S007183' THEN
			'亦禾供应链'
			WHEN 'S007184' THEN
			'锻造一厂'
			WHEN 'S007185' THEN
			'博创智能'
			WHEN 'S007186' THEN
			'苏州一光'
			WHEN 'S007187' THEN
			'苏州电瓷'
			WHEN 'S007188' THEN
			'东胜机械'
			WHEN 'S007189' THEN
			'新长光'
			WHEN 'S007190' THEN
			'苏州诚河清洁'
			WHEN 'S007191' THEN
			'旭光聚合物'
			WHEN 'S007192' THEN
			'苏轴股份'
			WHEN 'S007193' THEN
			'德纳股份'
			WHEN 'S007194' THEN
			'中圣高科技'
			WHEN 'S007195' THEN
			'晶石科技'
			WHEN 'S007196' THEN
			'立业电力'
			WHEN 'S007197' THEN
			'江丰实业'
			WHEN 'A000079' THEN
			'安徽供销'
			WHEN 'S007198' THEN
			'爱得乐'
			WHEN 'S007199' THEN
			'琅日特种纤维'
			WHEN 'S007200' THEN
			'兴泰融资租赁'
			WHEN 'S007201' THEN
			'青山国资运营'
			WHEN 'S007202' THEN
			'科维控股'
			WHEN 'S007203' THEN
			'三门江林场'
			WHEN 'S007204' THEN
			'五星百货'
			WHEN 'S007205' THEN
			'桂中海迅'
			WHEN 'S007206' THEN
			'久易股份'
			WHEN 'S007207' THEN
			'上海汽车工业'
			WHEN 'S007208' THEN
			'金工投资'
			WHEN 'S007209' THEN
			'绿宝电缆'
			WHEN 'S007210' THEN
			'湘阴农商行'
			WHEN 'S007211' THEN
			'福文新能源'
			WHEN 'S007212' THEN
			'平原智能'
			WHEN 'S007213' THEN
			'蛟龙重工'
			WHEN 'S007214' THEN
			'文凤化纤'
			WHEN 'S007215' THEN
			'大江公司'
			WHEN 'S007216' THEN
			'红太阳商业'
			WHEN 'S007217' THEN
			'圣汇装备'
			WHEN 'S007218' THEN
			'七洲'
			WHEN 'S007219' THEN
			'国信协联公司'
			WHEN 'S007220' THEN
			'意达铜业'
			WHEN 'S007221' THEN
			'扬州工艺美术'
			WHEN 'S007222' THEN
			'大贺控股集团'
			WHEN 'S007223' THEN
			'岷山环能高科'
			WHEN 'S007224' THEN
			'森源汽车'
			WHEN 'S007225' THEN
			'金惠达卫浴'
			WHEN 'S007226' THEN
			'龙源纸业'
			WHEN 'S007227' THEN
			'圣泰制药股份'
			WHEN 'Y000226' THEN
			'烟台银行'
			WHEN 'S007228' THEN
			'鑫北源电站'
			WHEN 'S007229' THEN
			'高泰食品'
			WHEN 'T000186' THEN
			'新塘建设'
			WHEN 'S007230' THEN
			'金海科技印务'
			WHEN 'S007231' THEN
			'哈轻塑胶'
			WHEN 'S007232' THEN
			'苹乐集团'
			WHEN 'S007233' THEN
			'铁园科技'
			WHEN 'S007234' THEN
			'卫华股份'
			WHEN 'S007235' THEN
			'红光锅炉总厂'
			WHEN 'S007236' THEN
			'宾西牛业'
			WHEN 'S007237' THEN
			'锦纶化纤'
			WHEN 'S007238' THEN
			'翔宇电力'
			WHEN 'S007239' THEN
			'戴梦特'
			WHEN 'S007240' THEN
			'嘉诚化工'
			WHEN 'S007241' THEN
			'中海华邦'
			WHEN 'S007242' THEN
			'新同创空调'
			WHEN 'S007243' THEN
			'润田食品'
			WHEN 'S007244' THEN
			'斯米克陶瓷'
			WHEN 'S007245' THEN
			'新大中薄板'
			WHEN 'S007246' THEN
			'金双喜实业'
			WHEN 'S007247' THEN
			'惠佳贝食品'
			WHEN 'S007248' THEN
			'港迪电气'
			WHEN 'S007249' THEN
			'黑宝山矿业'
			WHEN 'S007250' THEN
			'昊龙集团'
			WHEN 'S007251' THEN
			'光聚集团'
			WHEN 'S007252' THEN
			'金盾机车救援'
			WHEN 'S007253' THEN
			'恒天九五'
			WHEN 'S007254' THEN
			'凯达路材'
			WHEN 'S007255' THEN
			'元通汽销'
			WHEN 'S007256' THEN
			'华烁科技'
			WHEN 'S007257' THEN
			'昆仑绿建'
			WHEN 'S007258' THEN
			'华耐家居'
			WHEN 'S007259' THEN
			'华耐立家'
			WHEN 'S007260' THEN
			'骏辉房产开发'
			WHEN 'S000599' THEN
			'尧都农商行'
			WHEN 'Y000227' THEN
			'老边城投'
			WHEN 'X000267' THEN
			'兴义信恒'
			WHEN 'G000379' THEN
			'贵阳银行兴义分行'
			WHEN 'B000375' THEN
			'千方科技'
			WHEN 'S001143' THEN
			'山东盐业'
			WHEN 'T000332' THEN
			'天马'
			WHEN 'S001144' THEN
			'英唐智控'
			WHEN 'N000292' THEN
			'滨江投资'
			WHEN 'X000403' THEN
			'兄弟科技'
			WHEN 'L000209' THEN
			'莱芜城市集团'
			WHEN 'H000549' THEN
			'花旗银行'
			WHEN 'H000550' THEN
			'韩国'
			WHEN 'H000788' THEN
			'红安城市发展投资'
			WHEN 'Z001481' THEN
			'华发投控'
			WHEN 'Z000890' THEN
			'中国工艺集团'
			WHEN 'G000679' THEN
			'华商律师'
			WHEN 'S005627' THEN
			'立昂微'
			WHEN 'S005628' THEN
			'华翔股份'
			WHEN 'S005629' THEN
			'华文食品'
			WHEN 'S005630' THEN
			'中岩大地'
			WHEN 'Q000141' THEN
			'庆汇租赁'
			WHEN 'J000377' THEN
			'南通三建'
			WHEN 'H000720' THEN
			'华瀚健康'
			WHEN 'Y000311' THEN
			'盈德气体'
			WHEN 'H000872' THEN
			'河北资管'
			WHEN 'F000223' THEN
			'金银河'
			WHEN 'T000305' THEN
			'中天新能源'
			WHEN 'T000315' THEN
			'台州金投'
			WHEN 'S005631' THEN
			'泰达能源'
			WHEN 'S005632' THEN
			'中交基金'
			WHEN 'S005633' THEN
			'平安远欣'
			WHEN 'S005634' THEN
			'城投保理'
			WHEN 'S005635' THEN
			'美丽乡村'
			WHEN 'S005636' THEN
			'万载投发'
			WHEN 'S005637' THEN
			'杭州银行上海分行'
			WHEN 'J000693' THEN
			'大成国资'
			WHEN 'S001009' THEN
			'金立'
			WHEN 'F000184' THEN
			'实达集团'
			WHEN 'S001452' THEN
			'招广投资'
			WHEN 'J000749' THEN
			'赣州银座村镇行'
			WHEN 'W000238' THEN
			'惠鑫汇资产'
			WHEN 'T000383' THEN
			'桐庐国资运营'
			WHEN 'G000544' THEN
			'福泉农商行'
			WHEN 'B000502' THEN
			'鹏龙股份'
			WHEN 'Z001711' THEN
			'自贡城投集团'
			WHEN 'Y000453' THEN
			'岳阳交投集团'
			WHEN 'C000364' THEN
			'光华资管'
			WHEN 'B000402' THEN
			'安方建投集团'
			WHEN 'G000574' THEN
			'贵阳银行毕节分行'
			WHEN 'N000358' THEN
			'宁海科技园'
			WHEN 'L000138' THEN
			'郎溪道其建设'
			WHEN 'S001369' THEN
			'柳林农商行'
			WHEN 'S001453' THEN
			'索菲亚'
			WHEN 'C000423' THEN
			'创兴银行广州分行'
			WHEN 'S001370' THEN
			'奉发集团'
			WHEN 'Z000938' THEN
			'禾城农商行'
			WHEN 'Z001283' THEN
			'中铁十六局'
			WHEN 'X000351' THEN
			'中瑞恒远'
			WHEN 'A000148' THEN
			'西秀投资'
			WHEN 'C000342' THEN
			'漳泽农商行'
			WHEN 'S001172' THEN
			'稷山农商行'
			WHEN 'T000360' THEN
			'泰顺发展'
			WHEN 'T000179' THEN
			'唐山港'
			WHEN 'H000803' THEN
			'惠州农商行'
			WHEN 'X000185' THEN
			'荥阳城投'
			WHEN 'D000166' THEN
			'兴城投资'
			WHEN 'Z001111' THEN
			'中国金茂'
			WHEN 'S007261' THEN
			'浩欧博'
			WHEN 'S007262' THEN
			'中审亚太'
			WHEN 'H000401' THEN
			'长投集团'
			WHEN 'W000198' THEN
			'威海蓝创'
			WHEN 'J000489' THEN
			'盐城农商行'
			WHEN 'F000128' THEN
			'凤城市现代产业园开发建设'
			WHEN 'S007263' THEN
			'北部湾保险'
			WHEN 'S007264' THEN
			'申能融资租赁'
			WHEN 'Z001308' THEN
			'华东院'
			WHEN 'X000268' THEN
			'新郑市政通投控'
			WHEN 'Z001112' THEN
			'中信地产'
			WHEN 'A000110' THEN
			'鸿成实业'
			WHEN 'C000202' THEN
			'德感建筑安装'
			WHEN 'C000203' THEN
			'长沙望城城建'
			WHEN 'G000380' THEN
			'广州番禺海怡'
			WHEN 'W000199' THEN
			'无锡山水产投'
			WHEN 'Z001113' THEN
			'中山城投'
			WHEN 'S005638' THEN
			'常宁开发建设'
			WHEN 'S005639' THEN
			'青山湖基地'
			WHEN 'F000193' THEN
			'宁德农商行'
			WHEN 'W000309' THEN
			'武汉供销集团'
			WHEN 'S000554' THEN
			'浦发银行洛阳分行'
			WHEN 'S005641' THEN
			'融通集团'
			WHEN 'S005642' THEN
			'广州国际轻纺'
			WHEN 'S005643' THEN
			'德远保理'
			WHEN 'S005644' THEN
			'西岸小额贷款'
			WHEN 'S005645' THEN
			'大余资产经营'
			WHEN 'S005646' THEN
			'扶绥城投'
			WHEN 'Y000454' THEN
			'益丰药房'
			WHEN 'Z001712' THEN
			'农行南京分行'
			WHEN 'S005647' THEN
			'响水城投'
			WHEN 'G000308' THEN
			'歌尔股份'
			WHEN 'S001010' THEN
			'旭备实业'
			WHEN 'H000721' THEN
			'华能资本'
			WHEN 'L000262' THEN
			'泸州农商行'
			WHEN 'C000273' THEN
			'慈溪商贸集团'
			WHEN 'N000295' THEN
			'银亿控股'
			WHEN 'D000216' THEN
			'堆龙佳都'
			WHEN 'L000225' THEN
			'六安农商行'
			WHEN 'S000963' THEN
			'盐田港'
			WHEN 'G000476' THEN
			'水城经投'
			WHEN 'F000101' THEN
			'富邦华一银行'
			WHEN 'H000447' THEN
			'湖北银行'
			WHEN 'A000149' THEN
			'祁门农商行'
			WHEN 'N000179' THEN
			'金田投资'
			WHEN 'B000347' THEN
			'桑德环境'
			WHEN 'J000856' THEN
			'江苏园博园'
			WHEN 'N000409' THEN
			'鼎通交通'
			WHEN 'S001454' THEN
			'金枪新材料'
			WHEN 'W000310' THEN
			'联合担保'
			WHEN 'S000964' THEN
			'韶关城投'
			WHEN 'W000154' THEN
			'众源新材'
			WHEN 'R000033' THEN
			'仁寿发展投资'
			WHEN 'S001181' THEN
			'邵阳赛双清'
			WHEN 'H000435' THEN
			'惠安交发集团'
			WHEN 'N000180' THEN
			'内蒙古银行乌兰察布分行'
			WHEN 'Y000455' THEN
			'银川房投'
			WHEN 'J000638' THEN
			'晶澳太阳能'
			WHEN 'S001455' THEN
			'松江富明村镇行'
			WHEN 'P000117' THEN
			'安源富民村镇行'
			WHEN 'L000263' THEN
			'农发集团'
			WHEN 'Z000939' THEN
			'桐庐农商行'
			WHEN 'P000084' THEN
			'新华农信社'
			WHEN 'H000949' THEN
			'临安新锦发展'
			WHEN 'F000129' THEN
			'石狮农商行'
			WHEN 'J000490' THEN
			'泗阳农商行'
			WHEN 'H000865' THEN
			'黄石交投'
			WHEN 'S007265' THEN
			'天能股份'
			WHEN 'S007266' THEN
			'国浩(天津)'
			WHEN 'S007267' THEN
			'中信银行天津分行'
			WHEN 'S007268' THEN
			'东台城兴投发'
			WHEN 'S007269' THEN
			'新城城市更新'
			WHEN 'S007270' THEN
			'中宸城镇建设'
			WHEN 'S000772' THEN
			'国发创投'
			WHEN 'W000145' THEN
			'中城公有资产'
			WHEN 'S000597' THEN
			'昌邑农商行'
			WHEN 'G000680' THEN
			'龙远投资'
			WHEN 'B000232' THEN
			'北京对外经贸集团'
			WHEN 'S001011' THEN
			'昌明机械'
			WHEN 'G000309' THEN
			'科达制造'
			WHEN 'Z001422' THEN
			'天津中信股权'
			WHEN 'K000070' THEN
			'昆明市联社'
			WHEN 'Y000174' THEN
			'阳泰集团'
			WHEN 'M000026' THEN
			'慈湖投资发展'
			WHEN 'Z000916' THEN
			'城建集团'
			WHEN 'H000722' THEN
			'台前农商行'
			WHEN 'J000615' THEN
			'高投集团'
			WHEN 'N000304' THEN
			'南网财务'
			WHEN 'H001011' THEN
			'海康威视'
			WHEN 'J000857' THEN
			'庐陵建设'
			WHEN 'S000965' THEN
			'巨洋企管'
			WHEN 'Z001713' THEN
			'中再资环'
			WHEN 'A000143' THEN
			'皖江高投'
			WHEN 'Z001301' THEN
			'中国水电五局'
			WHEN 'W000231' THEN
			'瓯海新城建设'
			WHEN 'H000397' THEN
			'哈特贝尔'
			WHEN 'S001123' THEN
			'三台农商行'
			WHEN 'H000776' THEN
			'遂平农商行'
			WHEN 'G000381' THEN
			'博罗农商行'
			WHEN 'K000048' THEN
			'五华区农信社'
			WHEN 'H000551' THEN
			'潜江农商行'
			WHEN 'W000200' THEN
			'无锡创投集团'
			WHEN 'H000552' THEN
			'邵东生态产业园开发建投'
			WHEN 'Z001114' THEN
			'中德银行'
			WHEN 'Z001115' THEN
			'临淄热电'
			WHEN 'J000491' THEN
			'吉安农商行'
			WHEN 'Q000108' THEN
			'交通旅游'
			WHEN 'H000553' THEN
			'惠安农信社'
			WHEN 'Z000852' THEN
			'西电集团'
			WHEN 'J000694' THEN
			'济宁矿业集团'
			WHEN 'S001145' THEN
			'木渎城投'
			WHEN 'J000492' THEN
			'金昌建设投资'
			WHEN 'R000064' THEN
			'日照钢铁'
			WHEN 'F000185' THEN
			'阜阳城南建投'
			WHEN 'J000258' THEN
			'锦州华信'
			WHEN 'J000493' THEN
			'仪征农商行'
			WHEN 'N000246' THEN
			'北仑农商行'
			WHEN 'B000271' THEN
			'蚌埠农商行'
			WHEN 'S000420' THEN
			'杭州湾新区城投'
			WHEN 'Z000654' THEN
			'建行上虞支行'
			WHEN 'P000030' THEN
			'汇丰投资'
			WHEN 'S001012' THEN
			'黎都农商行'
			WHEN 'L000280' THEN
			'漯河经开投资'
			WHEN 'S001146' THEN
			'乐米科技'
			WHEN 'X000224' THEN
			'天山电力'
			WHEN 'W000095' THEN
			'城发集团'
			WHEN 'H000693' THEN
			'农谷实业集团'
			WHEN 'C000274' THEN
			'赤峰黄金'
			WHEN 'S000621' THEN
			'鑫达建设'
			WHEN 'D000229' THEN
			'德庆农商行'
			WHEN 'C000424' THEN
			'郫县城乡'
			WHEN 'Z001302' THEN
			'镇江港城供水'
			WHEN 'G000465' THEN
			'东菱集团'
			WHEN 'S000673' THEN
			'苏州文旅'
			WHEN 'Y000346' THEN
			'伊金汇众聚业'
			WHEN 'J000723' THEN
			'和龙农商行'
			WHEN 'Y000181' THEN
			'岳阳云河建设'
			WHEN 'G000545' THEN
			'宜州农合行'
			WHEN 'C000143' THEN
			'共享工投'
			WHEN 'Z000975' THEN
			'湘江风光带'
			WHEN 'S000649' THEN
			'申万宏源' ELSE short_name
	END
	);