SET NAMES UTF8;
DROP DATABASE IF EXISTS six;
CREATE DATABASE six CHARSET=UTF8;
USE six;
#头部的目的地的数据表搭建
CREATE TABLE six_header_destination(
  id INT PRIMARY KEY AUTO_INCREMENT,
  area VARCHAR(50),
  placeName VARCHAR(200)
);
#尾部的热门推荐的数据表搭建
CREATE TABLE six_footer_recommended(
  id INT PRIMARY KEY AUTO_INCREMENT,
  placeName VARCHAR(50)
);
#主页的轮播图的数据表搭建
CREATE TABLE six_index_banner(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(100)
);
#主页的概念导航条的数据表搭建
CREATE TABLE six_index_concept(
  id INT PRIMARY KEY AUTO_INCREMENT,
  concept VARCHAR(100),
  normal VARCHAR(100),
  hover VARCHAR(100)
);
#主页的热门推荐的地名数据表搭建
CREATE TABLE six_index_hotPlaceName(
  id INT PRIMARY KEY AUTO_INCREMENT,
  area VARCHAR(50),
  placeName VARCHAR(50)
);
#主页的热门推荐的图片数据表搭建
CREATE TABLE six_index_hotPlaceImg(
  id INT PRIMARY KEY AUTO_INCREMENT,
  placeName VARCHAR(50),
  img VARCHAR(100)
);
#主页的旅行顾问的数据表搭建
CREATE TABLE six_index_consultant(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(100),
  cName VARCHAR(50),
  position VARCHAR(50),
  area VARCHAR(50),
  introduce VARCHAR(200)
);
#客户评价的数据表搭建
CREATE TABLE six_user_comment(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(100),
  title VARCHAR(50),
  pName VARCHAR(50),
  pubDate VARCHAR(50),
  feeling VARCHAR(200)
);












#头部的目的地的数据表插入
INSERT INTO six_header_destination VALUES(null,'美洲',"['美国','加拿大','阿根廷','巴西','智利','秘鲁','古巴','墨西哥','南极','玻利维亚','厄尔瓜多']");
INSERT INTO six_header_destination VALUES(null,'中东 非洲',"['阿布扎比','迪拜','以色列','南非','埃及','摩洛哥','肯尼亚','纳米比亚','坦桑尼亚']");
INSERT INTO six_header_destination VALUES(null,'欧洲',"['英国','法国','瑞士','荷兰','德国','希腊','意大利','西班牙','葡萄牙','捷克','奥地利','匈牙利','挪威','丹麦','芬兰','冰岛','瑞典','俄罗斯']");
INSERT INTO six_header_destination VALUES(null,'亚洲',"['泰国','新加坡','越南','日本','柬埔寨','斯里兰卡','缅甸','伊朗','印度','土耳其','尼泊尔','马来西亚','老挝']");
INSERT INTO six_header_destination VALUES(null,'大洋洲',"['澳大利亚','新西兰']");
INSERT INTO six_header_destination VALUES(null,'海岛',"['巴厘岛','普吉岛','苏梅岛','马尔代夫','斐济','毛里求斯','塞舌尔','塞班岛','大溪地','关岛']");
INSERT INTO six_header_destination VALUES(null,'中国台湾',"['台湾']");
#尾部的热门推荐的数据表插入
INSERT INTO six_footer_recommended VALUES(null,'美国定制旅游');
INSERT INTO six_footer_recommended VALUES(null,'法国定制旅游');
INSERT INTO six_footer_recommended VALUES(null,'北欧定制旅游');
INSERT INTO six_footer_recommended VALUES(null,'新西兰定制旅游');
INSERT INTO six_footer_recommended VALUES(null,'海岛度假别墅');
INSERT INTO six_footer_recommended VALUES(null,'南极旅游');
INSERT INTO six_footer_recommended VALUES(null,'瑞士定制旅游');
INSERT INTO six_footer_recommended VALUES(null,'意大利定制旅游');
INSERT INTO six_footer_recommended VALUES(null,'马尔代夫定制旅游');
INSERT INTO six_footer_recommended VALUES(null,'泰国定制旅游');
INSERT INTO six_footer_recommended VALUES(null,'加拿大定制旅游');
INSERT INTO six_footer_recommended VALUES(null,'澳洲定制旅游');
INSERT INTO six_footer_recommended VALUES(null,'印度定制旅游');
INSERT INTO six_footer_recommended VALUES(null,'马来西亚定制旅游');
INSERT INTO six_footer_recommended VALUES(null,'缅甸定制旅游');
INSERT INTO six_footer_recommended VALUES(null,'斯里兰卡定制旅游');
#主页的轮播图的数据表数据插入
INSERT INTO six_index_banner VALUES(null,'img/index/index_banner1.jpg');
INSERT INTO six_index_banner VALUES(null,'img/index/index_banner2.jpg');
INSERT INTO six_index_banner VALUES(null,'img/index/index_banner3.jpg');
INSERT INTO six_index_banner VALUES(null,'img/index/index_banner4.jpg');
#主页的概念导航条的数据表搭建
INSERT INTO six_index_concept VALUES(null,'parent','img/index/icon_parent_nor.png','img/index/icon_parent_hov.png');
INSERT INTO six_index_concept VALUES(null,'children','img/index/icon_children_nor.png','img/index/icon_children_hov.png');
INSERT INTO six_index_concept VALUES(null,'friend','img/index/icon_friend_nor.png','img/index/icon_friend_hov.png');
INSERT INTO six_index_concept VALUES(null,'user','img/index/icon_user_nor.png','img/index/icon_user_hov.png');
#主页的热门推荐的地名的数据表插入
INSERT INTO six_index_hotPlaceName VALUES(null,'亚洲',"['台湾','泰国','不丹','新加坡','巴厘岛','日本']");
INSERT INTO six_index_hotPlaceName VALUES(null,'欧洲 美洲',"['法国','意大利','英国','瑞士','奥地利','德国','美国','塞班岛','加拿大','古巴','墨西哥','西班牙']");
INSERT INTO six_index_hotPlaceName VALUES(null,'澳新 中东非洲',"['新西兰','澳大利亚','斐济','肯尼亚','毛里求斯','迪拜']");
#主页的热门推荐的图片的数据表插入
INSERT INTO six_index_hotPlaceImg VALUES(null,'迪拜','img/index/hot_dubai.jpg');
INSERT INTO six_index_hotPlaceImg VALUES(null,'马尔代夫','img/index/hot_maldives.jpg');
INSERT INTO six_index_hotPlaceImg VALUES(null,'日本','img/index/hot_japan.jpg');
INSERT INTO six_index_hotPlaceImg VALUES(null,'新西兰','img/index/hot_zealand.jpg');
INSERT INTO six_index_hotPlaceImg VALUES(null,'西班牙','img/index/hot_spain.jpg');
INSERT INTO six_index_hotPlaceImg VALUES(null,'泰国','img/index/hot_thailand.jpg');
INSERT INTO six_index_hotPlaceImg VALUES(null,'巴厘岛','img/index/hot_bali.jpg');
INSERT INTO six_index_hotPlaceImg VALUES(null,'阿根廷','img/index/hot_argentina.jpg');
#主页的旅行顾问的数据表搭建
INSERT INTO six_index_consultant VALUES(null,'img/index/FangChao.jpg','方超','高级顾问','欧洲','身体和灵魂，必须有一个在路上！旅行对每个人来说，都是恢复青春活力的必备良药，放心把你的旅行交给我，让我来还你一趟舒心之旅');
INSERT INTO six_index_consultant VALUES(null,'img/index/Echo.jpg','Echo','高级顾问','美国、加拿大、巴哈马','从事旅游6年，行走美国加拿大，探索过纽约州，擅长北美线路。希望可以用我的专业知识，让每一位在路上的您能获取属于自己的乐趣');
INSERT INTO six_index_consultant VALUES(null,'img/index/XiXi.jpg','西西','高级顾问','东南亚、海岛','从业7年，已将旅行融入生活，期待与您分享旅途中的见闻，希望用东南亚的热情，海岛的旖旎，我的贴心服务，带您赴一场美丽的约！');
INSERT INTO six_index_consultant VALUES(null,'img/index/ALong.jpg','阿龙','高级顾问','美国、加拿大','从事旅游6年，曾徒步走过波浪谷，坐火车游落基山脉。十分乐意为您的北美旅行提供一个可靠的解决方案，为您的旅行添一把力！');
INSERT INTO six_index_consultant VALUES(null,'img/index/ZhangQing.jpg','张青','旅行顾问','欧洲、迪拜、以色列','双鱼座：开朗、热情、正义、重感情,累计策划线路：800+,去过的地方：欧洲、澳大利亚、迪拜、新加坡等');
INSERT INTO six_index_consultant VALUES(null,'img/index/Linda.jpg','Linda','高级顾问','商考、会议、奖励','从事旅游7年。极度热爱旅行，擅长设计“日韩台”定制旅行产品，操作大型公务旅行团队。我相信旅行是设计师与旅行者互动的过程。');
INSERT INTO six_index_consultant VALUES(null,'img/index/Lola.jpg','Lola','旅行顾问','中美洲、南美洲','从事旅游5年，擅长美洲订制旅行产品及深度线路设计，希望能用我的专业陪伴您走过万水千山，与美好相遇...........');
INSERT INTO six_index_consultant VALUES(null,'img/index/YangDi.jpg','杨迪','旅行顾问','欧洲','从事旅行定制6年，擅长英国、东欧、西欧、巴尔干地区，期望可以用我的专业和热情带给您不一样的私属旅行体验！');
INSERT INTO six_index_consultant VALUES(null,'img/index/LiuNa.jpg','刘娜','旅行顾问','澳大利亚、新西兰','累计策划线路：1000+ 本人从事旅游业十年，一直本着服务至上的原则，认真对待每一位游客，工作让我结识了很多爱好旅游朋友。');
INSERT INTO six_index_consultant VALUES(null,'img/index/Lily.jpg','Lily','高级顾问','非洲、南极、北极','累计策划线路：163 去过：美国，委内瑞拉，厄瓜多尔，圭亚那，法属圭亚那，苏里南，特立尼达多巴哥，巴西，阿根廷，秘鲁，南极等');
INSERT INTO six_index_consultant VALUES(null,'img/index/MingMing.jpg','铭铭','旅行顾问','东南亚、海岛','旅游从业6年，不管您是：蜜月旅行，家庭出游或者度假休闲，我都会贴心定制您的专享行程！希望我的专业能给您带来一段难忘的回忆~');
INSERT INTO six_index_consultant VALUES(null,'img/index/HuJian.jpg','胡健','旅行顾问','拉丁美洲、南极、北极','旅游从业5年，擅长“中南美洲”定制旅行产品。操作各种深度线路。好的出行方案设计和顾问服务，是开始美好旅程的第一步。');
INSERT INTO six_index_consultant VALUES(null,'img/index/XiaoYa.jpg','小雅','高级顾问','北美、中美、南美','重度旅游发烧友，旅游体验师，探访过20多个国家，擅长北美南美的特殊高难度行程设计，把客户的每一次出行都当作自己出行去对待！');
INSERT INTO six_index_consultant VALUES(null,'img/index/ZhaoZhao.jpg','昭昭','高级顾问','东南亚、海岛','旅游从业7年，为上千名游客预定过出行的方案，擅长沟通，热爱交流，我希望用我的专业带着您去领略世界的风景，感受各国的风情');
INSERT INTO six_index_consultant VALUES(null,'img/index/MengMeng.jpg','朦朦','高级顾问','东南亚、全球海岛','旅游从业9年，我很庆幸能将兴趣变成我挚爱的工作，我愿意将我旅行中遇到的美妙风景推荐给大家，让您也有一段与众不同的旅行！');
INSERT INTO six_index_consultant VALUES(null,'img/index/XiaoTan.jpg','小谭','旅行顾问','日本','从事日本定制游6年，春日的落樱、夏日的凉雨、秋日的红枫、冬日的粉雪，一路走过日本的四季，脚下的步，心中的路。我在6人游等你');
INSERT INTO six_index_consultant VALUES(null,'img/index/LiaoYangQing.jpg','聊杨清','旅行顾问','澳大利亚、新西兰','爱旅行，爱美食，爱生活~始终坚信美丽的风景永远在路上，享你所想，放慢匆忙的脚步，驻足于此，请随我赴一场绝美的澳世飨宴。');
INSERT INTO six_index_consultant VALUES(null,'img/index/QinDongYuan.jpg','秦东媛','旅行顾问','欧洲','旅行是拥抱自己重新认识自己和这个世界的过程。趁阳光正好，趁微风不燥，趁繁花还未开至荼靡，让我为您开启您的欧罗巴之旅吧');
INSERT INTO six_index_consultant VALUES(null,'img/index/YangYang.jpg','洋洋','旅行顾问','东南亚、海岛','从事旅游行业7年，擅长东南亚及海岛线路定制，希望通过我的服务，帮您走出家门，并完成每一次美妙的旅程！');
INSERT INTO six_index_consultant VALUES(null,'img/index/Mino.jpg','Mino','旅行顾问','北美、夏威夷','旅游从业5年，擅长“北美及夏威夷”旅行产品定制，操作各种深度线路，我期待着与您相遇...');
INSERT INTO six_index_consultant VALUES(null,'img/index/XiaoHan.jpg','小寒','旅行顾问','台湾','从事台湾定制游7年，每次踏上这片土地就像是再来一场爱人的约会！我能够完美结合您的意愿为您和家人定制完美的出行计划！');
INSERT INTO six_index_consultant VALUES(null,'img/index/WangMiaoMiao.jpg','王苗苗','旅行顾问','欧洲','从最初的济州岛再到游历欧洲各国，一路上看美丽的风景，品尝美味，让身心彻底放松，感受不一样的风土人情，从次便欲罢不能。');
INSERT INTO six_index_consultant VALUES(null,'img/index/HeMiao.jpg','何淼','旅行顾问','日本','我的人生目标就是：踏遍日本的每一寸土地，带上你，一起看春天华粉的樱花，夏天绚烂的烟火，秋天热烈的红叶，冬天松软的粉雪。');
INSERT INTO six_index_consultant VALUES(null,'img/index/JingJing.jpg','晶晶','旅行顾问','欧洲','因为一直在路上，生活才充满阳光。厌倦了每天的重复生活，想逃开，想放下，世界阔大，那让我们即刻出发吧。');