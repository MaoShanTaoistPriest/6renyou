<template>
  <div class="bs-banner">
    <div class="bs-banner-inner">
      <div class="bs-top-actions">
        <a href="javascript:;" class="btn-ctz lc-orderc">立即咨询</a>
      </div>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style>
a{
  text-decoration: none;
}
/* 广告图 */
.bs-banner {
  height: 530px;
  width: 100%;
  background: #104144 url(http://cdn1.6renyou.cn/sight/2019_7_30_1564466537232257733.jpg@80q) center center no-repeat;
}
.bs-banner-inner {
    width: 1180px;
    margin: 0 auto;
    height: 530px;
    position: relative;
}
/* 立即咨询栏设置 */
.bs-top-actions {
    width: 100%;
    position: absolute;
    top: 305px;
    text-align: center;
}
.btn-ctz {
  display: inline-block;
  width: 310px;
  height: 58px;
  line-height: 58px;
  border: 0 none;
  background-color: #3eb166;
  font-size: 20px;
  text-align: center;
  color: #fff;
  border-radius: 4px;
}
</style>