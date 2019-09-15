<template>
    <div>
        <loginheader></loginheader>
        <loginbody></loginbody>
    </div>
</template>
<script>
import Loginheader from "../login/Loginheader.vue"
import Loginbody from "../login/Loginbody.vue"
export default {
    components:{
        "loginheader":Loginheader,
        "loginbody":Loginbody
        }
}
</script>
<style scoped>

</style>

