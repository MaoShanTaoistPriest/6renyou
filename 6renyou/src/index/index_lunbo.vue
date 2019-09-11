<template>
    <div class="index_carousel">
        <el-carousel height="200px"  :autoplay="false">
            <el-carousel-item v-for="item in listsBanner" :key="item.id">
                <img :src="imgurl+item.img" alt="">
                <div class="index_banner">
                    <div>{{banner_innser[item.id-1]}}</div>
                </div>
            </el-carousel-item> 
        </el-carousel>
        <a href="" class="banner-hlink">帮我定制行程</a>
        <div class="index-concept">
            <div class="concept-wrap">
                <div class="index-topic-list">
                    <ul class="topic-list">
                        <li class="topic-list-item" v-for="items in listsConcept" :key="items.id">
                            <a href="">
                                <i class="icon-topic-1" :style="'background:url'+'('+imgurl+items.normal+')'"></i>
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
            ] 
        }
    },methods:{

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
    }
}
</script>
<style>
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
    top:27.2rem;
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
    min-width: 1180px;
 }
 .index-concept .concept-wrap{
    width: 1180px;
    margin: 0 auto;
    overflow: hidden;
    zoom: 1;
    height: 104px;
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
    margin-top: -150px;
}
.index-concept .concept-wrap dl dt .icon-cp1{
    background-position:0 0;
    display: inline-block;
    width: 75px;
    height: 70px;
    background: url(../../public/img/Index/index-logo.png) no-repeat;
}
.index-concept .concept-wrap dl dd{
    padding-left: 10px;
    width: 160px;
    float: left;
    display: block;
    margin-top: -55px;
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
</style>