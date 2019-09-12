<template>
    <div class="loginbody">
        <div class="box">
            <!-- 登录注册框 -->
            <div class="login-block">
                <!-- 此处套用el标签页组件 -->
                <el-tabs v-model="activeName" type="card" @tab-click="handleClick">
                    <el-tab-pane label="登录" name="first">
                        <ul>
                            <li class="li_uname">
                                <div>用户名</div>
                                <el-input></el-input>
                                <span><img src="" alt="">用户名不能为空</span>
                                <!-- <span><img src="" alt="">正确</span> -->
                            </li>
                            <li>
                                <el-button>登录</el-button>
                            </li>
                        </ul>
                    </el-tab-pane>
                    <el-tab-pane label="注册" name="second">
                        注册页面
                    </el-tab-pane>
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
  width: 460px;
  height: 460px;
  background-color: #fff;
  border-radius: 8px;
  position: absolute;
  top: 30px;
  left: 20px;
}
/*修改el标签页组价默认样式*/
.el-tabs .el-tabs__header .el-tabs__item{
    width:229.2px;height:60px;
    line-height:60px;
    background-color:#ebebeb;
    color:#333;
    font-size:20px;
    text-align: center;
    border:0;
    border-top-right-radius:4px;
}
.el-tabs .el-tabs__header .el-tabs__item:first-child{
    border-radius:0;
    border-top-left-radius:6px;
}
/*标签页选中时的样式*/
.el-tabs .el-tabs__header .el-tabs__item.is-active{
    border:0;
    color:#fff;
    background-color:#3eb166;
}
/*表单*/
ul,li{list-style:none;}
ul .li_uname div,ul .li_uname .el-input,ul .li_uname span{float:left;color:#333;font-size:14px;}
ul .li_uname .el-input{
    width:200px;
}
</style>

