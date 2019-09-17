<template>
  <!-- villa-banner -->
  <div class="villa-banner-box">
    <el-carousel :interval="5000" arrow="never">
    <el-carousel-item v-for="(item,index) in lists" :key="index">
      <a href="javascript:;">
        <img :src="imgUrl+item.img" alt="">
      </a>
      <div class="villa-banner-txt">
        <a href="" class="">{{item.title}}</a>
      </div>
    </el-carousel-item>
    </el-carousel>
  </div>
</template>

<script>
export default {
  data(){
    return{
      lists:[],
      imgUrl:this.$imgUrl
    }
  },
  methods:{
    onload(){
      this.axios.get("villaBanner")
      .then(result=>{
        // console.log(result.data.data);
        this.lists=result.data.data;
      });
    }
  },
  created(){
    this.onload();
  }
}
</script>

<style>
  .el-carousel__item a img{
    width:100%;
    height:100%;
  }
  .el-carousel__item{
    min-width: 1180px;
    height: 420px;
    overflow: hidden;
  }
  .el-carousel__container {
    border-bottom: 0;
  }
  .el-carousel__item h3 {
    color: #475669;
    font-size: 18px;
    opacity: 0.75;
    line-height: 300px;
    margin: 0;
  }
  .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }
  
  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }
  /* 滚动小图标改成小圆点 */
  .villa-banner-box .el-carousel__button {
    width: 12px!important;
    height: 12px!important;
    border-radius: 6px!important;
  }
  .el-carousel__indicator--horizontal {
    display: inline-block;
    padding: 12px 8px!important;
  }
  .villa-banner-box .el-carousel .el-carousel__indicators--horizontal {
    bottom: 0;
    left:85%!important;
  }
  /* 地点定位 */
  .villa-banner-txt {
    width: 460px;
    height: 25px;
    text-align: right;
    position: absolute;
    bottom: 30px;
    left: 60%;
    margin-left: 130px;
    z-index: 50;
    white-space: nowrap;
    overflow: hidden;
  }
  .villa-banner-txt a {
    display: inline-block;
    color: #FFF;
    font-size: 16px;
    font-weight: 600;
    font-family: "microsoft yahei";
    text-align: right;
    background: url("../../public/img/Villa/pin.png") 0 4px no-repeat;
    padding-left: 20px;
  }
</style>