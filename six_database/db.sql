SET NAMES UTF8;
DROP DATABASE IF EXISTS six;
CREATE DATABASE six CHARSET=UTF8;
USE six;
#登录/注册的用户的数据表搭建
CREATE TABLE six_user_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(32),
  permission INT
);
#功能二:添加二条测试数据 
#模拟客户的账号
INSERT INTO six_user_login VALUES(null,'tom',md5('123'),1);
#模拟管理员的账号
INSERT INTO six_user_login VALUES(null,'jerry',md5('123'),0);

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
#主页的热门推荐的图片数据库搭建
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
#度假&别墅的轮播图的数据表搭建
CREATE TABLE six_villa_banner(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(100),
  title VARCHAR(50)
);
#度假&别墅的甄选主题的数据表搭建
CREATE TABLE six_villa_theme(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(100),
  title VARCHAR(50)
);
#度假别墅的别墅信息的数据表搭建
CREATE TABLE six_villa_villa(
  id INT PRIMARY KEY AUTO_INCREMENT,
  bigImg VARCHAR(100),
  title VARCHAR(50),
  subTitle VARCHAR(50),
  Vname VARCHAR(50),
  place VARCHAR(200),
  manager VARCHAR(50),
  managerImg VARCHAR(100),
  introduce VARCHAR(250),
  price INT,
  keyWords VARCHAR(50)
);
#商务考察的优质资源的数据表搭建
CREATE TABLE six_business_resources(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),
  img VARCHAR(100)
);
#商务考察的考察案例的数据表搭建
CREATE TABLE six_business_case(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(100),
  title VARCHAR(50),
  place VARCHAR(50)
);
#商务考察的合作企业的数据表搭建
CREATE TABLE six_business_enterprise(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(100)
);














#头部的目的地的数据表插入
INSERT INTO six_header_destination VALUES(null,'美洲','美国,加拿大,阿根廷,巴西,智利,秘鲁,古巴,墨西哥,南极,玻利维亚,厄尔瓜多');
INSERT INTO six_header_destination VALUES(null,'中东 非洲','阿布扎比,迪拜,以色列,南非,埃及,摩洛哥,肯尼亚,纳米比亚,坦桑尼亚');
INSERT INTO six_header_destination VALUES(null,'欧洲','英国,法国,瑞士,荷兰,德国,希腊,意大利,西班牙,葡萄牙,捷克,奥地利,匈牙利,挪威,丹麦,芬兰,冰岛,瑞典,俄罗斯');
INSERT INTO six_header_destination VALUES(null,'亚洲','泰国,新加坡,越南,日本,柬埔寨,斯里兰卡,缅甸,伊朗,印度,土耳其,尼泊尔,马来西亚,老挝');
INSERT INTO six_header_destination VALUES(null,'大洋洲','澳大利亚,新西兰');
INSERT INTO six_header_destination VALUES(null,'海岛','巴厘岛,普吉岛,苏梅岛,马尔代夫,斐济,毛里求斯,塞舌尔,塞班岛,大溪地,关岛');
INSERT INTO six_header_destination VALUES(null,'中国台湾','台湾');
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
#主页的热门推荐的地名的数据库插入
INSERT INTO six_index_hotPlaceName VALUES(null,'亚洲','台湾,泰国,不丹,新加坡,巴厘岛,日本');
INSERT INTO six_index_hotPlaceName VALUES(null,'欧洲 美洲','法国,意大利,英国,瑞士,奥地利,德国,美国,塞班岛,加拿大,古巴,墨西哥,西班牙');
INSERT INTO six_index_hotPlaceName VALUES(null,'澳新 中东非洲','新西兰,澳大利亚,斐济,肯尼亚,毛里求斯,迪拜');
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
INSERT INTO six_index_consultant VALUES(null,'img/index/JingJing.jpg','晶晶','旅行顾问','欧洲','因为一直在路上，生活才充满阳光。厌倦了每天的重复生活，想逃开，想放下，世界阔大，那让我们即刻出发吧。');
#客户评价的数据表插入
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user1.jpg','巴厘岛休闲度假之旅','王女士','2019年01月','此次行程很满意，舒适度好，接待很好，无论是吃住还是玩都很极致！做到了无缝链接。');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user2.jpg','吹着海风轻轻的走向你台湾之旅','付先生','2019年01月','非常棒的小众游体验，小寒帮我安排的很好，台湾接待的陈瑞华同样也很棒，全家都很满意，以后出游继续找6人游！');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user3.jpg','北海道撩猴team','项女士','2019年01月','感谢司兼导平平，旅行顾问安安，让我们开开心心出门去，平平安安回家来，也感谢“6人游”所有工作人员，祝越来越好');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user4.jpg','柬埔寨7日游','陈女士','2019年01月','非常满意，顾问小陈心很细，本来还想说忘了提醒选座位的事，结果小陈不声不响都给值机了，还按我上次的喜好来的');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user5.jpg','以色列约旦8晚11天圣地之约','李女士','2019年02月','感谢张青的专业服务，临近过年，地接导游临时取消，张青一直联系接洽，最后接待导游很不错，让我们有了一个安全有趣的经历。');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user6.jpg','尽享奢华迪拜休闲亲子7日之旅','李女士','2019年02月','
整个行程安排比较合理舒适，顾问考虑很全面，导游也比较周到。');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user7.jpg','新西兰南北岛13日之旅','王女士','2019年02月','非常满意！刘娜计划行程时非常认真负责，尊重客户意见并能提出合理建议。地接社服务也很好，派出的司机都很让人满意！基督城那个花园酒店也不错，特别赞这次的导游，安排的几个都很不错！');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user8.jpg','台湾本土文化和当代艺术的美妙平衡','潘女士','2019年03月','6人游的服务真的很棒，点赞！');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user9.jpg','畅游迪拜奢华神秘7日之旅','张女士','2019年03月','感谢六人行顾问张青，感谢地陪胡姐，此次迪拜之行我们玩的很开心。境外游还会选择六人行！');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user10.jpg','品味锡兰 袅袅茶香 情迷印度洋','徐女士','2019年03月','本次行程安排的都不错，就是起的有点早；导游特别热情，和我们讲了很多兰卡的历史，风俗挺有趣的一个人');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user11.jpg','盆景上的贵州10日探秘','李女士','2019年03月','
非常好的一次旅行！');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user12.jpg','神秘泸沽湖6日之旅','吴女士','2019年03月','很好');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user13.jpg','普吉岛曼谷风光的完美结合','金女士','2019年03月','感觉很好，地陪很专业');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user14.jpg','巴厘岛7日休闲度假','王女士','2019年03月','这次的地接是我遇到最好的地接，挑不出一点儿毛病，旅行体验非常好。感谢六人游。');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user15.jpg','斯里兰卡6日游 品味锡兰 袅袅茶香','卢先生','2019年04月','一如既往的服务和品质，赞');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user16.jpg','日本京都4日赏樱之旅','江女士','2019年04月','下一步的旅游还会选择六人游产品，希望能更好！');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user17.jpg','一次走进巴厘人生活的旅行','廖女士','2019年04月','这次巴厘岛之旅非常开心，感谢团友们和六人游后勤保障部的所有工作人员，特别感谢顾问小陈和地陪安娜水，小陈工作认真负责，非常有耐心，安娜水很热情很尽职，让我们度过一个愉快的假期。');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user18.jpg','普吉岛7日悠闲度假','徐女士','2019年05月','我们全家对本次的旅行非常满意，全程跟踪服务，关键时刻温馨提示，顾问大娇服务热情，监督员对突发事件解决的及时到位，目的地的接待的也很好，态度和蔼，可亲，司机师傅安全意识很强，服务态度很好。');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user19.jpg','东欧巴尔干7国16天花样度假之旅','胡女士','2019年05月','
这趟旅行奇遇不断惊喜不断，最后圆满收官！还有神秘礼物，感谢为我们行程操碎心的胡团长东媛美美、全陪小猴子&波兰王导、波黑Wu导&谢谢六人游此行难忘');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user20.jpg','西西里岛+阿玛菲海岸+罗马度假','王女士','2019年06月','旅行圆满的结束了，非常的愉快、开心，首先要感谢杜娟小朋友为我们安排了非常独特和精致的旅游行程，所到之处无不感受到意大利西西里岛的美丽和迷人。更要感谢我们的郑导，郑导亲善和蔼，热情友好。');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user21.jpg','摩洛哥轻奢之旅','杨女士','2019年06月','参加的12天奢华小团摩洛哥旅行，线路设计非常棒，全程酒店都很美，有网红酒店也有当地特色酒店，吃的方面也会根据团友的要求进行调整，最牛的是学做塔吉锅的安排团友硬是做出一顿饺子大餐，地接王导很棒，拍照非常棒');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user22.jpg','英国11晚13日品味英伦亲子之旅','陈先生','2019年07月','安排的很好！ 很开心！');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user23.jpg','肯尼亚9晚11天野性呼唤','陆小姐','2019年07月','非常满意');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user24.jpg','南非18晚20天动物与自然惊奇之旅','邹女士','2019年07月','全程下来深度了解到纳米比亚这么美，6人游顾问服务非常好，导游很热情友好很专业，继续支持！');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user25.jpg','普吉岛5晚7日亲子悠闲游-邂逅','班女士','2019年08月','本次普吉岛之行特别愉快，老人和小孩都感觉玩的特别舒心，感谢6人游的精心安排，地接导游也非常热情周到！');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user26.jpg','品位锡兰情迷印度洋','张女士','2019年08月','抱着试试的心态第一次选择6人游，真是意外的惊喜，无论是前期和顾问的沟通，还是后期当地地接的服务、以及酒店安排和行程安排，为我们安排了一个非常好的闺蜜游，下次还会继续选择6人游。');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user27.jpg','马尔代夫4晚6日休闲之旅','苏女士','2019年08月','一次完美的旅行体验，出发前还在六人游买了个行李箱，简直不要太好哟，非常期待下一次的行程。');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user28.jpg','曼谷芭提雅6日','马先生','2019年08月','感谢顾问马昭一路上用心安排及服务，期待下次再见');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user29.jpg','澳大利亚品质之旅','李先生','2019年08月','这次旅行特别愉快，感谢6人游的精心安排，顾问、地接导游也非常热情周到！');
INSERT INTO six_user_comment VALUES(null,'img/UserComment/user30.jpg','亲临众神的国度','李女士','2019年08月','从顾问到地接人员都非常周到细心，尽职尽责，沟通交流无障碍，今后还会继续选择6人游出行。');
#度假&别墅的轮播图的数据表插入
INSERT INTO six_villa_banner VALUES(null,'img/Villa/villa_top_banner1.jpg','普吉岛Keemala度假酒店');
INSERT INTO six_villa_banner VALUES(null,'img/Villa/villa_top_banner2.jpg','巴厘岛贝尔蒙德金巴兰普利酒店');
INSERT INTO six_villa_banner VALUES(null,'img/Villa/villa_top_banner3.jpg','巴厘岛悦榕庄度假酒店');
#度假&别墅的甄选主题的数据表插入
INSERT INTO six_villa_theme VALUES(null,'img/Villa/villa_theme_icon1.jpg','亲子时光');
INSERT INTO six_villa_theme VALUES(null,'img/Villa/villa_theme_icon2.jpg','蜜月度假');
INSERT INTO six_villa_theme VALUES(null,'img/Villa/villa_theme_icon3.jpg','婚礼婚纱');
INSERT INTO six_villa_theme VALUES(null,'img/Villa/villa_theme_icon4.jpg','美食购物');
#度假&别墅的别墅信息的数据表插入
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img1.png','中国 秦皇岛 北戴河','北戴河黄金海岸度假村','Golden Coast ClubMed Joyview','河北省秦皇岛市昌黎县蒲河桥南一公里黄金海岸阿那亚社区','','img/Villa/Villa_manager1.png','','1142','亲子时光,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img2.jpg','印度尼西亚 巴厘岛','乌玛COMO乌布酒店','Uma by COMO','Jl. Raya Sanggingan, Banjar Lungsiakan, Kedewatan, Ubud, Kedewatan, Ubud, Kabupaten Gianyar, Bali 80571印度尼西亚','Gede Suteja','img/Villa/Villa_manager2.jpg','设计、避世、艺术、时尚，是COMO的一贯宗旨。我们将用最精心的服务为每位客人提供最奢华的体验。','1520','巴厘岛,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img3.jpg','马尔代夫','都喜天阙度假村','Dusit Thani Maldives','Mudhdhoo Island, Baa Atoll, 马尔代夫','Reinhold Johann','img/Villa/Villa_manager3.jpg','在都喜天阙，顾客可以体验海潜和浮潜、在无边界海景泳池中畅游、在泰丽水疗馆的树顶水疗舱享受护理体验，或在一家精致优美的餐厅中品味美食，然后回到舒适的、富泰式设计创意的别墅或套房中休息放松。','4760','马尔代夫,亲子时光,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img4.jpg','泰国 普吉岛','盛泰乐别墅度假村','Centara Villas Phuket','701 Patak Rd, Tambon Karon, Amphoe Mueang Phuket, Chang Wat Phuket 83100泰国','Denis Thouvard','img/Villa/Villa_manager4.jpg','欢迎来到普吉岛。盛泰乐的全体员工将竭力为您缔造一个完美的假期体验。','580','普吉岛,亲子时光,蜜月度假,婚礼婚纱');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img5.jpg','泰国 甲米','瑞亚维德酒店','Rayavadee','214 Tambon Ao Nang, อำเภอ เมือง Chang Wat Krabi 81000泰国','Dalin Snidvongs Na Ayudhya','img/Villa/Villa_manager5.png','甲米瑞亚维德酒店，时时关注入住客人的需求，处处体现用心和专注，带给您极佳的入住感受，能为您的假期增添更多欢乐。','3780','亲子时光,蜜月度假,美食购物');

INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img6.jpg','泰国 苏梅岛','圣缇丽度假村','Santiburi Beach Resort & Spa','12/12 หมู่ 1 ตำบล หาดแม่น้ำ Amphoe Ko Samui, Chang Wat Surat Thani 84330泰国','Cedric Bonvin','img/Villa/Villa_manager6.jpg','入住苏梅岛圣塔布里度假村，这里高品质的住房、完善的设施、温馨的氛围和一流的服务，将带给您宾至如归的感受，成为您苏梅岛之行的一个难忘回忆。','1880','苏梅岛,亲子时光,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img7.jpg','泰国 普吉岛','安纳塔拉迈考度假别墅','Anantara Mai Khao Phuket villas','888 Moo 3, Tumbon Mai Khao, Amphur Thalang, Phuket, 迈考海滩','Lyndon Ellis','img/Villa/Villa_manager7.jpg','能够看到我们的度假村顾客幸福开心，让我感到心满意足。我一直告诉我的团队：“客户的快乐就是我的快乐”。看到我们的客人在离店时精神焕发、笑逐颜开，对入住体验也遂心如意，这就是对我们最好的回报。','2980','普吉岛,亲子时光,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img8.png','马尔代夫 哈达哈岛','柏悦酒店','PARK HYATT MALDIVES HADAHAA','Gaafu Alifu Atoll, Hadahaa, North Huvadhoo 20054马尔代夫','PRAVIN KUMAR','img/Villa/Villa_manager8.png','我们拥有独特的位置，远离北部的环礁使我们的客人拥有豪华赤脚度假体验，唤起一个遥远和未触动过的天堂。位于北Huvadhoo内的一个私人岛屿上，马尔代夫最深的环礁以及距赤道仅仅55公里，为大家提供了一个完美的地方去隔绝，休息和放松。','4869','马尔代夫,亲子时光,蜜月度假,婚礼婚纱');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img9.jpg','泰国 普吉岛','阿玛塔拉康体度假村','Amatara Wellness Resort','84, Moo 8, Sakdidej Road Vichit Muang Chang Wat Phuket 83000,泰国','Dr. Prattana Punnakitikashem','img/Villa/Villa_manager9.jpg','我们衷心的希望每一位客人在阿玛塔拉都能享受到舒适便捷的高价值服务。任何一位我们最尊贵的客人都是我们酒店最宝贵的财富，我们将一如既往地遵从各位的最点滴的感受，并且时刻以客人的需求作为我们不断追求的目标。','1299','普吉岛,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img10.jpg','泰国 普吉岛','雅姆COMO度假村','Point Yamu by COMO','225 Moo 7, Talang, Paklok, Phuket','Kevin J. Abramowicz','img/Villa/Villa_manager10.jpg','我们很乐意升级酒店设施及服务，以满足大家的期望与需求。我们热切期待为大家呈献以养生为本的美食、住宿和服务。','2175','普吉岛,亲子时光,蜜月度假,婚礼婚纱');

INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img11.jpg','马尔代夫','香格里拉度假酒店',"Shangri-La's Villingili Resort & Spa Maldives",'Villingili Island, Addu Atoll, Republic of Maldives','Allwyn Drego','img/Villa/Villa_manager11.jpg','当您沿着度假酒店散步，眼前一望无际、碧蓝澄澈的印度洋海水令您惊叹不已。您就像一颗珍珠，依偎在马尔代夫香格里拉度假酒店温柔的蓝色怀抱中。','8200','马尔代夫,亲子时光,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img12.jpg','泰国 苏梅岛','四季度假酒店','Four Seasons Resort Koh Samui','219 Moo 5, Angthong, Koh Samui, Surat Thani, 84140，Thailand','','img/Villa/Villa_manager12.png','四季度假酒店坐落在西北部海岸宁静的私人海湾上，为宾客提供各式各样的水疗护理，泰式和意式美食在和煦的微笑中为您奉上，一切泰国海滩度假之旅的精华，尽在于此。','5937','苏梅岛,亲子时光,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img13.jpg','泰国 苏梅岛','贝尔蒙德纳帕赛酒店','Belmond Napasai Koh Samui','65/10 Moo 5 Baan Tai , 84330 湄南海滩, 泰国','','img/Villa/Villa_manager13.jpg','纳帕塞贝尔蒙德坐落在翠绿的热带花园和耀眼的大海之间，这里是泰国苏梅岛北部海岸的真正天堂。纯粹宁静的苏梅岛海滩度假胜地成就了纳帕塞贝尔蒙德避世隐居，哪怕只是凝视着金色的沙滩，都得以放松和舒缓。','1855','苏梅岛,亲子时光,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img14.jpg','印尼 巴厘岛','贝尔蒙德金巴兰普利酒店','Belmond Jimbaran Puri Bali','Jalan Uluwatu, 80361 金巴兰, 印尼','','img/Villa/Villa_manager14.jpg','金巴兰普利坐落在浪漫巴厘岛最美丽的海滩上。沙滩和海洋为您带来美妙的热带风情。 当天空变得深红色时，鸟儿在头顶上起飞，烤鱼的味道让人胃口大开。酒店坐拥静谧与浪漫，给你带来美好的度假体验。','2300','巴厘岛,亲子时光,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img15.jpg','泰国 普吉岛','Keemala酒店','Keemala Phuket','10/88 Moo. 6 Nakasud Rd,卡马拉沙滩地区,甲涂县,普吉岛,泰国','酒店经理','img/Villa/Villa_manager15.png','酒店致力于提供高品质生活的精彩体验。本度假村邻近卡拉马海滩，找乐客们可以感受芭东海滩的活力，体验普吉岛的灵动风光，还能自由地远离喧嚣，享受雨林的宁静氛围和种类繁多的综合活动和美食，幸福感爆棚。','3245','普吉岛,蜜月度假,婚礼婚纱');

INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img16.jpg','泰国 普吉岛','Trisara特瑞萨拉酒店','Trisara','60/1 Moo6 Srisoonthorn Road, Cherngtalay, Thalang, Phuket, 83110 奈通海滩, 泰国','Narong Pattamasaevi','img/Villa/Villa_manager16.png','作为泰国文化的一部分，我们要能够触动客人的心灵，以满满的正能量感染我们的客人，以激发他们对永恒自然的敬畏和对文化遗产的珍视。Trisara能让您通过切实的体会，邂逅您追寻的梦想。','6800','普吉岛,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img17.jpg','泰国 苏梅岛','苏梅岛悦榕庄',"Banyan Tree Samui",'99/9 Moo 4, Lamai Beach, Maret, Ko Samui 84310, Thailand','Remko Kroesen','img/Villa/Villa_manager17.jpg','苏梅岛悦榕庄向您表示最诚挚的问候，在此您将彻底放松身心，重拾活力，享受终极热带度假之旅。 度假村地处苏梅岛东南海岸一座静僻山丘海湾之中，在层叠阶地的环抱之下，您可俯瞰风景如画的拉迈湾。','5235','苏梅岛,亲子时光,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img18.jpg','印度尼西亚 巴厘岛','努沙杜瓦拉古娜豪华精选度假酒店','The Laguna, A Luxury Collection Resort & Spa, Nusa Dua, Bali','Kawasan Pariwisata Nusa Dua Lot N2, Nusa Dua, Bali 80361','别墅经理','img/Villa/Villa_manager18.jpg','努沙杜瓦拉古娜豪华精选度假酒店位于努沙杜天然质朴的白色沙滩之上，四周环绕着5000 平米的适泳礁湖，拥有设施先进的全新水疗中心及多处餐饮场所，更有24小时的贴心管家服务为您带来无与伦比的住宿体验。','1100','巴厘岛,亲子时光,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img19.jpg','印度尼西亚 巴厘岛','努沙杜瓦威斯汀度假酒店','The Westin Resort Nusa Dua, Bali','Kawasan Pariwisata Nusa Dua BTDC Lot N-3 Benoa Nusa Dua, Badung Regency, Bali 80363','别墅经理','img/Villa/Villa_manager19.jpg','巴厘岛努沙杜瓦威斯汀度假酒店拥有完美的设施配置以及最贴心的服务，在这里，我们将以巴厘岛特有的热情待客之道让您满意而归！','650','巴厘岛,亲子时光,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img20.jpg','印度尼西亚 巴厘岛','塞米亚克 W 水疗度假酒店','W Retreat & SPA Bali- Seminyak','Jl. Petitenget, Seminyak, Kerobokan, Seminyak, Bali 80361, Indonesia','别墅经理','img/Villa/Villa_manager20.jpg','塞米亚克W水疗度假酒店内风景如画的热带WET®泳池为您打造了天堂般的美景。在这里，除了优质的服务外，您可前往FIT健身馆健身锻炼或在AWAY®水疗中心放松身心；在我们世界一流的餐厅享受豪华用餐体验；还可在我们的酒廊交朋结友。','2280','巴厘岛,亲子时光,蜜月度假,婚礼婚纱,美食购物');

INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img21.jpg','泰国 普吉岛','奥特瑞格拉古娜别墅度假酒店','Outrigger Laguna Phuket Resort & Villas','Laguna Village 142/3 Moo 6 T.Cherngtalay A.Talang, Phuket 83110，Thailand','','img/Villa/Villa_manager21.jpg','酒店环绕在一片粼粼的泻湖之间，位于湖中心，却不失隐秘。来到这里，“安达曼的珍珠”触手可及；舒适的环境、体贴宜人的服务和无烦无恼的精神，再加上宁静隐秘的气氛，让这里成为了您爱的度假之地。','1395','普吉岛,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img22.jpg','泰国 苏梅岛','康莱德度假酒店','Conrad Koh Samui Resort and Spa','49/8-9 Moo 4, Hillcrest Road, Amphur Koh Samui, Sur, 84140,Thailand','','img/Villa/Villa_manager22.jpg','到苏梅岛，不选择康莱德，基本上你看到的海、享受到的沙滩、体验过的岛上服务基本减损一半以上，绝不夸张啦！','4855','苏梅岛,亲子时光,蜜月度假,婚礼婚纱');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img23.jpg','马尔代夫','卓美亚德瓦娜芙希酒店','Jumeirah Dhevanafushi','Jumeirah Dhevanafushi Maldives, Gaafu Alifu Atoll, Upper South Province, Maldives','','img/Villa/Villa_manager23.jpg','卓美亚德瓦纳芙希酒店的“隐居胜地”辉煌壮观，专为那些最挑剔游客带来真正独一无二的与世隔绝的奢华体验。','8190','马尔代夫,蜜月度假,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img24.jpg','泰国 普吉岛','纳卡岛豪华精选度假酒店','The Naka Island, A Luxury Collection Resort & Spa','32 Moo 5, Tambon Paklok, Amphur Thalang, Naka Yai Island，Thailand','','img/Villa/Villa_manager24.jpg','无论是在纳卡Spa中心重焕活力，还是在热带海滩漫步徜徉，或是在迷人的泳池畅游戏水，您在纳卡岛豪华精选度假酒店的每一时刻都将令人难忘！','3400','普吉岛,亲子时光,蜜月度假');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img25.jpg','印度尼西亚 巴厘岛','乌鲁瓦图阿里拉别墅酒店','Alila Villas Uluwatu','Jl. Belimbing Sari, Br, Tambiyak Desa Pecatu, 80364， Indonesia','','img/Villa/Villa_manager25.jpg','没有大牌连锁酒店常有的怠慢与疏离，乌鲁瓦图阿里拉别墅酒店“亲民奢华”，始终如一的体贴服务，必将给您留下难忘的度假回忆。','3780','巴厘岛,蜜月度假,婚礼婚纱,美食购物');

INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img26.jpg','印度尼西亚 巴厘岛','总督别墅度假村','Viceroy Bali','Viceroy Bali,Jln. Lanyahan, Br. Nagi, Ubud, Bali 80571,Indonesia.','','img/Villa/Villa_manager26.jpg','作为“世界小型豪华酒店”的成员，我们拥有25座豪华别墅。来此度假，您将欣赏到独特的风景，体验到异国风情和高雅的生活情趣。良好的私密性，以及高档的服务曾是皇家贵族所青睐的度假胜地。','3170','巴厘岛,蜜月度假,婚礼婚纱');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img27.jpg','印度尼西亚 巴厘岛','乌布阿里拉酒店','Alila Ubud','Alila Ubud,Desa Melinggih Kelod, Payangan, Gianyar, Bali, 80572,Indonesia','','img/Villa/Villa_manager27.jpg','“阿里拉” 源自梵语，意为 “惊喜”，十分贴合酒店独一无二的个性和宾客休憩于此获得的体验。独特、尊贵的服务是阿里拉的特色，而尊重自然、不做作，也是阿里拉这个酒店品牌吸引人的不二法门。','2270','巴厘岛,蜜月度假,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img28.jpg','印度尼西亚 巴厘岛','山妍四季度假酒店','Four Seasons Resort Bali at Sayan','Four Seasons Resort Bali at Sayan, Sayan, Ubud, Bali 80571, Indonesia','','img/Villa/Villa_manager28.jpg','乌布四季度假酒店里的大小别墅均顺山势建在有着繁茂的绿色稻田的山坡上，四周被著名的阿漾河环抱，所有别墅都可以直接通到河边，美景唾手可得。村中无论从房间、餐厅、Spa馆、健身房里，还是主楼顶层的莲花池里都可以直接360度饱览河谷的美景。','3200','巴厘岛,蜜月度假,婚礼婚纱,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img29.jpg','印度尼西亚 巴厘岛','金巴兰四季度假酒店','Four Seasons Resort Bali at Jimbaran Bay','Four Seasons Resort Bali at Jimbaran Bay ，Jimbaran  Kuta Selatan  Bali 80361, Indonesia','','img/Villa/Villa_manager29.jpg','色彩鲜艳的木门、椅垫，浪漫纱帘层层垂地的睡床，大片木格玻璃窗畔的浴缸，窗畔的浴缸，甚至是窗外缤纷竞艳的五色花朵，所呈现出的都是愉悦甜美的巴厘岛风情，一切顶级奢华在这里都用更轻松的方式绽放着魅力。','4300','巴厘岛,亲子时光,蜜月度假,婚礼婚纱');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img30.jpg','印度尼西亚 巴厘岛','宝格丽度假酒店','Bulgari Hotels & Resort Bali','Bulgari Resort & Residences，Jalan Goa Lempeh, Banjar Dinas Kangin - Uluwatu, Bali 80364 ， Indonesia','','img/Villa/Villa_manager30.jpg','她，永远是那么高雅的躺在软绵绵的绒布盒里，但却让人无法一手掌握，那是宝格丽珠宝席卷全球的魅力。而旗下的宝格丽酒店同样延伸品牌信念，以低调奢华作为蓝图基底，欲盖弥彰的的神秘高贵气息呼之欲出，堪称今年巴厘岛旅游业最热门的话题。','4400','巴厘岛,蜜月度假,美食购物');

INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img31.jpg','印度尼西亚 巴厘岛','金巴兰肉桂酒店','Kayumanis Jimbaran Private Estate & Spa','Kayumanis Jimbaran Private Estate & Spa Jalan Yoga Perkanthi Jimbaran, Bali 80364, Indonesia','','img/Villa/Villa_manager31.jpg','巴厘岛金巴兰肉桂酒店是追寻宁静、私密和低调奢华的首选，专业贴身的24小时管家将保证您每时每刻享受服务。','3390','巴厘岛,蜜月度假');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img32.jpg','印度尼西亚 巴厘岛','努沙杜瓦肉桂酒店','Kayumanis Nusa Dua Private Villa & Spa','Kayumanis Nusa Dua Private Villa & Spa BTDC Area Nusa Dua, P.O. Box 777 Nusa Dua Bali 80363 Indonesia','','img/Villa/Villa_manager32.jpg','努沙杜瓦肉桂酒店细腻到位的服务，蓊郁苍翠的热带花园围绕着您的别墅，树枝层叠交错，隔绝处一个完全的隐秘空间，绝对是您的蜜月首选。在远离喧嚣的海岛上，您尽可享受专属于两个人的浪漫。','2988','巴厘岛,蜜月度假,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img33.jpg','印度尼西亚 巴厘岛','乌布肉桂酒店','Kayumanis Ubud Private Villa & Spa','Kayumanis Ubud Private Villa & Spa Sayan Village, P.O. Box 777 Ubud, Bali 80571, Indonesia','','img/Villa/Villa_manager33.jpg','乌布肉桂酒店别墅的布置和装饰典雅，并有许多不同的风格，您可以选择巴厘岛风格、爪哇风格、原始风格及现代风格，每间别墅的室内装潢风格都融合了当地特色、现代风范和传统美学，营造出完美的悠闲气氛，让您忘记城市森林的所有烦恼。','2680','巴厘岛,蜜月度假,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img34.jpg','毛里求斯','马拉迪瓦别墅度假酒店','Maradiva Villas Resort and Spa','Maradiva Villas Resort & Spa, Flic en Flac Road, Flic en Flac, Black River, Mauritius','','img/Villa/Villa_manager34.jpg','无论您是因为出差或度假而造访毛里求斯，马拉迪瓦别墅度假酒店及Spa都会是您住宿的绝佳选择。在这里您将得到一份贴心服务、收获一份美丽心情。','3320','毛里求斯,亲子时光,蜜月度假');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img35.jpg','印度尼西亚 巴厘岛','瑞吉度假酒店','The St. Regis Bali Resort','Kawasan Pariwisata Nusa Dua Lot S6,Nusa Dua Bali 80363','别墅经理','img/Villa/Villa_manager35.jpg','瑞吉度假酒店拥有壮阔迷人的全海景、上百间被海水礁湖和葱郁花园所环绕的精美套房和别墅、个性化的管家服务、屡获殊荣的餐饮场所、Remède水疗中心及儿童学习中心，必将为您的度假生活带来无与伦比的奢华享受。','2890','巴厘岛,亲子时光,蜜月度假,美食购物');

INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img36.jpg','马尔代夫 兰达吉拉瓦鲁岛','大四季度假酒店','Four Seasons Resort Maldives at Landaa Giraavaru','Baa Atoll, Republic of Maldives, Landaa Giraavaru island, 20215 Landaa Giraavaru','','img/Villa/Villa_manager36.jpg','四季酒店50余年来始终秉承单一品牌与对奢华酒店的专注，吸引并留任了许多同样追求卓越与品质的员工，建立起世界上最受瞩目的服务文化之一。','23940','马尔代夫,蜜月度假,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img37.jpg','印度尼西亚 巴厘岛','乌干沙悦榕庄酒店','Banyan Tree Ungasan','Jl. Melasti, Banjar Kelod Ungasan, Bali 80364 Indonesia','Mr. Alfonso Romero','img/Villa/Villa_manager37.jpg','乌干沙悦榕庄酒店是巴厘岛上豪华酒店的代表作，令人惊艳。酒店位于靠近乌鲁瓦图的悬崖峭壁之上，为巴厘岛这个名闻遐迩的海岛带来了绝佳的岩顶居住体验！','2950','巴厘岛,蜜月度假');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img38.jpg','泰国 普吉岛','Iniala英尼亚拉海滨别墅','Iniala Beach House','40/14 Moo 6 Kok Kloi, Takuathung, Phang-Nga, 82140 Natai 海滩, 泰国','','img/Villa/Villa_manager38.jpg','匠心独运的设计和运营理念，汇聚创新与灵感的世外桃源。传统的泰式建筑与当代顶级设计珠联璧合，恰到好处彰显别致格调。我们真诚邀请您前来Iniala感受完美度假体验。风格迥异的每一处空间，倾注了全球十位顶级建筑大师的设计精萃。品位出众的室内设计兼顾了舒适实用性，耳目一新的创意风格满足了高端游客的独特鉴赏力。','14050','普吉岛,亲子时光,蜜月度假');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img39.jpg','毛里求斯','安娜希塔四季度假酒店','Four Seasons Resort Mauritius at Anahita','Beau Champ, Coastal Road, 0000 托舵道斯, 毛里求斯','','img/Villa/Villa_manager39.jpg','印度洋旁的非洲东海岸是阿娜希塔世界级保护区的一部分。毛里求斯四季度假酒店，还有绵延葱绿的高尔夫果岭，依偎在湛蓝的珊瑚礁湖旁。乘着清爽的海风，您将迎来真正的平静。','3528','毛里求斯,亲子时光,蜜月度假,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img40.jpg','马尔代夫','白马庄园','Cheval Blanc Randheli','Randheli Noonu Atoll, 11111 诺鲁, 马尔代夫','','img/Villa/Villa_manager40.png','设计师精心巧妙地设计融入自然的景致，结合当地传统文化、当代美学以及酒店周围翠绿茂盛的热带植物，一派轻松的悠闲环境，增添了些许度假的轻松感与浪漫的气息。更令人期待的是酒店引进豪华游艇使用的智能型家具系统，透过 iPad 操控，让您轻松体验豪华的生活乐趣！','16400','马尔代夫,蜜月度假,美食购物');

INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img41.jpg','马尔代夫','JA玛娜法鲁度假酒店','JA Manafaru','Malvaa Goalhi，Manafaru，马尔代夫','Walter Hall','img/Villa/Villa_manager41.jpg','这个度假村让您在马尔代夫享受到宁静舒适的服务。既充满了现代气息，又弥漫着浪漫的氛围，是蜜月旅行或家庭度假的绝佳选择。','7950','马尔代夫,蜜月度假,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img42.jpg','马尔代夫','W水疗度假酒店','W Retreat & Spa - Maldives','Fesdu IslandNorth Ari Atoll','','img/Villa/Villa_manager42.jpg','马尔代夫 W 水疗度假酒店除了拥有优越的地理位置及美丽的景观之外，您还能享受到我们热情人员的卓越服务。来吧，从这里开启您的愉快旅行！在创意无限的 AWAY® 水疗中心放松身心，在 Down Under 探索海浪之下的缤纷世界……','6300','马尔代夫,亲子时光,蜜月度假,美食购物');
INSERT INTO six_villa_villa VALUES(null,'img/Villa/Villa_img43.jpg','泰国 普吉岛','悦榕庄双泳池别墅','Double Pool Villas by Banyan Tree','33, 33/27 Moo 4, Srisoonthorn Road Cherngtalay, Amphur Talang Phuket 83110, Thailand','','img/Villa/Villa_manager43.jpg','悦榕庄是拉古纳海滩一众奢华酒店的最高代表，有个巨大的无边游泳池，俯瞰着环礁湖和高尔夫球场，餐厅有270度无敌海景。别墅有专门的管家进行服务，开门就是迷人海景，带私人泳池、按摩浴缸和小厨房，还可以烧烤哦。','5980','普吉岛,亲子时光,蜜月度假,美食购物');
#商务考察的优质资源的数据表插入
INSERT INTO six_business_resources VALUES(null,'创投孵化','img/Business/bs-resource-list1.jpg');
INSERT INTO six_business_resources VALUES(null,'创新企业','img/Business/bs-resource-list2.jpg');
INSERT INTO six_business_resources VALUES(null,'金融科技','img/Business/bs-resource-list3.jpg');
INSERT INTO six_business_resources VALUES(null,'工业4.0','img/Business/bs-resource-list4.jpg');
INSERT INTO six_business_resources VALUES(null,'家族传承','img/Business/bs-resource-list5.jpg');
INSERT INTO six_business_resources VALUES(null,'时尚艺术','img/Business/bs-resource-list6.jpg');
INSERT INTO six_business_resources VALUES(null,'电影节','img/Business/bs-resource-list7.jpg');
INSERT INTO six_business_resources VALUES(null,'民宿考察','img/Business/bs-resource-list8.jpg');
#商务考察的考察案例的数据表插入
INSERT INTO six_business_case VALUES(null,'img/Business/bs-case1.jpg','2018巴菲特股东大会','美国 · 奥马哈');
INSERT INTO six_business_case VALUES(null,'img/Business/bs-case2.jpg','以色列创新之旅','特拉维夫 耶路撒冷 海法');
INSERT INTO six_business_case VALUES(null,'img/Business/bs-case3.jpg','美国置业与资产配置高端商旅','洛杉矶 旧金山');
INSERT INTO six_business_case VALUES(null,'img/Business/bs-case4.jpg','戛纳电影节','法国 · 戛纳');
INSERT INTO six_business_case VALUES(null,'img/Business/bs-case5.jpg','南法寻香之旅-在普罗旺斯寻找生活的原香','法国 普罗旺斯');
INSERT INTO six_business_case VALUES(null,'img/Business/bs-case6.jpg','智璞文华江南行','无锡-苏州-乌镇-莫干山-杭州');
#商务考察的合作企业的数据表插入
INSERT INTO six_business_enterprise VALUES(null,'img/Business/bs-enterprise1.jpg');
INSERT INTO six_business_enterprise VALUES(null,'img/Business/bs-enterprise2.jpg');
INSERT INTO six_business_enterprise VALUES(null,'img/Business/bs-enterprise3.jpg');
INSERT INTO six_business_enterprise VALUES(null,'img/Business/bs-enterprise4.jpg');
INSERT INTO six_business_enterprise VALUES(null,'img/Business/bs-enterprise5.jpg');
INSERT INTO six_business_enterprise VALUES(null,'img/Business/bs-enterprise6.jpg');
INSERT INTO six_business_enterprise VALUES(null,'img/Business/bs-enterprise7.jpg');
INSERT INTO six_business_enterprise VALUES(null,'img/Business/bs-enterprise8.jpg');
INSERT INTO six_business_enterprise VALUES(null,'img/Business/bs-enterprise9.jpg');
INSERT INTO six_business_enterprise VALUES(null,'img/Business/bs-enterprise10.jpg');
INSERT INTO six_business_enterprise VALUES(null,'img/Business/bs-enterprise11.jpg');
INSERT INTO six_business_enterprise VALUES(null,'img/Business/bs-enterprise12.jpg');