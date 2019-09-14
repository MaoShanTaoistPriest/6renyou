SET NAMES UTF8;
DROP DATABASE IF EXISTS six;
CREATE DATABASE six CHARSET=UTF8;
USE six;
#登录/注册的用户的数据表搭建
CREATE TABLE six_user_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(32)
);
#功能二:添加二条测试数据 
INSERT INTO six_user_login VALUES(null,'tom',md5('123'));
INSERT INTO six_user_login VALUES(null,'jerry',md5('123'));
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