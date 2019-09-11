<template>
<footer>
  <!-- 大家都在看 -->
  <div class="links-wrp">
    <div class="links-box">
      <div class="links-list">
        <dl class="links-item">
          <dt>大家都在看</dt>
          <dd v-for="(item,index) of list" :key="index"><a href="javascript:;">{{item}}</a></dd>
        </dl>
      </div>
    </div>
  </div>
  <!-- 脚部：六人游旅行网 -->
  <div class="footer">
    <div class="footer-inner">
      <div class="footer-box">
        <div class="foot-col1">
          <span class="footer-logo">
          </span>
        </div>
        <div class="foot-col2">
          <ul class="foot-nav">
            <li><a href="javascript:;">关于我们</a></li>
            <li>|</li>
            <li><a href="javascript:;">品牌解读</a></li>
            <li>|</li>
            <li><a href="javascript:;">联系我们</a></li>
            <li>|</li>
            <li><a href="javascript:;">媒体报道</a></li>
            <li>|</li>
            <li><a href="javascript:;">运营资质</a></li>
          </ul>
          <!-- 客服专线，传真 -->
          <div class="foot-inf">
            <p>
              <span class="pr20">
                客服专线：400-010-6003
                <em class="work-time">
                  (工作时间：早9点 - 晚7点)
                </em>
              </span>
              <span class="pr20">
                传真：010-64738808
              </span>
            </p>
            <p class="m-0">地址：北京市朝阳区望京阜通东大街1号院望京SOHO塔2-B单元0803室</p>
          </div>
        </div>
        <!-- 右边微信一栏 -->
        <div class="foot-col3">
          <div class="wx-box">
            <span class="icon-wx"></span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- 权识认证 -->
  <div class="copyright">
     Copyright©2018　
     <a href="javascript:;">6renyou.com</a>
  　北京六人游国际旅行社股份有限公司　版权所有　京ICP备14027237号　京公网安备11010502026387号　经营许可证:
    <a href="javascript:;" target="_blank">京ICP证140690号</a>
    <a href="javascript:;"  target="_blank">安全联盟</a>
  </div>
  <!-- 认证标识 -->
  <div class="footer-cates">
    <span class="cate xin">
      <a href="http://cats.org.cn/pinzhi/renzheng/1727" target="_blank">
        <img src="../../public/img/footer/vali.png">
      </a>
    </span>
  </div>
</footer>
  
</template>

<script>
export default {
  data(){
    return{
      list:[
        "美国定制旅游",
        "法国定制旅游",
        "北欧定制旅游",
        "新西兰定制旅游",
        "海岛度假别墅",
        "南极旅游",
        "瑞士定制旅游",
        "意大利定制旅游",
        "马尔代夫定制旅游",
        "泰国定制旅游",
        "加拿大定制旅游",
        "澳洲定制旅游",
        "印度定制旅游",
        "马来西亚定制旅游",
        "缅甸定制旅游",
        "斯里兰卡定制旅游"
        ],
    }
  }
}
</script>

<style scoped>
/* 1.大家都在看那一栏 */
.links-wrp {
  width: 1180px;
  min-width: 1180px;
  margin: 20px auto;
}
.links-box {
  background-color: #FFF;
  border: 1px solid #ececec;
  padding: 10px 15px;
  font-family: 'Microsoft Yahei';
}
.links-item {
  padding-left: 120px;
  line-height: 24px;
  overflow: hidden;
  display: flex;
  flex-wrap: wrap;
  margin-bottom: 0;
}
.links-item dt {
  font-size: 12px;
  font-weight: bold;
  color: #666;
  display: inline;
  width:120px;
  margin-left: -120px;
}
.links-item dd a {
  color: #b6b6b6;
}
.links-item dd {
  font-size: 12px;
  width: 120px;
  color: #b6b6b6;
  margin-right: 5px;
  margin-bottom: 0;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}
/* 2.脚部设置  */
.footer{
  min-width: 1180px;
}
.footer {
  background: #2ba165;
  padding: 5px 0px;
  color: #FFF;
  font: 14px/24px "microsoft yahei";
  width: 100%;
}
.footer .footer-inner {
  border-top: 1px solid #4fb17f;
  border-bottom: 1px solid #4fb17f;
}
.footer .footer-box {
  width: 1180px;
  margin: 0 auto;
  background: url("../../public/img/footer/footer-bg.png") right top no-repeat;
  padding: 30px 0;
  display:flex;
  justify-content: space-around;
}
/* 2.1左边图标设置 */
.footer .foot-col1 {
  padding: 0 10px;
  box-sizing:content-box;
}
.footer .footer-logo {
  display: block;
  width: 184px;
  height: 60px;
  background: url("../../public/img/footer/header_v3_icon.png") 0 -122px no-repeat;
}
/* 2.2中间关于我们那一栏*/
.footer .foot-col2 {
  padding-left: 60px;
  padding-top: 5px;
}
.footer ul.foot-nav {
  font-size: 16px;
  display: flex;
  padding: 0;
  list-style: none;  
}
.footer ul.foot-nav li{
  color: #fff;
}
.footer .foot-nav a {
  color: #FFF;
  display: inline-block;
  padding: 0 5px;
  text-decoration: none;
}
/* 2.1.2中间客服专线栏 */
.footer .foot-inf {
  padding-top: 15px;
  padding-left: 5px;
  line-height: 24px;
}
.pr20 {
  padding-right: 20px;
}
.footer .work-time {
  color: #b2d7c1;
}
em{
  font-size: 100%;
  font-style: normal;
  font-weight: normal;
}
.foot-inf p{
  font-size: 100%;
  text-align: left;
}
/* 右边微信二维码 */
.footer .wx-box {
  width: 206px;
}
.footer .icon-wx {
  display: block;
  width: 206px;
  height: 103px;
  background: url("../../public/img/footer/header_v3_icon.png") 0 -264px no-repeat;
}
/* 认证 */
.copyright {
  background: #FFF;
  height: 40px;
  line-height: 40px;
  text-align: center;
  font-size: 12px;
  color: #999;
}
.copyright a {
  color: #666;
}
/* 认证标识一栏的设置 */
img {
  border: 0 none;
  vertical-align: middle;
}
a {
  color: #333333;
  text-decoration: none;
}
.footer-cates .cate {
  display: inline-block;
  width: 170px;
  height: 50px;
  overflow: hidden;
}
.footer-cates {
  background-color: #FFF;
  text-align: center;
  margin: 0 auto;
  padding: 10px 0;
}
</style>