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
  connectionLimit: 15 //设置连接池的大小
});
// 4.创建web服务器，监听5050端口
var server = express();
server.listen(5050);
// 5.跨域处理
server.use(cors({
<<<<<<< HEAD
  origin: ["http://127.0.0.1:8088", "http://localhost:8088","http://127.0.0.1:8089", "http://localhost:8089"],
=======
  origin: ["http://127.0.0.1:8088", "http://localhost:8088", "http://127.0.0.1:8089", "http://localhost:8089"],
>>>>>>> 86f5cb9aeb5e2682da7c91cc60bfa522d4cf14c7
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

// header模块的目的地的数据的获取
server.get("/headerDestination", (req, res) => {
  var sql = "SELECT id,area,placeName FROM six_header_destination";
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

// footer模块的热门推荐的数据的获取
server.get("/footerRecommended", (req, res) => {
  var sql = "SELECT id,placeName FROM six_footer_recommended";
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

// index模块的轮播图的图片数据的获取
server.get("/indexConcept", (req, res) => {
  var sql = "SELECT id,normal,hover FROM six_index_concept";
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

// index模块的热门旅游地点的地名数据的获取
server.get("/indexHotPlaceName", (req, res) => {
  var sql = "SELECT id,area,placeName FROM six_index_hotPlaceName";
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

// index模块的热门旅游地点的图片数据的获取
server.get("/indexHotPlaceImg", (req, res) => {
  var sql = "SELECT id,placeName,img FROM six_index_hotPlaceImg";
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


// index模块的旅行顾问的个人数据的获取
server.get("/indexConsultant", (req, res) => {
  var sql = "SELECT id,img,cName,position,area,introduce FROM six_index_consultant";
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