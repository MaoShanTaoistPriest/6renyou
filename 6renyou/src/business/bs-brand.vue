<template>
  <!-- 全球网络页面 -->
  <div class="bs-brand-wrp">
    <div class="bs-wrp">
      <!-- 引入标题组件 -->
      <main-count :title1="title1" :title2="title2" ></main-count>
      <!-- 各企业图标logo引入 -->
      <div class="bs-brand-bd">
        <div class="bs-brand-box">
            <!-- {{brandLists}} -->
          <ul class="brand-list">
            <li v-for="(item,index) of brandLists" :key=index>
              <div class="brand-logo" :class="bottoms[index]">
                <img :src="imgUrl+item.img" alt="" class="lazy">
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import mainCount from './main-count'
export default {
  data(){
    return{
      title1:"全球网络",
      title2:"全球成功企业参访，建立交流和启发灵感",
      brandLists:[],
      bottoms:["","","","","","no-right","no-bottom","no-bottom","no-bottom","no-bottom","no-bottom","no-bottom no-right"],
      imgUrl:this.$imgUrl
    }
  },
  methods:{
    onLoad(){
      var img;
      this.axios.get('businessEnterprise',{params:img}).then(result=>{
        // console.log(result.data.data);
        this.brandLists=result.data.data;
        console.log(this.brandLists);
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

.bs-brand-wrp {
  width: 100%;
  background: url("../../public/img/bus/greenbg.jpg") top center no-repeat;
}
.bs-wrp {
  width: 1180px;
  margin: 0 auto;
}
.bs-brand-wrp .main-cont-hd .hd-1, .bs-brand-wrp .main-cont-hd .hd-2 {
    color: #fff;
}
bs-brand-bd {
  padding-bottom: 45px;
}
.bs-brand-box {
  padding: 15px 16px;
  background: #FFFFFF;
  border-radius: 4px;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(18,173,110,.2);
}
/* logo设置 */
.bs-brand-box .brand-list .brand-logo {
  width: 190px;
  height: 90px;
  border-right: 1px solid #e7e7e7;
  border-bottom: 1px solid #e7e7e7;
}
.bs-brand-box .brand-list .no-bottom{
  border-bottom:0 none;
}
.bs-brand-box .brand-list .no-right{
  border-right: 0 none;
}
img.lazy {
  background: url("../../public/img/bus/loading.gif") no-repeat center;
}
.bs-brand-box .brand-list li {
  display: block;
  overflow: hidden;
}
.bs-brand-box .brand-list {
  display:flex;
  padding:0;
  flex-wrap:wrap;
}
</style>