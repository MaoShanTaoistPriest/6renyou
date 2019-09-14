<template>
    <div class="myheader" style="background:url(img/header/header-line.png) left top repeat-x">
       <div class="header-in">
           <div class="header-wp">
               <div class="h-logo">
                    <a href="" title="6人游旅行网" style="background:url(img/header/logo.png) no-repeat"></a>
               </div>
               <div class="h-nav-box">
                    <ul class="h-nav-list">
                        <li class="nav-li"><a href="">首页</a></li>
                        <li class="nav-li"><a href="">定制行程</a></li>
                        <li id="dest"  class="nav-li"  @mouseenter="changeArrowUp" @mouseleave="changeArrowDown">
                            <a href="javascript:;">目的地
                                <img :src="arrowImg">
                            </a>
                            <div class="dest-drop">
                                <div class="block-box">
                                    <div v-for="(item,i) of list" :key="i" class="dest-drop-block">
                                        <h3 v-text="item.area"></h3>
                                        <ul class="dest-drop-ul">
                                            <li v-for="(li,i) of placeName[i]" :key="i"  class="dest-drop-li"><a  href="">{{li}}</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="btn">
                                    <a class="findmore" href="">查看更多目的地</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-li"><a href="">客户评价</a></li>
                        <li class="nav-li"><a href="">度假&别墅</a></li>
                        <li class="nav-li"><a href="">商务考察</a></li>
                    </ul>
               </div>
               <div class="h-right clearfix">
                   <div class="h-reg left" style="background:url(img/header/reg.png) no-repeat">
                        <router-link to="/login">注册</router-link>
                   </div>
                   <div class="h-login left" style="background:url(img/header/login.png) no-repeat">
                       <router-link to="/login" :style="name!=null?'display:none':'display:block'">登录</router-link>
                       <a :style="name!=null?'display:block':'display:none'" @click="logout">退出</a>
                   </div>
                   <div class="h-tel left" style="background:url(img/header/phone.png) no-repeat">
                       400-010-6003
                   </div>
               </div>
           </div>
       </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      list:[],
      placeName:[],
      arrowImg:"img/header/arrow1.png",
      name:"",  //获取客户端的sessionStorage里的用户名
    };
  },
  created(){
    //通过sessionStorage获取用户名
    //用来判断显示是否是登录还是退出
    this.name = JSON.parse(sessionStorage.getItem("name"));

    this.load();
  },
  methods: {
    logout(){
        // 退出登录时，清除sessionStorage里保存的用户名
      sessionStorage.removeItem("name");
      sessionStorage.clear();
      this.name=null;
    },
    load(){
        var url="headerDestination";
        this.axios.get(url).then(res=>{
            this.list=res.data.data;
            // console.log(this.list);
            for(var i=0;i<this.list.length;i++){
                this.placeName.push(this.list[i].placeName.split(","));
            }
            // console.log(this.placeName);
        })
    },
    // 点击目的地箭头向上
    changeArrowUp(){
        this.arrowImg="img/header/arrow2.png"
    },
    // 点击目的地箭头向下
    changeArrowDown(){
        this.arrowImg="img/header/arrow1.png"
    }
  }
};
</script>
<style scoped>
/*基础样式*/
a {
  text-decoration: none;
  color:#000;
}
.left {
  float: left;
}
ul,li{list-style: none;}
.myheader {
  min-width: 1180px;
  padding-top: 4px;
  position: relative;
  z-index: 10;
}
.myheader .header-in {
  filter: none;
  background: rgba(255, 255, 255, 0.8);
  width: 100%;
}
.myheader .header-in .header-wp {
  width: 1180px;
  margin: 0 auto;
  height: 64px;
  position: relative;
  z-index: 100;
}
/*左边logo模块*/
.myheader .header-in .header-wp .h-logo {
  float: left;
  display: inline;
  width: 160px;
  height: 50px;
  margin: 8px 10px 0 10px;
}
.myheader .header-in .header-wp .h-logo a {
  display: block;
  width: 160px;
  height: 50px;
  outline: 0;
  overflow: hidden;
}
/*中间导航模块*/
.myheader .header-in .header-wp .h-nav-box {
  float: left;
  padding-left: 0px;
}
.myheader .header-in .header-wp .h-nav-box ul.h-nav-list{
    margin-top:0;
    box-sizing: border-box;
}
.myheader .header-in .header-wp .h-nav-box ul.h-nav-list li{
    float:left;
    display: inline-block;
    position: relative;
    z-index: 110;
    box-sizing: border-box;
    padding: 0 14px;
}
.myheader .header-in .header-wp .h-nav-box ul.h-nav-list li:hover .dest-drop{
    display:block;
}
.myheader .header-in .header-wp .h-nav-box ul.h-nav-list li.nav-li a{
    display: inline-block;
    height: 64px;
    line-height:64px;
    box-sizing: border-box;
    padding: 20px 5px;
    /* border-bottom: 4px solid transparent; */
    font: 16px "microsoft yahei";
    color: #000;
    text-align: center;
    text-decoration: none;
}
.myheader .header-in .header-wp .h-nav-box ul.h-nav-list li a:hover{
    color:#72b32a;
}
/*隐藏的下拉菜单*/
.myheader .header-in .header-wp .h-nav-box ul.h-nav-list li .dest-drop{
    width: 1180px;
    min-width: 1180;
    /* height:490px; */
    background: #fff;
    border: 1px solid #ededed;
    position: absolute;
    left: -376px;
    top: 64px;
    z-index: 999;
    padding:20px 40px;
    display:none;
}
.myheader .header-in .header-wp .h-nav-box ul.h-nav-list li .dest-drop .block-box{
    display: flex;
    flex-wrap: wrap;
}
#dest .dest-drop .dest-drop-block{
    margin:0 50px 40px 0;
}
#dest .dest-drop .dest-drop-block h3{
    color:#008869;
    font:18px "microsoft yahei";
    margin:0;margin-bottom:10px;
}
#dest .dest-drop .dest-drop-block ul.dest-drop-ul{
    width:240px;
    /* background-color:#fff; */
    margin:0;margin-left:-4px;
    padding:0;
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-start;
}
#dest .dest-drop .dest-drop-block ul.dest-drop-ul li.dest-drop-li{
    margin:2px 0;padding:0;
}
#dest .dest-drop .dest-drop-block ul.dest-drop-ul li.dest-drop-li a{
    height:24px;
    line-height:24px;
    font-size:14px;
    margin-right:5px;padding:0 5px;
    border:none;
}
#dest .dest-drop .dest-drop-block ul.dest-drop-ul li.dest-drop-li a:hover{
    color:#fff;
    background-color:#008869;
}
/*查看更多目的地*/
#dest .dest-drop div.btn{
    padding: 20px;
    border-top: 1px solid #ededed;
    text-align: center;
}
#dest .dest-drop div a.findmore{
    display: inline-block;
    height: 36px;
    line-height: 36px;
    width: 200px;
    color: #FFF;
    background-color: #3eb166;
    border-bottom: 0 none;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
    padding:0;
}
/*右边图标模块*/
.myheader .header-in .header-wp .h-right {
  float: right;
}
.myheader .header-in .header-wp .h-right .h-reg,
.myheader .header-in .header-wp .h-right .h-login,
.myheader .header-in .header-wp .h-right .h-tel {
  margin-top: 18px;
  margin-left: 20px;
  display: inline-block;
  padding-left: 30px;
  height: 26px;
  font: 14px/26px "microsoft yahei";
}
.myheader .header-in .header-wp .h-right a:hover{
  color:#72b32a;
}
/* 退出按钮 */
.myheader .header-in .header-wp .h-right .h-login a{
    cursor: pointer;
}
</style>


