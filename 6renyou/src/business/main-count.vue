<template>
<div class="main-cont-hd">
  <!-- 主标题 -->
  <p class="hd-1">{{title1}}</p>
  <!-- 副标题 -->
  <p class="hd-2">
    <i class="line-l"></i>
    <span>{{title2}}</span>
    <i class="line-r"></i>
  </p>
</div>
</template>

<script>
export default {
  props:{
    // 接收父元素数据
    title1:{default:""},
    title2:{default:""}
  }
}
</script>

<style>
/* 标题文字设置 */
.main-cont-hd {
  text-align: center;
  font-size: 18px;
  color: #848484;
  padding: 30px 0;
  font-family: 'Microsoft Yahei';
}
/* 大标题 */
.bs-wrp .main-cont-hd {
    padding-top: 70px;
    padding-bottom: 60px;
}
.main-cont-hd .hd-1 {
  font-size: 36px;
  color: #333;
}
/* 副标题 */
.main-cont-hd .hd-2 {
  text-align: center;
  font-size: 18px;
  color: #848484;
}
.main-cont-hd span {
  position: relative;
  display: inline-block;
  min-width: 180px;
  padding: 0 10px;
}
/* 左右破折线设置 */
.main-cont-hd .line-l, .main-cont-hd .line-r {
  display: inline-block;
  height: 5px;
  width: 20px;
  border-top: 1px solid #b5b5b5;
}
</style>