<template>
<!-- content -->
  <div class="villa-wrap">
    <div class="villa-bd">
      <ul class="villa-list">
        <!-- 各个别墅 -->
        <li class="villa-hot rmmd" v-for="(item,index) of villas" :key=index>
          <a href="" class="villa-link">
            <!-- 左边图片 -->
            <div class="villa-hot-pic">
              <img :src="imgUrl+item.bigImg" alt="" class="lazy" style="display:inline;">
            </div>
            <!-- 右边别墅信息 -->
            <div class="villa-hot-inf">
              <div class="villa-info-box">
                <h2 class="villa-tt">
                  <strong class="tt1">{{item.title}}</strong>
                  <span class="tt2">{{item.subTitle}}</span>    
                </h2>
                <p class="villa-eng">{{item.Vname}}</p>
                <p class="villa-addr">{{item.place}}</p>
              </div>
              <div class="manager-box">
                <!-- 别墅经理的姓名 -->
                <p class="manager-name">别墅经理：{{item.manager}}</p>
                <!-- 别墅经理的评价 -->
                <div class="manager-msg">
                  <span class="manager-pic">
                      <img original="/uploads/other/201801/5a5da2703ae76.jpg" class="lazy" :src="imgUrl+item.managerImg" width="40" height="40" style="display: inline;">
                  </span>
                  <p class="manager-text">“ {{item.introduce}} ”</p>
                </div>
              </div>
              <!-- 价格 -->
              <div class="v-sale-box">
                <p class="v-price"><i>¥</i><span>{{item.price}}</span>/晚起</p>
                <span class="go-detail">查看详情</span>
              </div>
            </div>
          </a>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return{
      villas:[],
      imgUrl:this.$imgUrl
    }
  },
  methods:{
    onLoad(){
     this.axios.get("villaVilla").then(result=>{
       console.log(result.data.data);
       this.villas=result.data.data;
     })
    }
  },
  created(){
    this.onLoad();
  }
}
</script>

<style>
.villa-wrap {
  width: 100%;
  background: #f0c092 url("../../public/img/Villa/villa-bg.jpg") top center no-repeat;
  padding-bottom: 30px;
}
.villa-bd {
  width: 1180px;
  margin: 0 auto;
  padding-top: 30px;
}
.villa-list {
  width: 100%;
  overflow: hidden;
  padding: 0;
}
.villa-hot {
  display: block;
  width: 1180px;
  height: 300px;
  background: url("../../public/img/Villa/shadow_villa.png") center bottom no-repeat;
  padding-bottom: 13px;
  margin-bottom: 20px;
}
.villa-link {
  display: flex;
  justify-content: space-between;
  background-color: #FFF;
  width: 1180px;
  height: 300px;
  overflow: hidden;
  zoom: 1;
  border-radius: 5px;
  position: relative;
  cursor: pointer;
}
/* 左边图片设置 */
.villa-hot-pic {
  width: 760px;
  height: 300px;
  overflow: hidden;
}
/* 右边别墅信息设置 */
.villa-hot-inf {
  width: 390px;
  height: 300px;
  overflow: hidden;
  position: relative;
}
.villa-info-box {
  padding-right: 30px;
}
.rmmd .villa-tt {
  background: url("../../public/img/Villa/villa-icons.png") right -210px no-repeat;
  padding-right: 20px;
}
.villa-tt {
  display: inline-block;
  margin: 20px 0 0 0;
  line-height: 24px;
  max-width: 340px;
  overflow: hidden;
  white-space: nowrap;
  color: #333;
  text-overflow: ellipsis;
  word-wrap: normal;
}
.villa-tt .tt1 {
  font-size: 22px;
  padding-right: 5px;
}
strong {
  font-weight: 700;
}
.villa-tt .tt2 {
  font-size: 18px;
}
/* 英文字体的设置 */
.villa-eng {
  font: 12px/18px Arial, Helvetica, sans-serif;
  color: #454545;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  margin-bottom: 5px;
  word-wrap: normal;
}
.villa-addr {
  color: #a3a3a3;
  background: url("../../public/img/Villa/Villa-ui.png") 0 -32px no-repeat;
  padding-left: 18px;
  line-height: 18px;
  margin-bottom: 5px;
  max-height: 34px;
  overflow: hidden;
}
/* 经理设置*/
.manager-box {
  background-color: #f3f3f3;
  padding: 8px 15px 10px 15px;
  height: 66px;
  position: absolute;
  right: 0;
  top: 120px;
}
/* 经理姓名设置 */
.manager-box .manager-name {
  font-size: 14px;
  color: #666;
  margin-bottom: 5px;
}
.manager-box .manager-msg {
  width: 360px;
  overflow: hidden;
  zoom: 1;
  display: flex;
}
/* 经理照片设置 */
.manager-box .manager-msg .manager-pic {
  display: block;
  width: 40px;
  height: 40px;
  margin-right: 15px;
}
.manager-box .manager-msg .manager-pic img {
  width: 100%;
  height: 100%;
}
.manager-box .manager-msg .manager-text {
  width: 300px;
  height: 36px;
  line-height: 18px;
  color: #999;
  overflow: hidden;
  padding-top: 3px;
}
/* 价格设置 */
.v-sale-box {
  width: 390px;
  position: absolute;
  right: 0;
  bottom: 24px;
  display: flex;
  justify-content: space-between;
}
.v-price {
  font-size: 14px;
  color: #333;
  margin:0;
}
.go-detail {
  text-indent: -9999px;
  display: block;
  width: 138px;
  height: 44px;
  background: url("../../public/img/Villa/villa-icons.png") 0 -86px no-repeat;
}
.v-price i {
  font-size: 22px;
}
.v-price span {
  font-size: 36px;
  font-family: Arial, Helvetica, sans-serif;
  line-height: 46px;
  font-weight: 700;
}
</style>