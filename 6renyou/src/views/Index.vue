<template>
  <div class="aaa">
    <!-- 因为用了嵌套路由的方式，所以不需要写下面这个标签了 -->
    <!-- <myheader></myheader> -->
    <index-lunbo></index-lunbo>
    <my-footer></my-footer>
  </div>
</template>
<script>
import index_lunbo from "../index/index_lunbo.vue"
export default {
    components:{
      "index-lunbo":index_lunbo
    }
}
</script>
<style>
.aaa{
  background:#eee;
}
</style>