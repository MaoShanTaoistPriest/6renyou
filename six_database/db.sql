SET NAMES UTF8;
DROP DATABASE IF EXISTS six;
CREATE DATABASE six CHARSET=UTF8;
USE six;
<<<<<<< HEAD

=======
#头部的目的地的数据库搭建
CREATE TABLE six_header_destination(
  id INT PRIMARY KEY AUTO_INCREMENT,
  area VARCHAR(50),
  placeName VARCHAR(50)
);
#主页的轮播图的数据库搭建
>>>>>>> 35f582328c62db2bef31458333e7103dfb8eead7
CREATE TABLE six_index_banner(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(100)
);
<<<<<<< HEAD

=======
#主页的热门推荐的数据库搭建
>>>>>>> 35f582328c62db2bef31458333e7103dfb8eead7
CREATE TABLE six_index_hot(
  id INT PRIMARY KEY AUTO_INCREMENT,
  placeName VARCHAR(50),
  img VARCHAR(100)
);
<<<<<<< HEAD

=======
#头部的目的地的数据库插入
INSERT INTO six_header_destination VALUES(null,'美洲','美国');
INSERT INTO six_header_destination VALUES(null,'美洲','加拿大');
INSERT INTO six_header_destination VALUES(null,'美洲','阿根廷');
INSERT INTO six_header_destination VALUES(null,'美洲','巴西');
INSERT INTO six_header_destination VALUES(null,'美洲','智利');
INSERT INTO six_header_destination VALUES(null,'美洲','秘鲁');
INSERT INTO six_header_destination VALUES(null,'美洲','古巴');
INSERT INTO six_header_destination VALUES(null,'美洲','墨西哥');
INSERT INTO six_header_destination VALUES(null,'美洲','南极');
INSERT INTO six_header_destination VALUES(null,'美洲','玻利维亚');
INSERT INTO six_header_destination VALUES(null,'美洲','厄尔瓜多');
INSERT INTO six_header_destination VALUES(null,'中东 非洲','阿布扎比');
INSERT INTO six_header_destination VALUES(null,'中东 非洲','迪拜');
INSERT INTO six_header_destination VALUES(null,'中东 非洲','以色列');
INSERT INTO six_header_destination VALUES(null,'中东 非洲','南非');
INSERT INTO six_header_destination VALUES(null,'中东 非洲','埃及');
INSERT INTO six_header_destination VALUES(null,'中东 非洲','摩洛哥');
INSERT INTO six_header_destination VALUES(null,'中东 非洲','肯尼亚');
INSERT INTO six_header_destination VALUES(null,'中东 非洲','纳米比亚');
INSERT INTO six_header_destination VALUES(null,'中东 非洲','坦桑尼亚');
INSERT INTO six_header_destination VALUES(null,'欧洲','英国');
INSERT INTO six_header_destination VALUES(null,'欧洲','法国');
INSERT INTO six_header_destination VALUES(null,'欧洲','瑞士');
INSERT INTO six_header_destination VALUES(null,'欧洲','荷兰');
INSERT INTO six_header_destination VALUES(null,'欧洲','德国');
INSERT INTO six_header_destination VALUES(null,'欧洲','希腊');
INSERT INTO six_header_destination VALUES(null,'欧洲','意大利');
INSERT INTO six_header_destination VALUES(null,'欧洲','西班牙');
INSERT INTO six_header_destination VALUES(null,'欧洲','葡萄牙');
INSERT INTO six_header_destination VALUES(null,'欧洲','捷克');
INSERT INTO six_header_destination VALUES(null,'欧洲','奥地利');
INSERT INTO six_header_destination VALUES(null,'欧洲','匈牙利');
INSERT INTO six_header_destination VALUES(null,'欧洲','挪威');
INSERT INTO six_header_destination VALUES(null,'欧洲','丹麦');
INSERT INTO six_header_destination VALUES(null,'欧洲','芬兰');
INSERT INTO six_header_destination VALUES(null,'欧洲','冰岛');
INSERT INTO six_header_destination VALUES(null,'欧洲','瑞典');
INSERT INTO six_header_destination VALUES(null,'欧洲','俄罗斯');
INSERT INTO six_header_destination VALUES(null,'亚洲','泰国');
INSERT INTO six_header_destination VALUES(null,'亚洲','新加坡');
INSERT INTO six_header_destination VALUES(null,'亚洲','越南');
INSERT INTO six_header_destination VALUES(null,'亚洲','日本');
INSERT INTO six_header_destination VALUES(null,'亚洲','柬埔寨');
INSERT INTO six_header_destination VALUES(null,'亚洲','斯里兰卡');
INSERT INTO six_header_destination VALUES(null,'亚洲','缅甸');
INSERT INTO six_header_destination VALUES(null,'亚洲','伊朗');
INSERT INTO six_header_destination VALUES(null,'亚洲','印度');
INSERT INTO six_header_destination VALUES(null,'亚洲','土耳其');
INSERT INTO six_header_destination VALUES(null,'亚洲','尼泊尔');
INSERT INTO six_header_destination VALUES(null,'亚洲','马来西亚');
INSERT INTO six_header_destination VALUES(null,'亚洲','老挝');
INSERT INTO six_header_destination VALUES(null,'大洋洲','澳大利亚');
INSERT INTO six_header_destination VALUES(null,'大洋洲','新西兰');
INSERT INTO six_header_destination VALUES(null,'海岛','巴厘岛');
INSERT INTO six_header_destination VALUES(null,'海岛','普吉岛');
INSERT INTO six_header_destination VALUES(null,'海岛','苏梅岛');
INSERT INTO six_header_destination VALUES(null,'海岛','马尔代夫');
INSERT INTO six_header_destination VALUES(null,'海岛','斐济');
INSERT INTO six_header_destination VALUES(null,'海岛','毛里求斯');
INSERT INTO six_header_destination VALUES(null,'海岛','塞舌尔');
INSERT INTO six_header_destination VALUES(null,'海岛','塞班岛');
INSERT INTO six_header_destination VALUES(null,'海岛','大溪地');
INSERT INTO six_header_destination VALUES(null,'海岛','关岛');
INSERT INTO six_header_destination VALUES(null,'中国台湾','台湾');
#主页的轮播图的数据库数据插入
>>>>>>> 35f582328c62db2bef31458333e7103dfb8eead7
INSERT INTO six_index_banner VALUES(null,'img/index/index_banner1.jpg');
INSERT INTO six_index_banner VALUES(null,'img/index/index_banner2.jpg');
INSERT INTO six_index_banner VALUES(null,'img/index/index_banner3.jpg');
INSERT INTO six_index_banner VALUES(null,'img/index/index_banner4.jpg');
<<<<<<< HEAD

=======
#主页的热门推荐的数据库插入
>>>>>>> 35f582328c62db2bef31458333e7103dfb8eead7
INSERT INTO six_index_hot VALUES(null,'迪拜','img/index/hot_dubai.jpg');
INSERT INTO six_index_hot VALUES(null,'马尔代夫','img/index/hot_maldives.jpg');
INSERT INTO six_index_hot VALUES(null,'日本','img/index/hot_japan.jpg');
INSERT INTO six_index_hot VALUES(null,'新西兰','img/index/hot_zealand.jpg');
INSERT INTO six_index_hot VALUES(null,'西班牙','img/index/hot_spain.jpg');
INSERT INTO six_index_hot VALUES(null,'泰国','img/index/hot_thailand.jpg');
INSERT INTO six_index_hot VALUES(null,'巴厘岛','img/index/hot_bali.jpg');
INSERT INTO six_index_hot VALUES(null,'阿根廷','img/index/hot_argentina.jpg');