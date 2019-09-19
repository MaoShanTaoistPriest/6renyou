<template>
  <div>
    <!-- <myheader></myheader> -->
    <!-- banner -->
    <div class="comment-banner">
      <div class="comment-banner-inner">
        <div class="comment-counts">
          <span>113035</span>
          个家庭
        </div>
      </div>
    </div>
    <!-- banner end -->
    <!-- content -->
    <div class="comment-wrp">
      <!-- 客户评价头部字体 -->
      <div class="comment-hd">
        <i class="line-l"></i>
        <span>客户评价</span>
        <i class="line-r"></i>
      </div>
      <!-- 客户评价列表 -->
      <div class="comment-sty1-box">
        <ul class="comment-sty1-list clearfix">
          <li v-for="(item,i) of list" :key="i" class="comment-sty1-item">
            <div class="comment-img">
              <!-- 服务器图片路径拼接获取正确图片路径 -->
              <!-- <img :src="`${imgurl}/${item.img}`" /> -->
              <img :src="`${imgurl}/${item.img}`" style="display: inline;">
            </div>
            <div class="comment-tit">
              <h2 v-text="item.title"></h2>
              <p><span  v-text="item.pName"></span>  |   <span v-text="item.pubDate"></span></p>
            </div>
            <div class="comment-txt">
              <i class="i-cmt-quote"></i>
              <p v-text="item.feeling"></p>
            </div>
          </li>
        </ul>
      </div>
      <!-- 分页查询 -->
      <div class="pagediv">
        <el-pagination
          background
          @current-change="handleCurrentChange"
          :current-page.sync="currentPage"
          :page-size="6"
          layout="total, prev, pager, next"
          :total="clength">
        </el-pagination>
      </div>
      
    </div>
    <my-footer></my-footer>
  </div>
</template>
<script>
export default {
  data() {
    return {
      list: [], //获取的用户评价数组
      pno: 1, //页码数
      currentPage: 1, //当前页默认第一页
      clength: 0, //用户评价总数先设置一个默认值
      imgurl: "" // data里创建变量保存服务器图片基础路径
    };
  },
  created() {
    // data里创建变量保存服务器图片基础路径
    this.imgurl = this.$imgUrl;
    this.load();
    this.getLength();
  },
  methods: {
    handleCurrentChange(val) {
      //分页查询
      // console.log(`当前页: ${val}`);
      this.pno = val;
      var url = "userComment";
      var obj = { pno: val };
      this.axios.get(url, { params: obj }).then(res => {
        // console.log(res)
        this.list = res.data.data;
        this.load();
      });
    },
    load() {
      var url = "userComment";
      var obj = { pno: this.pno };
      this.axios.get(url, { params: obj }).then(res => {
        this.list = res.data.data;
        console.log(this.list);
      });
    },
    getLength() {
      // 获取用户评价总数
      var url = "userComment";
      this.axios.get(url).then(res => {
        this.clength = res.data.length;
        // console.log(this.clength);
      });
    }
  }
};
</script>
<style scoped>
ul,li{
  list-style: none;
  margin:0;
  padding:0;
}
/* banner */
.comment-banner {
  width: 100%;
  height: 530px;
  background: url("../../public/img/UserComment/user_comment_banner.jpg");
}
.comment-banner .comment-banner-inner {
  width: 1180px;
  margin: 0 auto;
  height: 530px;
  position: relative;
}
.comment-banner .comment-banner-inner .comment-counts {
  font-size: 36px;
  color: #454545;
  text-align: center;
  font-weight: 700;
  padding-top: 205px;
}
.comment-banner .comment-banner-inner .comment-counts span {
  font-size: 80px;
  font-family: "Microsoft Yahei";
}
/* content */
.comment-wrp {
  width: 1180px;
  margin: 0 auto;
}
/* 头部客户评价字体 */
.comment-wrp .comment-hd {
  text-align: center;
  padding: 40px 0;
}
.comment-wrp .comment-hd .line-l,
.comment-wrp .comment-hd .line-r {
  display: inline-block;
  height: 5px;
  width: 110px;
  border-top: 1px solid #e0e0e0;
}
.comment-wrp .comment-hd span {
  position: relative;
  font-size: 24px;
  color: #454545;
  display: inline-block;
  min-width: 180px;
  padding: 0 10px;
  font-family: "Microsoft Yahei";
}
/* 客户评价列表 */
.comment-wrp .comment-sty1-box {
  width: 1180px;
  overflow: hidden;
  font-family: "Microsoft Yahei";
}
.comment-wrp .comment-sty1-box .comment-sty1-list {
  display: block;
  width: 1220px;
  overflow: visible;
}
.comment-wrp .comment-sty1-box .comment-sty1-list .comment-sty1-item {
  display: block;
  float: left;
  width: 570px;
  margin-right: 40px;
  margin-bottom: 40px;
}
/* 图片 */
.comment-wrp
  .comment-sty1-box
  .comment-sty1-list
  .comment-sty1-item
  .comment-img {
  width: 570px;
  height: 380px;
  overflow: hidden;
}
/* 图片 */
.comment-wrp
  .comment-sty1-box
  .comment-sty1-list
  .comment-sty1-item
  .comment-img
  img {
  border: 0 none;
  vertical-align: middle;
}
/* 标题 */
.comment-wrp
  .comment-sty1-box
  .comment-sty1-list
  .comment-sty1-item
  .comment-tit {
  padding: 25px 0 10px;
  text-align: center;
  color: #333;
}
.comment-wrp
  .comment-sty1-box
  .comment-sty1-list
  .comment-sty1-item
  .comment-tit
  h2 {
  font-size: 18px;
  color: #3eb166;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  margin: 0;
  padding: 0;
  border: 0;
}
.comment-wrp
  .comment-sty1-box
  .comment-sty1-list
  .comment-sty1-item
  .comment-tit
  p {
  font-size: 12px;
  color: #333;
  padding-top: 10px;
  line-height: 18px;
}
/* 副标题 */
.comment-wrp
  .comment-sty1-box
  .comment-sty1-list
  .comment-sty1-item
  .comment-txt {
  border-top: 1px solid #ededed;
  padding: 20px 10px 0 60px;
  position: relative;
  height: 96px;
}
.comment-wrp
  .comment-sty1-box
  .comment-sty1-list
  .comment-sty1-item
  .comment-txt
  .i-cmt-quote {
  display: inline-block;
  width: 36px;
  height: 30px;
  position: absolute;
  left: 10px;
  top: 20px;
  background: url("../../public/img/UserComment/cmmt-quote.png") no-repeat;
}
.comment-wrp
  .comment-sty1-box
  .comment-sty1-list
  .comment-sty1-item
  .comment-txt
  p {
  font-size: 15px;
  color: #666;
  line-height: 24px;
}
.clearfix:after {
  display: block;
  clear: both;
  height: 0;
  overflow: hidden;
  visibility: hidden;
  content: ".";
}
/* 分页按钮 */
.comment-wrp div.pagediv{
  text-align: center;
}
</style>