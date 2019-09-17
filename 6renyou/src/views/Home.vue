<template>
  <div>
    <myheader></myheader>
    <!-- 嵌套路由此处必须加占位符 -->
    <router-view></router-view>
  </div>
</template>
<script>
// 此处也可以直接用@引入
import Myheader from "@/components/Myheader"
export default {
  components:{
        "myheader":Myheader,
        }
}
</script>
<style scoped>

</style>