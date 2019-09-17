<template>
<!-- 度假别墅区 -->
  <div>
    <myheader></myheader>
    <!-- 轮播图 -->
    <villa-banner></villa-banner>
    <!-- 热门海岛、甄选主题 -->
    <villa-filter></villa-filter>
    <my-footer></my-footer>
  </div>
</template>
<script>
import villabanner from '../villa/villa-banner'
import villafilter from '../villa/villa-filter'
export default {
  components:{
    'villa-banner':villabanner,
    'villa-filter':villafilter
  }
}
</script>
<style scoped>

</style>