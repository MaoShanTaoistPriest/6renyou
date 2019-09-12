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
<style scoped>
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
  width: 425px;
  height: 410px;
  background-color: #fff;
  border-radius: 10px;
  position: absolute;
  top: 70px;
  left: 50px;
}
</style>

