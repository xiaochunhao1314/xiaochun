#设置编码格式
SET NAMES UTF8;
#丢弃数据库在重建
DROP DATABASE IF EXISTS dg;
#创建数据库dg
CREATE DATABASE dg CHARSET=UTF8;
#进入数据库
USE dg;

#1.创建用户信息表
CREATE TABLE dg_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	phone VARCHAR(16),
	upwd VARCHAR(32),
	user_name VARCHAR(32),
	birthday VARCHAR(32),
	gender INT
);
#插入一条用户数据
INSERT INTO dg_user VALUES(NULL,13521650503,'123456',NULL,NULL,1);

#2.创建蛋糕表
CREATE TABLE dg_laptop(
	lid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(128),  #主标题
	other_title VARCHAR(128),  #副标题
	price VARCHAR(128),   #重量-磅/价格
	heart INT,           #点赞数
	isIndex INT,         #是否为首页的蛋糕 0-全部蛋糕 1-首页 2-浓情午后 3-12pm秒杀
	message INT,          #消息数量
	sm VARCHAR(128)      #小图片路径
);

#插入蛋糕数据
INSERT INTO dg_laptop VALUES(NULL,'金芒芒','Golden Mango','1磅/168RMB&2磅/288RMB&3磅/398RMB&5磅/658RMB',2,1,1,'image/index/fc38a428-032c-4b52-abc1-93086aa33119.jpg');
INSERT INTO dg_laptop VALUES(NULL,'蜜桃の森','Peach forest','1磅/168RMB&2磅/288RMB&3磅/398RMB&5磅/658RMB',0,1,7,'image/index/f86d4fa1-7f5c-4149-9789-c0e0aace53fe.jpg');
INSERT INTO dg_laptop VALUES(NULL,'繁花一世','Flowers bloom forever','1磅/188RMB&2磅/298RMB&3磅/428RMB&5磅/738RMB',0,1,6,'image/index/aeec827f-943b-48b4-af36-d3eab36f9f8e.jpg');
INSERT INTO dg_laptop VALUES(NULL,'水晶之恋','Love of crystal','1磅/188RMB&2磅/298RMB&3磅/428RMB&5磅/738RMB',0,1,3,'image/index/0b9c4272-3048-4ac6-95cb-3e3628c4df4d.jpg');
INSERT INTO dg_laptop VALUES(NULL,'开心歌剧','Opera Cake','1磅/198RMB&2磅/288RMB&3磅/398RMB&5磅/658RMB',0,1,1,'image/index/3cf8d1a4-43d5-43c0-9d2b-8ebd95a1ff9c.jpg');
INSERT INTO dg_laptop VALUES(NULL,'冬の奥秘','Secret Winter','1磅/198RMB&2磅/328RMB&3磅/458RMB&5磅/768RMB',0,1,36,'image/index/953a9aae-647a-40ce-9b22-5e52de73e8a2.jpg');
INSERT INTO dg_laptop VALUES(NULL,'爱神 • 红丝绒裸蛋糕','Red Velvet Cake','7寸/168RMB',3,1,459,'image/index/30a10df7-48b8-4756-a9c5-63bafdef5b15.jpg');
INSERT INTO dg_laptop VALUES(NULL,'甜心果语','Fruit Pocket','1磅/168RMB&2磅/288RMB&3磅/398RMB&5磅/658RMB&4磅/528RMB',59,1,708,'image/index/5cd10a0c-23b0-4743-b914-d00388c9f826.jpg');
INSERT INTO dg_laptop VALUES(NULL,'榴莲满满','Full Durian','1磅/168RMB&2磅/288RMB&3磅/398RMB&5磅/658RMB&4磅/528RMB',287,1,818,'image/index/0ee966d3-bf9c-425d-915c-0cb8725b32a3.jpg');
INSERT INTO dg_laptop VALUES(NULL,'木糖醇 桃喜','Sweet peaches cake','1磅/198RMB&2磅/328RMB&3磅/458RMB&5磅/768RMB',3,1,53,'image/index/02355fc4-f74a-4cb9-9e52-b272eb7c0e64.jpg');
INSERT INTO dg_laptop VALUES(NULL,'我的动物园 DIY亲子蛋糕',"Kid's safari",'1磅/228RMB&2磅/368RMB&3磅/498RMB&5磅/798RMB',31,1,462,'image/index/c8e58698-054f-499b-b668-f9ccf6bc1703.jpg');
INSERT INTO dg_laptop VALUES(NULL,'经典法式 • 草莓蛋糕',"gateau a la fraise classique",'1磅/238RMB&2磅/368RMB&3磅/498RMB&5磅/798RMB',1,1,46,'image/index/2655f563-7cce-491e-b1b8-ae0da6863368.jpg');
INSERT INTO dg_laptop VALUES(NULL,'摇钱树',"Golden Tree",'1.5磅/228RMB&2.5磅/368RMB&3.5磅/498RMB&5磅/798RMB',13,1,203,'image/index/f2e021ae-ca72-4ee8-a76d-84b9f817646d.jpg');
INSERT INTO dg_laptop VALUES(NULL,'栗子. 浮云卷',"Chestnut Cake Roll",'份/168RMB',0,1,14,'image/index/0eb39bfb-e1e8-4d62-8076-c3da1f12471e.jpg');
INSERT INTO dg_laptop VALUES(NULL,'草莓. 浮云卷',"Strawberry Cake Roll",'份/168RMB',0,1,3,'image/index/403f8dd5-ff6e-4870-b425-605ac517e2cf.jpg');
INSERT INTO dg_laptop VALUES(NULL,'桃喜',"Sweet peaches cake",'1磅/198RMB&2磅/328RMB&3磅/458RMB&5磅/768RMB',3,1,59,'image/index/38f82ff4-c401-489e-9982-9657c41380f4.jpg');
INSERT INTO dg_laptop VALUES(NULL,'初心.草莓慕斯',"First dream",'7寸/288RMB',1,1,24,'image/index/a9b11469-4b7a-4418-b6f4-2ea66748353d.jpg');
INSERT INTO dg_laptop VALUES(NULL,'告白气球',"Love Express",'2磅/298RMB&3磅/428RMB',9,1,219,'image/index/db9420cb-146e-48fc-bfec-c8d7760c03c9.jpg');
INSERT INTO dg_laptop VALUES(NULL,'珍珠·爆浆奶盖',"Pearl Magma Cake",'6寸/138RMB&7寸/168RMB',1,1,39,'image/index/635c5639-9d72-4bfb-a0d1-69358b3f9a3c.jpg');
INSERT INTO dg_laptop VALUES(NULL,'许愿池',"Wishing Well",'1磅/198RMB&2磅/328RMB&3磅/458RMB&5磅/768RMB&4磅/628RMB',79,1,345,'image/index/6e54a186-001c-4cd4-acb6-98d8c649f02e.jpg');
INSERT INTO dg_laptop VALUES(NULL,'王子熊',"Mr. Bear",'1磅/228RMB',5,1,100,'image/index/3c88820a-ad19-4fd8-871d-b3527862f6a4.jpg');
INSERT INTO dg_laptop VALUES(NULL,'公主熊',"Miss Bear",'1磅/228RMB',8,1,76,'image/index/41ac9bb2-7ff4-484b-af31-1965a56bfc43.jpg');
INSERT INTO dg_laptop VALUES(NULL,'狮子王',"Leo Cake",'1磅/228RMB&2磅/368RMB&3磅/498RMB',3,1,86,'image/index/fac37352-aeb0-4ac9-a083-33a73010d017.jpg');
INSERT INTO dg_laptop VALUES(NULL,'浮云蛋糕卷',"Cake Roll",'原味/168RMB&草莓/168RMB&栗子/168RMB&榴莲/168RMB',0,1,0,'image/index/c214d87c-47db-421c-a4ac-fca3ffa12cb4.jpg');
INSERT INTO dg_laptop VALUES(NULL,'原味. 浮云卷',"Original Cake Roll",'份/168RMB',0,1,9,'image/index/c214d87c-47db-421c-a4ac-fca3ffa12cb4.jpg');
INSERT INTO dg_laptop VALUES(NULL,'榴莲.浮云卷',"Durian Cake Roll",'份/168RMB',0,1,13,'image/index/2cf13b77-111f-42fd-a49b-d440ce393aa9.jpg');
INSERT INTO dg_laptop VALUES(NULL,'椰子 · 爆浆奶盖',"Coconut Magma Cake",'6寸/128RMB',9,1,198,'image/index/bdffe9d4-a6cc-4928-ae72-97584837e6f3.jpg');
INSERT INTO dg_laptop VALUES(NULL,'芒果 · 爆浆奶盖',"Mango Magma Cake",'6寸/128RMB',8,1,193,'image/index/cb8961eb-9b1f-44a9-9c98-af40670c60b5.jpg');
INSERT INTO dg_laptop VALUES(NULL,'榛 · 骑士',"Hazelnut cake",'2磅/298RMB&3磅/428RMB',4,1,102,'image/index/72947ea7-32ff-4d56-b789-bfd4f7ad4cb7.jpg');
INSERT INTO dg_laptop VALUES(NULL,'「全国配送」Diy珍珠·爆浆奶盖',"Pearl Magma Cake",'6寸/138RMB&7寸/168RMB',3,1,3,'image/index/635c5639-9d72-4bfb-a0d1-69358b3f9a3c.jpg');
INSERT INTO dg_laptop VALUES(NULL,'「全国配送」Diy椰子·爆浆奶盖',"Coconut Magma Cake",'6寸/128RMB',5,1,7,'image/index/cbd47bcf-904f-4610-bb9d-17a8107df8dd.jpg');
INSERT INTO dg_laptop VALUES(NULL,'榴芒',"Full Durian Mango Mousse",'1磅/168RMB&2磅/288RMB',86,1,847,'image/index/73eea352-ce93-41ca-b6f8-eae7564731ef.jpg');
INSERT INTO dg_laptop VALUES(NULL,'栗蓉可可',"Chestnut Cream",'1磅/168RMB&2磅/288RMB&3磅/398RMB&5磅/658RMB',60,1,313,'image/index/a8a2c56d-5312-44bc-815d-4c5b62f208b7.jpg');
INSERT INTO dg_laptop VALUES(NULL,'花园下午茶礼盒',"GardenTea",'套/288RMB',56,1,122,'image/index/2916fd33-2ee9-4e61-86ce-9cfe4b6defb0.jpg');
INSERT INTO dg_laptop VALUES(NULL,'芒果满溢软心慕斯',"Mango Deluxe Mousse",'1.5磅/168RMB&2.5磅/288RMB&3.5磅/398RMB&5磅/658RMB',91,1,387,'image/index/edf9ca58-ccb5-45f6-8deb-ee4d9be4f00e.jpg');
INSERT INTO dg_laptop VALUES(NULL,'许愿池慕斯三杯装',"Wishing Well",'个/66RMB',6,1,58,'image/index/0a41ae6a-69ac-42c9-b01a-e940afcf06e4.jpg');

#2.1创建蛋糕详情表
#weight VARCHAR(16),sweet VARCHAR(16),    #甜度  #重量-磅size VARCHAR(16),    #大小尺寸people VARCHAR(16),  #适合人数
	
	
CREATE TABLE dg_laptop_details(
	did INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(128),  #主标题
	other_title VARCHAR(128),  #副标题
	lgq VARCHAR(128),     #大图片路径
	lgw VARCHAR(128),     #大图片路径
	lge VARCHAR(128),     #大图片路径
	lgr VARCHAR(128)     #大图片路径
	
);
#插入蛋糕详情数据
INSERT INTO dg_laptop_details VALUES(NULL,'金芒芒','Golden Mango','image/product/4cc11ced-2bc5-420f-9352-de39b0a3d4c2.jpg','image/product/5706d248-d4fb-43c3-9bad-24b4b32bb40c.jpg','image/product/ee734082-a86e-42f6-b62e-95e4ea3c108e.jpg','image/product/6fa61185-c37c-45bb-8d6b-142d3327cfff.jpg');

#2.2创建最新活动蛋糕表
CREATE TABLE dg_nactive(
	nid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(128),  #主标题
	date VARCHAR(128),   #日期
	heart INT,           #点赞数
	sm VARCHAR(128)      #小图片路径
);
#插入最新活动数据
INSERT INTO dg_nactive VALUES(NULL,'小心巧克力的陷阱','2019-10-18',0,'image/nactive/3bc1ae0a-adb9-4f21-9e43-19039ae7ce19.jpg');
INSERT INTO dg_nactive VALUES(NULL,'我承认这次很黄','2019-10-04',1,'image/nactive/0a9e80a0-25a0-4fb7-ac79-88f3376084f1.jpg');
INSERT INTO dg_nactive VALUES(NULL,'蜜桃成熟时','2019-09-22',1,'image/nactive/6c69b11f-1fe2-429a-bdf4-3afc83bad766.jpg');
INSERT INTO dg_nactive VALUES(NULL,'我承认这次很黄','2019-10-04',1,'image/nactive/0a9e80a0-25a0-4fb7-ac79-88f3376084f1.jpg');
INSERT INTO dg_nactive VALUES(NULL,'蜜桃成熟时','2019-09-22',1,'image/nactive/6c69b11f-1fe2-429a-bdf4-3afc83bad766.jpg');
INSERT INTO dg_nactive VALUES(NULL,'蜜桃成熟时','2019-09-22',1,'image/nactive/6c69b11f-1fe2-429a-bdf4-3afc83bad766.jpg');
#2.3创建蛋糕食材表
CREATE TABLE dg_natvral(
	dnid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(128),  #主标题
	brand VARCHAR(32),   #产品品牌
	name  VARCHAR(32),   #产品名称
	sm VARCHAR(128),      #图片路径
	wm VARCHAR(128)     #弹出图片路径
);
#插入蛋糕食材数据
INSERT INTO dg_natvral VALUES(NULL,'可可百利','法国可可百利','可可粉','image/cake_book/d150ba0a-05ff-436a-93b1-695adfd20b6c.jpg','image/cake_book/window/d270d4bc-47b1-48db-b592-eac45e549ac9.jpg');
INSERT INTO dg_natvral VALUES(NULL,'嘉利宝','比利时嘉利宝','白巧克力（30%可可脂）','image/cake_book/3b3d8788-86a8-42a9-9590-2d64925058a6.jpg','image/cake_book/window/b457eae9-5df5-445c-86ee-e771ec74c8be.jpg');
INSERT INTO dg_natvral VALUES(NULL,'百利','爱尔兰Baileys','百利甜酒','image/cake_book/00c8d1dc-5d4e-4df5-b7b6-bf304c6f0be5.jpg','image/cake_book/window/ef3981d0-5ca8-4a4d-bacd-44c7225d2461.jpg');
INSERT INTO dg_natvral VALUES(NULL,'帝赞','比利时帝赞','黑巧克力（72%）','image/cake_book/6868ccf8-774a-4526-8289-70050d175c9f.jpg','image/cake_book/window/a17c9db1-1fac-4a7c-bb45-20d3d2f3f8e0.jpg');
INSERT INTO dg_natvral VALUES(NULL,'总统','法国总统','淡奶油','image/cake_book/23fd2855-cafa-4ac7-ba97-c584f0978a60.jpg','image/cake_book/window/bf501a9a-a558-4dc5-b62d-092f01600e67.jpg');
INSERT INTO dg_natvral VALUES(NULL,'卡玛','瑞士卡玛','黑巧克力（52%）','image/cake_book/660f0eea-2e02-46b4-8cb8-99c3e1c875d0.jpg','image/cake_book/window/4300c703-b175-4e1f-9bb4-46361b5c90cd.jpg');
INSERT INTO dg_natvral VALUES(NULL,'铁塔','法国铁塔','淡奶油','image/cake_book/d5749ad4-1a9e-497c-9fb5-48b61e8ee3da.jpg','image/cake_book/window/47113edd-4627-4e0c-954e-45f99177afb1.jpg');
INSERT INTO dg_natvral VALUES(NULL,'威士忌','格兰杰威士忌','苏格兰Glenmorangie','image/cake_book/1e0e482c-a5af-4802-937f-65a766a3d638.jpg','image/cake_book/window/c6c75ea9-13fb-4c70-bcde-3fa0ffd25177.jpg');
INSERT INTO dg_natvral VALUES(NULL,'安佳','新西兰安佳','淡奶油、芝士、黄油','image/cake_book/33196fc1-4d62-4c4e-80cd-f2237f7feed9.jpg','image/cake_book/window/90afdb7c-eaa4-440a-a36b-735c54304203.jpg');
INSERT INTO dg_natvral VALUES(NULL,'恒天然','新西兰恒天然','全脂奶粉','image/cake_book/a9c0d5b0-621f-4962-8a54-a9a9dd6d772b.jpg','image/cake_book/window/6842a44f-878a-4760-9968-8700a23eee0b.jpg');
INSERT INTO dg_natvral VALUES(NULL,'佳沛','新西兰佳沛','金/绿奇异果','image/cake_book/10775f57-e839-46e5-aeb7-916312e26c3c.jpg','image/cake_book/window/1e6a7853-63fd-4a2f-ab45-d501fd7dbbdd.jpg');
INSERT INTO dg_natvral VALUES(NULL,'格尔巴尼','意大利格尔巴尼','mascarpone','image/cake_book/2a897fea-6e02-480f-a03c-31b40a1fc624.jpg','image/cake_book/window/8e214556-1a97-49ae-bbd4-10c597318655.jpg');
INSERT INTO dg_natvral VALUES(NULL,'一品莓','新鲜草莓','新鲜草莓','image/cake_book/6ada1593-875c-4fd2-8139-0be746525210.jpg','image/cake_book/window/677910b4-a0d7-49ab-a608-7f8903174d83.jpg');
INSERT INTO dg_natvral VALUES(NULL,'正字牌','泰国进口金枕头榴莲','泰国进口金枕头榴莲','image/cake_book/e683e4cb-8431-44ce-8ba9-0d9686258fc9.jpg','image/cake_book/window/11cb7ade-0524-4e5e-a25b-b0a94b2a9834.jpg');
INSERT INTO dg_natvral VALUES(NULL,'柠檬','美国新奇士','美国新奇士','image/cake_book/36599594-86f8-4703-8b5a-b972ec717e96.jpg','image/cake_book/window/11cb7ade-0524-4e5e-a25b-b0a94b2a9834.jpg');
INSERT INTO dg_natvral VALUES(NULL,'明治','明治淡奶油','明治meiji','image/cake_book/a745010d-d0e0-40b4-bbc1-dfbbebabb2da.jpg','image/cake_book/window/5fae5950-9e90-43a6-a6d1-e14ad72bf875.jpg');
#3.创建首页轮播图表
CREATE TABLE dg_index_carousel(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	img VARCHAR(128),     #图片路径
	title VARCHAR(128)    #图片描述
);
#插入轮播图数据
INSERT INTO dg_index_carousel VALUES(NULL,'image/carousel/2e2b5776-98df-4893-b34f-df91aeb202c3.jpg','开心歌剧');
INSERT INTO dg_index_carousel VALUES(NULL,'image/carousel/cc6cac36-71e9-420a-b136-2954b3b0f504.jpg','金芒芒');
INSERT INTO dg_index_carousel VALUES(NULL,'image/carousel/129f967c-8f4f-4465-b51a-ca60f5cec2d2.jpg','蜜桃の森');
INSERT INTO dg_index_carousel VALUES(NULL,'image/carousel/b2c93199-b83d-4010-bb8a-9e7bee179c42.jpg','繁花一世');
#4.创建用户地址表
CREATE TABLE dg_receiver_address(
	aid INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,	       #对应dg_user中的uid
	receiver VARCHAR(16),  #接收人姓名
	city VARCHAR(16),      #市
	address VARCHAR(128),  #详细地址
	cellphone VARCHAR(16), #手机
	is_default BOOLEAN     #是否为当前用户的默认收货地址
);
#5.创建购物车条目
CREATE TABLE dg_shoppingcart(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,      #用户编号
	product_id INT,   #商品编号
	count INT,        #购买数量
	is_checked BOOLEAN #是否已勾选，确定购买
);
#6.创建用户订单表
CREATE TABLE dg_order(
	oid INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,      #用户编号
	address_id INT,
	product_id INT,   #商品编号
	count INT,        #购买数量
	status INT,       #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
	order_time BIGINT,      #下单时间
        pay_time BIGINT,        #付款时间
        deliver_time BIGINT     #发货时间
);
