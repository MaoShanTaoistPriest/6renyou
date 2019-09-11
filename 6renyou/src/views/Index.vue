<template>
  <div>
    <myheader></myheader>
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
<style scoped>

</style>