<template>
    <div class="index_carousel">
        <el-carousel height="200px"  :autoplay="false">
            <el-carousel-item v-for="item in listsBanner" :key="item.id">
                <img :src="imgurl+item.img" alt="">
                <div class="index_banner">
                    <div>{{banner_innser[item.id-1]}}</div>
                </div>
            </el-carousel-item> 
            <a href="" class="banner-hlink">帮我定制行程</a>
        </el-carousel>
        
        <div class="index-concept">
            <div class="concept-wrap">
                <div class="index-topic-list">
                    <ul class="topic-list">
                        <li class="topic-list-item"  v-for="items in listsConcept" :key="items.id">
                            <a href="">
                                <i class="icon-topic-1" :style="'background:url'+'('+imgurl+items.normal+')'" @mouseenter="changeColor1($event,items.hover)" @mouseleave="changeColor2($event,items.normal)"></i>
                                <span class="topic-link1">
                                    <span>
                                        {{concept[items.id-1].top}}<br>
                                        <span>{{concept[items.id-1].bottom}}</span>
                                    </span>
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>
                <dl>
                    <dt>
                        <span class="icon-cp1"></span>
                    </dt>
                    <dd>
                        <strong>112746</strong>
                        个家庭、朋友的选择
                    </dd>
                </dl>
            </div>
        </div>
        <!-- 当季热门目的地 div 容器-->
        <div class="index-container-box">
            <!-- 当季热门目的地 控制位置-->
            <div class="index-container">
                <!-- 内部容器  最受欢迎的容器 -->
                <div class="index-popular-box">
                    <!-- 左侧 -->
                    <div class="popular-left">
                        <h2 class="h1">当季热门目的地</h2>
                        <p class="p-txt1">旅行顾问推荐好玩儿的地方</p>
                        <dl class="one-continent" v-for="item in indexHotPlaceName" :key="item.id">
                            <dt class="list-name">{{item.area}}</dt>
                            <dd class="dd-list">
                                <ul class="dest-ul" >
                                    <li v-for="(item,index) of newPlace[item.id-1]" :key="index">
                                        <a href="">{{item}}</a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                    </div>
                    <!-- 右侧 -->
                    <div class="popular-right">
                        <ul class="popu-list">
                            <li v-for="(item,index) of listsHotPlaceImg" :key="index">
                                <a href="" class="popu-list">
                                    <img :src=imgurl+item.img alt="">
                                    <span>
                                        <strong>{{item.placeName}}</strong>
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- 解决高度坍塌 -->
                    <div style="height:494px;"></div>
                </div>
            </div>
        </div>
        <!-- 旅行顾问 -->
        <div class="index-container">
            <!-- 容器顶部标题 -->
            <div class="main-cont-hd">
                <p class="hd-1">旅行顾问</p>
                <p class="hd-2">
                    <i class="line-l"></i>
                    <span>专业旅行顾问量身定制行程</span>
                    <i class="line-r"></i>
                </p>
            </div>
            <!-- 内容 -->
            <div class="guwen-wrp">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div v-for="(item,index) of indexConsultant" :key="index"  class="swiper-slide">
                            <a href="">
                                <!-- 效果位置 -->
                                <div class="guwen-item">
                                    <div class="guwen-img">
                                        <img :src="imgurl+item.img" alt="" class="lazy">
                                    </div>
                                    <p class="guwen-name">{{item.cName}}</p>
                                    <p class="guwen-level">{{item.position}}</p>
                                    <span class="fg-line"></span>
                                    <p class="guwen-area">{{item.area}}</p>
                                    <div class="guwen-link">
                                        <span>看看TA的介绍</span>
                                    </div>
                                </div>
                                <div class="guwen-item-detail">
                                    
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 客户评价 -->
        <div class="index-container">
            <div class="main-cont-hd">
                <p class="hd-1">客户评价</p>
                <p class="hd-2">
                    <i class="line-l"></i>
                    <span>来自用户的真实出游评价</span>
                    <i class="line-r"></i>
                </p>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            listsBanner:[],
            imgurl:this.$imgUrl,
            banner_innser:['我在阿德莱德等你','福克斯冰川','让世界看见中国品牌','花园城市，一场奇遇冒险----新加坡'],
            listsConcept:[],
            //陪父母，带孩子，和朋友，客户评价
            concept:[{
                top:'陪父母',
                bottom:'To Parent'
            },{
                top:'带孩子',
                bottom:'With Children'
            },{
                top:'和朋友',
                bottom:'With Friends'
            },{
                top:'客户评价',
                bottom:'User Rating'
                }
            ],indexHotPlaceName:[],
            newPlace:[],
            listsHotPlaceImg:[],
            indexConsultant:[] 
        }
    },methods:{
        // 鼠标移入移出事件
        changeColor1(e,hover){
            e.target.style='background:url'+'('+this.imgurl+hover+')';
        },
        // 鼠标移入移出事件
        changeColor2(e,hover){
            e.target.style='background:url'+'('+this.imgurl+hover+')';
        }
    },created(){
        // 获取轮播图图片
        var urlbanner ="indexBanner";
        this.axios.get(urlbanner).then(res=>{
            if(res.data.code==1){
                this.listsBanner = res.data.data;
            }
        })
        // 获取轮播图下面的图片
        var urlconcept = "indexConcept";
        this.axios.get(urlconcept).then(res=>{
            if(res.data.code==1){
                this.listsConcept = res.data.data;
            }
        })
        // 当前热门目的地图片
        var indexHotPlaceName = "indexHotPlaceName";
        this.axios.get(indexHotPlaceName).then(res=>{
            if(res.data.code==1){
                this.indexHotPlaceName = res.data.data;
                for(var i=0;i<res.data.data.length;i++){
                    this.newPlace.push(res.data.data[i].placeName.split(','));
                }
            }
        })
        // 当前热门目的地图片
        var indexHotPlaceImg ="indexHotPlaceImg";
        this.axios.get(indexHotPlaceImg).then(res=>{
            if(res.data.code==1){
                this.indexHotPlaceImg = res.data.data;
                for(var i=0;i<res.data.data.length;i++){
                    this.listsHotPlaceImg = res.data.data;
                }
            }
        })
        var indexConsultant = "indexConsultant";
        this.axios.get(indexConsultant).then(res=>{
            if(res.data.code==1){
                this.indexConsultant = res.data.data;
                for(var i=0;i<res.data.data.length;i++){
                    this.indexConsultant = res.data.data.slice(0,4);
                    console.log(res.data.data.slice(0,4));
                }
            }
        })
    }
}
</script>
<style>
.index_carousel{
    height:2400px;
}
/* 490px 为修改原本轮播图高度 */
.el-carousel__container{
    height:495px !important;
    position:relative;
    width: 100%;
    border-bottom: 5px solid #99a901;
}
.index_carousel .banner-hlink{
    display: block;
    width: 265px;
    height: 57px;
    background: url(../../public/img/Index/index-logo.png) no-repeat;
    background-position: 0 -208px !important;
    position: absolute;
    top:27.4rem;
    left: 59rem;
    margin-left: -132px;
    z-index: 100;
    text-indent: -9999px;
}
.index_carousel .el-carousel__item .is-animating{
    height:490px;
    
}
/* 复原原网站样式 两边按钮清空 */
 .index_carousel .el-carousel__arrow{
    display:none;
}
 .index_carousel .el-carousel__indicators--horizontal{
     position:absolute;
     top:28rem;
     left:85rem;
}

 .index_carousel .index_banner div{
    position:absolute;
    top:26rem;
    left:80rem;
    display: inline-block;
    color: #FFF;
    font-size: 16px;
    font-weight: bold;
    font-family: "microsoft yahei";
    text-align: right;
    border-bottom: 1px solid #FFF;
    background-position: 0 -602px !important;
    padding: 0 0 10px 40px;
    background: url(../../public/img/Index/index-logo.png) no-repeat;
 }

 .index-concept{
    background: #FFF;
    border-bottom: 1px solid #eaeaea;
    margin-bottom: 30px;
    width: 100%;
    padding-bottom:20px;
 }
 .index-concept .concept-wrap{
    width: 1180px;
    margin: 0 auto;
    overflow: hidden;
    zoom: 1;
    height: 104px;
    padding: 0;
    border: 0;
    font-size: 100%;
 }
.index-concept .concept-wrap .index-topic-list{
    float: left;
    width: 930px;
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
   }
  .index-concept .concept-wrap .index-topic-list .topic-list{
    display: flex;
    justify-content: space-between;
  }
.index-concept .concept-wrap .index-topic-list .topic-list .topic-list-item{
    list-style: none;
}
.index-concept .concept-wrap .index-topic-list{
    width: 230px;
    height: 75px;
    
}
.index-concept .concept-wrap .index-topic-list a{
    display: inline-block;
    width: 230px;
    height: 75px;
    font: 22px/24px "microsoft yahei";
    color: #666;
    text-decoration: none;
    text-align: left;
    cursor: pointer;
    color: #666;
    margin-top: 14px; 

}
.index-concept .concept-wrap .index-topic-list a .icon-topic-1{
    /* background: url(../assets/canvaous/icon_topic_1.png) no-repeat; */
    float: left;
    display: inline-block;
    width: 70px;
    height: 75px;

}

.index-concept .concept-wrap .index-topic-list a .icon-topic-2{
    /* background: url(../assets/canvaous/icon_topic_2.png) no-repeat; */
    float: left;
    display: inline-block;
    width: 70px;
    height: 75px;
  
}

.index-concept .concept-wrap .index-topic-list a .icon-topic-3{
    /* background: url(../assets/canvaous/icon_topic_3.png) no-repeat; */
    float: left;
    display: inline-block;
    width: 70px;
    height: 75px;
}
.index-concept .concept-wrap .index-topic-list a .icon-topic-4{
    /* background: url(../assets/canvaous/icon_topic_userrating.png) no-repeat; */
    float: left;
    display: inline-block;
    width: 70px;
    height: 75px;
}
.index-concept .concept-wrap .index-topic-list a .topic-link1{
    float: left;
    display: inline-block;
    width: 144px;
    margin: 15px 0 0 5px;
    cursor: pointer;
}
.index-concept .concept-wrap .index-topic-list a .topic-link1 span span{
    font-size:16px;
}
/* 轮播图下面的icon颜色更换 */
/* .index-concept .concept-wrap .index-topic-list a .icon-topic-3:hover{
    
} */
.index-concept .concept-wrap .index-topic-list a .topic-link1 span:hover,
.index-concept .concept-wrap .index-topic-list a .topic-link1 span span:hover{
    color:#b7cc03;
}
.index-concept .concept-wrap dl{
    background: none;
    padding-left: 0;
    width: 235px;
    display: block;
    position:relative;
    left:950px;
    top:35px;
}
.index-concept .concept-wrap dl dt{
    float: left;
    display: block;
    width: 75px;
    margin-top: -78px;
}
.index-concept .concept-wrap dl dt .icon-cp1{
    background-position:0 0;
    display: inline-block;
    width: 75px;
    height: 70px;
    background: url(../../public/img/Index/index-Icon.png) no-repeat;
}
.index-concept .concept-wrap dl dd{
    padding-left: 40px;
    width: 160px;
    float: left;
    display: block;
    margin-top: -72px;
    font-family: "microsoft yahei";
    font-size: 16px;
    color: #a4a4a4;
    line-height: 32px;
}
.index-concept .concept-wrap dl dd strong{
    font-style: normal !important;
    display: block;
    font-size: 30px;
    font-weight: normal;
    font-style: italic;
    color: #b7cc03;
    text-align: left;
}
/* index 最受欢迎的模块 */
.index-container-box>.index-container{
    width: 1180px;
    margin: 0 auto;
    margin-bottom: 30px;
}
/* 内部内容 */
.index-container-box>.index-container>.index-popular-box{
    position: relative;
    background: #FFF;
    padding: 30px;
}
/* 左侧内容 */
.index-container-box>.index-container>.index-popular-box>.popular-left{
    float: left;
    width: 260px;
}
.index-container-box>.index-container>.index-popular-box>.popular-left>.h1{
    font-size: 28px;
    font-weight: bold;
    color: #93c11b;
    line-height: 30px;
    padding-bottom: 3px;
    font-family: "Microsoft YaHei";
    margin:0;
}
.index-container-box>.index-container>.index-popular-box>.popular-left>.p-txt1{
    font-size: 14px;
    font-family: "Microsoft YaHei";
    color: #a8a7a7;
    line-height: 18px;
    margin:0;
}
.index-container-box>.index-container>.index-popular-box>.popular-left>.one-continent{
        margin-top: 20px !important;
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
}
.index-container-box>.index-container>.index-popular-box>.popular-left>.one-continent>.list-name{
    font-weight: bold;
    color: #222;
    font-size: 17px;
    line-height: 28px;
    cursor: default;
}
.index-container-box>.index-container>.index-popular-box>.popular-left>.one-continent>.dd-list{
    font-family: Microsoft Yahei;
    margin-left:0;
}
.index-container-box>.index-container>.index-popular-box>.popular-left>.one-continent>.dd-list>.dest-ul{
    overflow: hidden;
    zoom: 1;
    padding:0;
    margin:0;
}
.index-container-box>.index-container>.index-popular-box>.popular-left>.one-continent>.dd-list>.dest-ul li{
    color: #737373;
    width: 80px;
    margin-right: 4px;
    float: left;
    padding: 6px 0;
    font-size: 13px;
    line-height: 16px;
    height: 16px;
    overflow: hidden;
    white-space: nowrap;
    list-style: none !important;
}
.index-container-box>.index-container>.index-popular-box>.popular-left>.one-continent>.dd-list>.dest-ul li a{
    color: #737373;
    padding: 6px 0;
    cursor: pointer;
    text-decoration: none;
}
/* 右侧内容 */
.index-container-box>.index-container>.index-popular-box>.popular-right{
    float: right;
    width: 852px;
    overflow: hidden;
   
}
.index-container-box>.index-container>.index-popular-box>.popular-right>.popu-list{
    overflow: hidden;
    zoom: 1;
    list-style: none;
    padding:0;
    margin:0;
}
.index-container-box>.index-container>.index-popular-box>.popular-right>.popu-list li{
    float: left;
    display: inline-block;
    width: 212px;
    height: 216px;
    margin-right: 1px;
    margin-bottom: 1px;
    overflow: hidden;
    position: relative;
}
.index-container-box>.index-container>.index-popular-box>.popular-right>.popu-list li a{
    display: block;
    position: relative;
    text-decoration: none;
}
.index-container-box>.index-container>.index-popular-box>.popular-right>.popu-list li a img{
    display: inline;
    width: 100%;
    height: 100%;
}
.index-container-box>.index-container>.index-popular-box>.popular-right>.popu-list li a span{
    display: block;
    position: absolute;
    top: 10px;
    left: 12px;
    color: #fff;
    font-family: "microsoft yahei";
    text-shadow: 0 1px 2px rgba(0, 0, 0, 0.3);
    zoom: 1;
}
.index-container-box>.index-container>.index-popular-box>.popular-right>.popu-list li a span strong{
    font-size: 17px;
}
/* 旅行顾问 */
.index-container{
    width: 1180px;
    margin: 0 auto;
    margin-bottom: 30px;
}
.index-container>.main-cont-hd{
    text-align: center;
    font-size: 18px;
    color: #848484;
    font-family: 'Microsoft Yahei';
    padding:0 0 30px;
}
.index-container .main-cont-hd .hd-1{
    font-size: 36px !important;
    color: #333;
    margin:0;
}
.index-container>.main-cont-hd>.hd-2{
    text-align: center;
    font-size: 18px;
    color: #848484;
    margin:0;
}
.index-container>.main-cont-hd>.hd-2>.line-l{
    display: inline-block;
    height: 5px;
    width: 20px;
    border-top: 1px solid #b5b5b5;
}
.index-container>.main-cont-hd>.hd-2 span{
    position: relative;
    display: inline-block;
    min-width: 180px;
    padding: 0 10px;
}
.index-container>.main-cont-hd>.hd-2 .line-r{
    display: inline-block;
    height: 5px;
    width: 20px;
    border-top: 1px solid #b5b5b5;
}
/* 旅行顾问内容 */
.guwen-wrp{
    width: 1180px;
    height: 420px;
    position: relative;
    font-family: 'Microsoft Yahei';
}
.guwen-wrp .swiper-container{
    width: 100%;
    height: 100%;
    margin: 0 auto;
    position: relative;
    overflow: hidden;
    z-index: 1;
}
.guwen-wrp .swiper-container .swiper-wrapper{
    position: relative;
    width: 100%;
    height: 100%;
    z-index: 1;
    display: flex;
    box-sizing: content-box;
}
.guwen-wrp .swiper-container .swiper-wrapper .swiper-slide{
    width: 257.5px;
    margin-right: 50px;
    height: 360px;
    text-align: center;
    position: relative;
    overflow: hidden;
}
.guwen-wrp .swiper-container .swiper-wrapper .swiper-slide a{
    display: block;
    width: 260px;
    height: 360px;
    color: #333;
    text-decoration: none;
}
.guwen-wrp .swiper-container .swiper-wrapper .swiper-slide a .guwen-item{
    width: 100%;
    height: 100%;
    background: #fff;
    text-align: center;
    overflow: hidden;
    font-family: 'Microsoft Yahei';
}
.guwen-wrp .swiper-container .swiper-wrapper .swiper-slide a .guwen-item .guwen-img{
    width: 110px;
    height: 110px;
    margin: 0 auto;
    margin-top: 35px;
    border: 1px solid #f2f2f2;
    overflow: hidden;
    border-radius: 55px;
}
.guwen-wrp .swiper-container .swiper-wrapper .swiper-slide a .guwen-item .guwen-img img{
    display: inline;
    width: 110px;
    height: 110px;
    border: 0 none;
    vertical-align: middle;
}
.guwen-wrp .swiper-container .swiper-wrapper .swiper-slide a .guwen-item .guwen-name{
    font-size: 18px;
    font-weight: 500;
    color: #333;
    padding-top: 20px;
    padding-bottom: 15px;
    margin:0;
}
.guwen-wrp .swiper-container .swiper-wrapper .swiper-slide a .guwen-item .guwen-level{
    font-size: 15px;
    color: #666;
    line-height: 18px;
    margin:0;
    padding:0;
}
.guwen-wrp .swiper-container .swiper-wrapper .swiper-slide a .guwen-item .fg-line{
    display: inline-block;
    width: 46px;
    height: 2px;
    background: #b6b6b6;
    font-size: 0;
    line-height: 0;
}
.guwen-wrp .swiper-container .swiper-wrapper .swiper-slide a .guwen-item .guwen-area{
    font-size: 12px;
    line-height: 18px;
    height: 36px;
    padding: 0 15px;
    margin:0;
}
.guwen-wrp .swiper-container .swiper-wrapper .swiper-slide a .guwen-item .guwen-link{
    padding-top: 15px;
}
.guwen-wrp .swiper-container .swiper-wrapper .swiper-slide a .guwen-item .guwen-link span{
    display: inline-block;
    width: 128px;
    height: 36px;
    border: 1px solid #7f7f7f;
    text-align: center;
    line-height: 36px;
    font-size: 14px;
    color: #666;
    -webkit-border-radius: 2px;
    border-radius: 2px;
}
/* 客户评价 */

</style>