<template>
    <div class="loginbody">
        <div class="box">
            <!-- 登录注册框 -->
            <div class="login-block">
                <!-- 此处套用el标签页组件 -->
                <el-tabs v-model="activeName" type="card" @tab-click="handleClick">
                    <el-tab-pane label="登录" name="first">登录页面</el-tab-pane>
                    <el-tab-pane label="注册" name="second">注册页面</el-tab-pane>
                </el-tabs>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data() {
      return {
        activeName: 'first'
      };
    },
    methods: {
      handleClick(tab, event) {
        console.log(tab, event);
      }
    }
};
</script>
<style>
.loginbody {
  width: 100%;
  height: 550px;
  background: url(../../public/img/login/bg.jpg);
}
.loginbody .box {
  width: 1180px;
  height: 550px;
  margin: 0 auto;
  position: relative;
}
.loginbody .box .login-block {
  width: 426px;
  height: 410px;
  background-color: #fff;
  border-radius: 8px;
  position: absolute;
  top: 70px;
  left: 50px;
}
/*修改el标签页组价默认样式*/
.el-tabs .el-tabs__header .el-tabs__item{
    width:212px;height:60px;
    line-height:60px;
    background-color:#ebebeb;
    color:#333;
    font-size:20px;
    text-align: center;
    border:0;
    border-top-right-radius:6px;
}
.el-tabs .el-tabs__header .el-tabs__item:first-child{
    border-radius:0;
    border-top-left-radius:6px;
}
.el-tabs .el-tabs__header .el-tabs__item.is-active{
    border:0;
    color:#fff;
    background-color:#3eb166;
}
</style>

