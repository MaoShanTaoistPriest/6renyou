// app.js 服务器端项目
// 1.下载第三方模块
// 2.将第三方的模块引入到当前程序中
const express = require('express');
const session = require('express-session');
const cors = require('cors');
const mysql = require('mysql');
// 3.创建数据库连接池
var pool = mysql.createPool({
  host: '127.0.0.1',
  port: '3306',
  user: 'root',
  password: '',
  database: 'six', //连接后要使用的数据库
  connectionLimit: 20 //设置连接池的大小
});
// 4.创建web服务器，监听8088端口
var server = express();
server.listen(5050);
// 5.跨域处理
server.use(cors({
  origin: ["http://127.0.0.1:8088", "http://localhost:8088"],
  credentials: true
}))
// 配置session，一定要在所有的请求之前
server.use(session({
  //安全的字符串
  secret: "128位字符串",
  //每次请求是否更新原有数据 
  resave: true,
  //保存初始化数值  
  saveUninitialized: true
}))
// 配置静态目录
server.use(express.static("public"));

// index模块的轮播图的图片数据的获取
server.get("/indexBanner", (req, res) => {
  var sql = "SELECT id,img FROM six_index_banner";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "查询有误"
      });
    } else {
      res.send({
        code: "1",
        msg: "查询成功",
        data: result
      });
    }
  })
});

// index模块的热门旅游地点的数据的获取
server.get("/indexHot", (req, res) => {
  var sql = "SELECT id,placeName,img FROM six_index_hot";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "查询有误"
      });
    } else {
      res.send({
        code: "1",
        msg: "查询成功",
        data: result
      });
    }
  })
});