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
                    <div class="popular-right"></div>
                    <!-- 解决高度坍塌 -->
                    <div style="height:494px;"></div>
                </div>
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
            newPlace:[] 
        }
    },methods:{
        changeColor1(e,hover){
            e.target.style='background:url'+'('+this.imgurl+hover+')';
        },
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
        var indexHotPlaceName = "indexHotPlaceName";
        this.axios.get(indexHotPlaceName).then(res=>{
            if(res.data.code==1){
                this.indexHotPlaceName = res.data.data;
                for(var i=0;i<res.data.data.length;i++){
                    this.newPlace.push(res.data.data[i].placeName.split(','));
                }
            }
        })
    }
}
</script>
<style>
.index_carousel{
    height:1400px;
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
    float: right;
    background: none;
    padding-left: 0;
    width: 235px;
    display: block;
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

</style>