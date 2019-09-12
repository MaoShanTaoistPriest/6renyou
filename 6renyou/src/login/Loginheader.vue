<template>
    <div class="myheader" style="background:url(img/header/header-line.png) left top repeat-x">
       <div class="header-in">
           <div class="header-wp">
               <!-- 左边logo -->
               <div class="h-logo">
                    <a href="" title="6人游旅行网" style="background:url(img/header/logo.png) no-repeat"></a>
               </div>
              <!-- 右边 -->
               <div class="h-right">
                   <div class="h-index left">
                        <router-link to="/">首页</router-link>
                   </div>
                   <div class="h-tel left" style="background:url(img/login/tel.png) no-repeat">
                       400-010-6003
                   </div>
                   <div class="h-app left" style="background:url(img/login/phone.png) no-repeat">
                       <a href="" target="_blank">APP下载
                           <div class="sanjiao"></div>
                           <div class="weixin">
                               <img src="img/login/weixin.png" alt="">
                           </div>
                       </a>
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
      arrowImg:"img/header/arrow1.png"
    };
  },
  created(){
      this.load();
  },
  methods: {
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
  display: inline-block;
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


/*右边图标模块*/
.myheader .header-in .header-wp .h-right {
  float: right;
}
.myheader .header-in .header-wp .h-right .h-index,
.myheader .header-in .header-wp .h-right .h-app,
.myheader .header-in .header-wp .h-right .h-tel {
  margin-top: 18px;
  margin-left: 20px;
  display: inline-block;
  padding-left: 20px;
  height: 26px;
  font: 14px/26px "microsoft yahei";
}
.myheader .header-in .header-wp .h-right a:hover{
  color:#72b32a;
}
/*右边微信扫码*/
.myheader .header-in .header-wp .h-right .h-app{
    position: relative;
}
.myheader .header-in .header-wp .h-right .h-app a{
    box-sizing: border-box;
    padding:24px 0;
}
/*鼠标悬停app扫码显示*/
.myheader .header-in .header-wp .h-right .h-app a:hover .weixin,
.myheader .header-in .header-wp .h-right .h-app a:hover .sanjiao{
    display:block;
}
.myheader .header-in .header-wp .h-right .h-app .weixin{
    width:336px;height:245px;
    background-color:#fff;
    position:absolute;
    top:55px;right:0;
    text-align: center;
    border-radius:6px;
    display:none;
}
.myheader .header-in .header-wp .h-right .h-app .weixin img{
    margin-top:28px;
}
/*三角箭头*/
.myheader .header-in .header-wp .h-right .h-app .sanjiao{
    width:0px;height:10px;
    border:8px solid transparent;
    border-bottom:10px solid #fff;
    position:absolute;
    top:28px;right:25px;
    z-index:20;
    display:none;
}
</style>


