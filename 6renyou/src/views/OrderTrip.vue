<template>
  <div>
    <myheader></myheader>
    <Order-Trip></Order-Trip>
    <my-footer></my-footer>
  </div>
</template>
<script>
import OrderTrip from "../OrderTrip/Order_Trip.vue"
export default {
  components:{
    "Order-Trip":OrderTrip
  }
}
</script>
<style scoped>

</style>