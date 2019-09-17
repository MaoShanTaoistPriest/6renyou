<template>
  <!-- 热门海岛、甄选主题 -->
  <div class="filter-wrap">
    <div>
      <div class="filter-box">
        <!-- 热门海岛 -->
        <div class="item-1">
          <div class="item-hd">
            <span>热门海岛</span>
          </div>
          <div class="item-bd">
            <ul class="filter-ds" id="islands">
              <li v-for="i of 6" :key=i>
                <a href="" class="ds-li">全部别墅</a>
              </li>
            </ul>
          </div>
        </div>
        <!-- 甄选主题 -->
        <div class="item2">
          <div class="hd"></div>
          <div class="bd">
            <div class="villa-topic">
              <ul class="v-tp-list" id="theme">
                <a href="/bieshu/tag2.html">
                  <span>
                    <img src="../../public/img/Villa/v-tp-1.jpg" alt="亲子时光">
                  </span>
                  <hr class="horizontal">
                </a>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style>
/* 最外层div宽度和背景色的设置 */
.filter-wrap {
  width: 100%;
  background-color: #FFFFFF;
}
/* 宽度居中 */
.filter-box {
  width: 1180px;
  margin: 0 auto;
  display: flex;
  justify-content: center;
}
/* 热门海岛 */
.filter-box .item-hd span {
  float: left;
  font-size: 18px;
  color: #888888;
}
/* 各种海岛 */
.filter-ds {
  overflow: hidden;
  display: flex;
}
/* 小框框的设置 */
.filter-ds li {
  padding: 0 10px 10px 0;
}
.filter-ds li .ds-li {
  display: inline-block;
  width: 112px;
  height: 44px;
  line-height: 44px;
  text-align: center;
  background-color: #f6f6f6;
  border: 1px solid #e2e2e2;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
  font-size: 14px;
  color: #333;
  white-space: nowrap;
  overflow: hidden;
}
</style>