<template>
  <div>
    <!-- 分页查询 -->
    <el-pagination
      background
      layout="prev, pager, next"
      page-size="5"
      @current-change="handlecurrentchange"
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
      this.axios.get('')
      .then(result=>{})
    }
  }
}
</script>

<style>

</style>