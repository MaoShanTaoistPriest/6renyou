// app.js 服务器端项目
// 1.下载第三方模块
// 2.将第三方的模块引入到当前程序中
const express = require('express');
const session = require('express-session');
const cors = require('cors');
//引入body-parser中间件
const bodyParser = require('body-parser');
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
//使用body-parser中间件
server.use(bodyParser.urlencoded({
  extented: false
}));
// 配置静态目录
server.use(express.static("public"));

// login模块的用户的账号密码的验证
server.post("/userLogin", (req, res) => {
  var uname = req.body.uname;
  var upwd = req.body.upwd;
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
server.post("/userReg", (req, res) => {
  //获取get请求的数据
  var uname = req.body.uname;
  var upwd = req.body.upwd;
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

// 客户评价的数据的获取,通过id降序的方式，返回值为数组长度length，用于分页查询组件的总体长度，返回数据为id倒序
server.get("/userComment", (req, res) => {
  var sql1 = `SELECT id FROM six_user_comment`;
  pool.query(sql1, (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({
        code: "-1",
        msg: "查询有误"
      });
    } else {
      var pno = req.query.pno;
      var pcount = req.query.pcount;
      if (!pno) {
        pno = 1;
      };
      if (!pcount) {
        pcount = 6;
      };
      var pnum = result.length;
      var start = pnum - (pno - 1) * pcount;
      var sql2 = `SELECT id,img,title,pName,pubDate,feeling FROM six_user_comment WHERE id <= ${start} ORDER BY id DESC limit ${pcount}`;
      pool.query(sql2, (err, result) => {
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
            length: pnum,
            data: result
          });
        }
      })
    }
  })
});

// 度假&别墅模块的轮播图的数据的获取
server.get("/villaBanner", (req, res) => {
  var sql = "SELECT id,img,title FROM six_villa_banner";
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

// 度假&别墅模块的甄选主题的数据的获取
server.get("/villaTheme", (req, res) => {
  var sql = "SELECT id,img,title FROM six_villa_theme";
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

// 度假&别墅模块的具体内容的数据的获取
server.get("/villaVilla", (req, res) => {
  var sql = "SELECT id,bigImg,title,subTitle,Vname,place,manager,managerImg,introduce,price FROM six_villa_villa";
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

// 商务考察模块的优质资源的数据的获取
server.get("/businessResources", (req, res) => {
  var sql = "SELECT id,title,img FROM six_business_resources";
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

// 商务考察模块的考察案例的数据的获取
server.get("/businessCase", (req, res) => {
  var sql = "SELECT id,img,title,place FROM six_business_case";
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

// 商务考察模块的合作企业的数据的获取
server.get("/businessEnterprise", (req, res) => {
  var sql = "SELECT id,img FROM six_business_enterprise";
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

// 