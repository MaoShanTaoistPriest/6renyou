<template>
  <div class="business">
    <myheader></myheader>
    <!-- 商务考察页 -->
    <!-- banner页 -->
    <bs-banner></bs-banner>
    <!-- 优势资源页 -->
    <bs-resource></bs-resource>
    <!-- 考察案例页 -->
    <bs-case></bs-case>
    <!-- 全球资源页 -->
    <bs-brand></bs-brand>
    <bs-foot></bs-foot>
    <my-footer></my-footer>
  </div>
</template>
<script>
import bsfoot from "../business/bs-foot"
import bsbrand from "../business/bs-brand"
import bscase from "../business/bs-case"
import bsresource from "../business/bs-resource"
import bsbanner from "../business/bs-banner"
export default {
  components:{
    'bs-banner':bsbanner,
    'bs-resource':bsresource,
    'bs-case':bscase,
    'bs-brand':bsbrand,
    'bs-foot':bsfoot
  }
}
</script>
<style scoped>
.business{
  background: #eee;
}
a:hover, a > *:hover {
  color: #71b32b;
  text-decoration: underline;
}
</style>