<template>
<!-- 度假别墅区 -->
  <div>
    <myheader></myheader>
    <!-- 轮播图 -->
    <villa-banner></villa-banner>
    <!-- 热门海岛、甄选主题 -->
    <villa-filter></villa-filter>
    <villa-wrap></villa-wrap>
    <my-footer></my-footer>
  </div>
</template>
<script>
import villabanner from '../villa/villa-banner'
import villafilter from '../villa/villa-filter'
import villawrap from '../villa/villa-wrap'
export default {
  components:{
    'villa-banner':villabanner,
    'villa-filter':villafilter,
    'villa-wrap':villawrap
  }
}
</script>
<style scoped>

</style>