<template>
  <!-- 优势资源 -->
  <div class="bs-resource-wrp">
    <div class="bs-wrp">
      <!-- 文字设置 -->
      <main-count :title1=title[0] :title2=title[1]></main-count>
      <!-- 资源列表 -->
      <div class="resource-list">
        <ul>
          <li class="resource-item" v-for="(item,index) of resourceLists" :key=index>
            <a href="javascript:;" target="_blank">
              <div class="res-img scale">
                <img :src="imgUrl+item.img" alt="" class="lazy" style="display:inline;">
              </div>
              <div class="resdiv res1">
                <i class="res-icon" :style="'background-position:'+position[index][0]+'px '+position[index][1]+'px;'"></i>
                <span></span>
                <span class="res-title">
                  {{item.title}}
                </span>
              </div>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
import mainCount from './main-count'
export default {
  data(){
    return{
      title:["优势资源","甄选全球商务资源,满足您的企业需求"],
      resourceLists:[],
      imgUrl:this.$imgUrl,
      position:[[0,0],[-81,0],[-162,0],[-243,0],[0,-81],[-81,-81],[-162,-81],[-243,-81]]
    }
  },
  methods:{
    onload(){
      this.axios.get('businessResources').then(result=>{
        // console.log(result.data.data);
        this.resourceLists=result.data.data;
      })
    }
  },
  created(){
    this.onload();
  },
  components:{
    "main-count":mainCount
  }
}
</script>

<style>
/* 导自base.css */
ul{
  margin:0;
}
a{
  cursor: pointer;
}

.resource-list .resource-item a:hover, .resource-list .resource-item a:hover > * {
    text-decoration: none;
}

a, a > * {
  color: rgb(65, 15, 15);
  text-decoration: none;
  transition: background-color .2s ease, border .2s ease, color .2s ease, opacity .2s ease-in-out, outline .2s ease;
}
body{
  font-family: 'Microsoft Yahei';
  font: 12px/1.5 Arial,simsun,\5b8b\4f53,Helvetica,Sans-Serif;
}
h1, h2, h3, h4, h5, h6, i, em, dfn {
  font-size: 100%;
  font-style: normal;
  font-weight: normal;
}
ul,li,ol{
  list-style: none;
}
p{
  margin: 0 auto;
}
/* 最外层背景图片设置 */
.bs-resource-wrp {
  width: 100%;
  background: url(http://cdn1.6renyou.cn/sight/2018_5_15_1526351396676524559.jpg@80q) center top no-repeat;
}
/* 中间布局设置 */
.bs-wrp {
  width: 1180px;
  margin: 0 auto;
}
/* 顶部文字设置 */
.bs-wrp .main-cont-hd {
  padding-top: 70px;
  padding-bottom: 60px;
}
/* 大标题：优势资源的设置 */
.bs-wrp .main-cont-hd {
    padding-top: 70px;
    padding-bottom: 60px;
}
/* 资源列表设置 */
/* ul的设置 */
div.resource-list ul{
  padding:0;
  display:flex;
  justify-content: center;
  flex-wrap: wrap;
}
.resource-list {
  padding-bottom: 80px;
}
/* li的设置 */
.resource-list li.resource-item {
  display: block;
  background: #FFFFFF;
  position: relative;
}
.resource-list .resource-item .res-img {
  width: 295px;
  height: 190px;
  overflow: hidden;
}
/* 图片设置 */
img.lazy {
  background: url("../../public/img/bus/loading.gif")no-repeat center;
}
.resource-item{
  transition: All 0.3s ease-in-out;
}


.scale img:hover {
  transform: scale(1.1);
  opacity: 0.90;
}
.scale img {
  transition: All 0.3s ease-in-out;
}
/* 图片上方悬浮的div设置 */
.resource-list .resdiv {
  width: 295px;
  height: 190px;
  position: absolute;
  top: 0;
  left: 0;
  text-align: center;
}
/* 图标设置 */
.resource-list .res1 .res-icon {
  background-position: 0 0;
}
.resource-list .resdiv .res-icon {
  display: inline-block;
  width: 80px;
  height: 80px;
  background: url("../../public/img/bus/bs-resource-icon.png") no-repeat;
  margin-top: 28px;
}
/* 小破折线的设置 */
.resource-list .resdiv .res-line {
  display: block;
  height: 10px;
  width: 20px;
  border-top: 1px solid #FFFFFF;
  margin: 0 auto;
  margin-top: 5px;
}
/* 悬浮的文字设置 */
.resource-list .resdiv .res-title {
  display: block;
  font-size: 20px;
  color: #fff;
  font-weight: 600;
}
</style>