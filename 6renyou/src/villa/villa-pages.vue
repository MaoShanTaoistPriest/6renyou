<template>
  <div class="villa-pages">
    <!-- 分页查询 -->
    <el-pagination
      background
      layout="prev, pager, next"
      page-size="5"
      @current-change="handlecurrentchange"
      :current-page.sync="currentPage"
      :total="total">
    </el-pagination>
  </div>
</template>

<script>
export default {
  props:{
    total:{default:""}
  },
  data(){
    return{
      pno: 1, //页码数
      currentPage: 1, //当前页默认第一页
      clength: 0//用户评价总数先设置一个默认值
    }
  },
  methods:{
    handlecurrentchange(){
      // this.axios.get('')
      // .then(result=>{})
      console.log(1);
    }
  }
  // created(){
  //   this.handlecurrentchange();
  // }
}
</script>

<style>
.villa-pages .el-pagination.is-background .el-pager li:not(.disabled).active {
    background-color: #2ba165!important;
    color: #FFF;
    border: 1px solid #2ba165!important;
}
</style>