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
  origin: ["http://127.0.0.1:8088", "http://localhost:8088", "http://127.0.0.1:8089", "http://localhost:8089"],
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

// login模块的用户的账号密码的验证
server.get("/userLogin", (req, res) => {
  var uname = req.query.uname;
  var upwd = req.query.upwd;
  var sql = "SELECT id FROM six_user_login WHERE uname = ? AND upwd = md5(?)";
  pool.query(sql, [uname, upwd], (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "用户名或密码有误"
      });
    } else {
      // 获取当前登录用户的id
      var uid = result[0].id;
      req.session.uid = uid;
      res.send({
        code: "1",
        msg: "登陆成功"
      });
    }
  })
});

// reg模块的用户的账号密码的添加
server.get("/userReg", (req, res) => {
  //获取get请求的数据
  var uname = req.query.uname;
  var upwd = req.query.upwd;
  //将数据插入到数据库
  var sql1 = "SELECT id FROM six_user_login WHERE uname = ?";
  pool.query(sql1, [uname], (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      var sql2 = `INSERT INTO six_user_login VALUES(null,'${uname}',md5('${upwd}'))`;
      pool.query(sql2, function (err, result) {
        if (err) throw err;
        // console.log(result);
        //如果affectedRows大于0，说明添加成功
        if (result.affectedRows > 0) {
          res.send({
            code: "1",
            msg: '员工添加成功'
          });
        } else {
          res.send({
            code: "-1",
            msg: '员工添加失败'
          });
        }
      });
    } else {
      res.send({
        code: "-1",
        msg: '员工添加失败'
      });
    }
  })
});

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