<template>
<!-- 考察案例页 -->
  <div class="bs-case-wrp">
    <div class="bs-wrp">
      <!-- 标题栏 -->
      <main-count :title1="title[0]" :title2="title[1]"></main-count>
      <div class="bs-case-list">
        <!-- 考察实例单 -->
        <ul id="record_list">
          <li class="bs-case-item" v-for="(item,index) of caseLists" :key="index">
            <a href="http://" target="_blank">
            <!-- 图片 -->
            <div class="case-img scale">
              <img class="lazy" :src="imgUrl+item.img"  style="display: inline;">
            </div>
            <!-- 小标题 -->
            <div class="case-bd">
              <h2 class="case-title">{{item.title}}</h2>
              <p class="case-dest">{{item.place}}</p>
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
      title:["考察案例","企业客户考察实例，涵盖多样化主题"],
      caseLists:[],
      imgUrl:this.$imgUrl
    }
  },
  methods:{
    onLoad(){
      this.axios.get('businessCase').then(result=>{
        // console.log(result.data.data);
        this.caseLists=result.data.data;
      });
    }
  },
  created(){
    this.onLoad();
  },
  components:{
    "main-count":mainCount
  }
}
</script>

<style>
body {
  font-family: 'Microsoft Yahei';
}
.bs-case-wrp {
  width: 100%;
  background: #FFFFFF;
}
.bs-wrp {
  width: 1180px;
  margin: 0 auto;
}

/* 卡片设置 */
.bs-case-list {
  width: 1180px;
  overflow: hidden;
}
.bs-case-list ul{
  display: flex;
  justify-content: center;
  margin-right: -35px;
  padding:0;
  flex-wrap: wrap;
}
.bs-case-list .bs-case-item {
  display: block;
  width: 370px;
  margin-right: 35px;
  margin-bottom: 35px;
}
/* 图片设置*/
.bs-case-list .bs-case-item .case-img {
  width: 370px;
  height: 243px;
  overflow: hidden;
}
img.lazy {
  background: url("../../public/img/bus/loading.gif") no-repeat center;
}
/* 过渡 */
.scale img {
  transition: All 0.3s ease-in-out;
}
.scale img:hover {
  transform: scale(1.1);
  opacity: 0.90;
}
.bs-case-list .bs-case-item .case-img img {
    width: 100%;
    height: auto;
}
/* 卡片下的小标题 */

.bs-case-list .bs-case-item .case-bd {
  background: #f5f5f5;
  padding: 20px;
}
/* 巴菲特股东大会 */
.bs-case-list .bs-case-item .case-bd .case-title {
  font-family: 'Microsoft Yahei';
  font-size: 20px;
  color: #333;
  height: 24px;
  line-height: 24px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  margin: 0;
}
/* 美国奥马哈 */
.bs-case-list .bs-case-item .case-bd .case-dest {
  font-family: 'Microsoft Yahei';
  font-size: 14px;
  color: #666;
  margin-top: 5px;
  height: 20px;
  line-height: 20px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}
</style>