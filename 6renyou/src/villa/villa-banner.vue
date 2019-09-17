<template>
  <!-- villa-banner -->
  <div class="villa-banner-box">
    <el-carousel :interval="5000" arrow="never">
    <el-carousel-item v-for="item in 3" :key="item">
      <a href="javascript:;">
        <img src="../../public/img/Villa/lunbotest.jpg" alt="">
      </a>
    </el-carousel-item>
    </el-carousel>
  </div>
</template>

<script>
export default {
  
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
  /* .el-carousel__button {
    width: 12px!important;
    height: 12px!important;
    border-radius: 6px!important;
  } */
  .el-carousel__indicator--horizontal {
    display: inline-block;
    padding: 12px 8px!important;
  }
  /* .el-carousel .el-carousel__indicators--horizontal {
    bottom: 0;
    left:85%!important;
  } */
</style>