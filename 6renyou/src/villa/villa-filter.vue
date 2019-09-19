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
              <li v-for="i of lists" :key="i">
                <button href class="ds-li" @click="change(i)">{{i}}</button>
              </li>
            </ul>
          </div>
        </div>
        <!-- 甄选主题 -->
        <div class="item-2">
          <div class="item-hd">
            <span>甄选主题</span>
          </div>
          <div class="item-bd">
            <div class="villa-topic">
              <ul class="v-tp-list" id="theme">
                <li v-for="(item,index) of pics" :key="index">
                  <a href="">
                    <span>
                      <img :src="imgUrl+item.img" :alt="item.title" />
                    </span>
                    <hr class="horizontal" />
                  </a>
                </li>
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
  data() {
    return {
      lists: ["全部别墅", "巴厘岛", "马尔代夫", "普吉岛", "毛里求斯", "苏梅岛"],
      pics:[],
      imgUrl:this.$imgUrl
    };
  },
  methods: {
    onLoad() {
      this.axios.get("villaTheme")
      .then(result => {
        // console.log(result.data.data);
        this.pics = result.data.data;
      });
    },
    change(i){
      this.$store.commit("updateKeys",i);
      
    }
  },
  created(){
    this.onLoad();
  }
};
</script>

<style>
img {
  border: 0 none;
  vertical-align: middle;
}
/* 最外层div宽度和背景色的设置 */
.filter-wrap {
  width: 100%;
  background-color: #ffffff;
}
/* 宽度居中 */
.filter-box {
  width: 1180px;
  margin: 0 auto;
  display: flex;
  justify-content: space-around;
}
/* 热门海岛 */
.filter-box .item-hd span {
  float: left;
  font-size: 18px;
  color: #888888;
}
/* 悬停效果 */
.filter-ds li .ds-li:hover,
.filter-ds li.on .ds-li {
  background-color: #3eb166;
  text-decoration: none;
  color: #fff;
  border-color: #3eb166;
}
/* 各种海岛 */
.filter-ds {
  overflow: hidden;
  display: flex;
  padding: 0;
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
  font-family: "microsoft yahei";
}
.filter-box .item-hd {
  overflow: hidden;
  padding: 10px;
  zoom: 1;
}
/* 甄选主题 */
.filter-box .item-2 {
  width: 390px;
  padding: 8px 0 8px 28px;
  border-left: 1px solid #eeeeee;
  position: relative;
  left: -1px;
}

/* 标题 */
.filter-box .item-hd {
  overflow: hidden;
  padding: 10px;
  zoom: 1;
}
.filter-box .item-hd span {
  font-size: 18px;
  color: #888888;
  font-family: "microsoft yahei";
}
.filter-box .item-bd {
  zoom: 1;
}
.v-tp-list {
  padding: 0;
  overflow: hidden;
  zoom: 1;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
}
.v-tp-list li {
  display: inline;
  margin-right: 4px;
}
.v-tp-list li a {
  border-bottom: 1px dotted #d4d4d4;
  border-right: 1px dotted #d4d4d4;
  color: #999;
  display: block;
  height: 50px;
  overflow: hidden;
  padding-right: 4px;
  position: relative;
  width: 186px;
}
.v-tp-list li a span {
  padding: 0.1px;
}
/* 虚线分割线 */
.v-tp-list .horizontal {
  display: block;
  width: 186px;
  height: 0px;
  border: none;
  border-bottom: 1px dotted #d4d4d4;
  margin: 1px 0;
}
</style>