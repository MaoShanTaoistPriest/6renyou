SET NAMES UTF8;
DROP DATABASE IF EXISTS six;
CREATE DATABASE six CHARSET=UTF8;
USE six;

CREATE TABLE six_header_destination(
  id INT PRIMARY KEY AUTO_INCREMENT,
  area VARCHAR(50),
  placrName VARCHAR(50)
);

CREATE TABLE six_index_banner(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(100)
);

CREATE TABLE six_index_hot(
  id INT PRIMARY KEY AUTO_INCREMENT,
  placeName VARCHAR(50),
  img VARCHAR(100)
);

INSERT INTO six_index_banner VALUES(null,'img/index/index_banner1.jpg');
INSERT INTO six_index_banner VALUES(null,'img/index/index_banner2.jpg');
INSERT INTO six_index_banner VALUES(null,'img/index/index_banner3.jpg');
INSERT INTO six_index_banner VALUES(null,'img/index/index_banner4.jpg');

INSERT INTO six_index_hot VALUES(null,'迪拜','img/index/hot_dubai.jpg');
INSERT INTO six_index_hot VALUES(null,'马尔代夫','img/index/hot_maldives.jpg');
INSERT INTO six_index_hot VALUES(null,'日本','img/index/hot_japan.jpg');
INSERT INTO six_index_hot VALUES(null,'新西兰','img/index/hot_zealand.jpg');
INSERT INTO six_index_hot VALUES(null,'西班牙','img/index/hot_spain.jpg');
INSERT INTO six_index_hot VALUES(null,'泰国','img/index/hot_thailand.jpg');
INSERT INTO six_index_hot VALUES(null,'巴厘岛','img/index/hot_bali.jpg');
INSERT INTO six_index_hot VALUES(null,'阿根廷','img/index/hot_argentina.jpg');