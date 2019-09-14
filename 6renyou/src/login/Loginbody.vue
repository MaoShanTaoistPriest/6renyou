<template>
    <div class="loginbody">
        <div class="box">
            <!-- 登录注册框 -->
            <div class="login-block">
                <!-- 此处套用el标签页组件 -->
                <el-tabs v-model="activeName" type="card">
                    <el-tab-pane label="登录" name="first">
                        <ul>
                            <li class="li_uname">
                                <div class="text">用户名</div>
                                <el-input v-model="uname" placeholder="请输入用户名" autofocus @blur="unameBlur"></el-input>
                                <span class="errtip" :class="tip1==1?'active':''">*用户名不能为空</span>
                            </li>
                            <div style="clear:both;"></div>     <!-- 清除浮动 -->
                            <li class="li_upwd">
                                <div class="text">密码</div>
                                <el-input v-model="upwd" placeholder="请输入密码" show-password @blur="upwdBlur"></el-input>
                                <span class="errtip"  :class="tip2==1?'active':''">*密码不能为空</span>
                            </li>
                            <div style="clear:both;"></div> <!-- 清除浮动 -->
                            <li class="allerr">
                                <span class="errtip" :class="tip3==1?'active':''">*用户名或密码不正确</span>
                            </li>
                            <li class="li_login">
                                <el-button type="primary" id="loginbtn" @click="login">登录</el-button>
                            </li>
                        </ul>
                    </el-tab-pane>
                    <el-tab-pane label="注册" name="second">
                        <ul>
                            <li class="li_uname">
                                <div class="text">用户名</div>
                                <el-input v-model="setUname" placeholder="请设置3~12位字母、数字" @blur="setUnameBlur"></el-input>
                                <span class="errtip" :class="tip4==1?'active':''">*用户名格式不正确</span>
                            </li>
                            <div style="clear:both;"></div>     <!-- 清除浮动 -->
                            <li class="li_upwd">
                                <div class="text">密码</div>
                                <el-input v-model="setUpwd" placeholder="请设置3~12位字母、数字" show-password @blur="setUpwdBlur"></el-input>
                                <span class="errtip" :class="tip5==1?'active':''">*密码格式不正确</span>
                            </li>
                            <div style="clear:both;"></div> <!-- 清除浮动 -->
                            <li class="li_upwd">
                                <div class="text">确认密码</div>
                                <el-input v-model="confirmUpwd" placeholder="请确认密码" show-password @blur="confirmUpwdBlur"></el-input>
                                <span class="errtip" :class="tip6==1?'active':''">*确认密码不正确</span>
                            </li>
                            <div style="clear:both;"></div> <!-- 清除浮动 -->
                            <li class="allerr">
                                <span class="errtip" :class="tip7==1?'active':''">*用户名已存在</span>
                            </li>
                            <li class="li_login">
                                <el-button type="primary" id="loginbtn" @click="reg">注册</el-button>
                            </li>
                        </ul>
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
        activeName: 'first',    //默认选中登录标签页面
        uname:"",
        upwd:"",
        setUname:"",        //注册用户名
        setUpwd:"",         //注册密码
        confirmUpwd:"",    //重复密码
        tip1:0,     //用户名不能为空的提示，0默认是隐藏，只有变成1时显示
        tip2:0,     //密码不能为空的提示，0默认是隐藏，只有变成1时显示
        tip3:0,     //用户名或密码不正确，默认隐藏，只有变成1时显示
        tip4:0,     //用户名格式不正确，默认隐藏，只有变成1时显示
        tip5:0,     //密码格式不正确，默认隐藏，只有变成1时显示
        tip6:0,     //确认密码格式不正确，默认隐藏，只有变成1时显示
        tip7:0,     //用户名已存在提示信息，默认隐藏，只有变成1时显示
        name: "",   /*获取客户端的sessionStorage里的用户名*/
      };
    },
    methods: {
        // 以下是注册页面的事件
        // 注册用户名失去焦点时
        setUnameBlur(){
            // 创建正则表达式 (3~12位字母、数字)
            var reg = /^[a-z0-9]{3,12}$/i; 
            if(reg.test(this.setUname)==false){
                this.tip4=1;
            }else{
                this.tip4=0;
            }
        },
        // 注册密码失去焦点时
        setUpwdBlur(){
            // 创建正则表达式 (3~12位字母、数字)
            var reg = /^[a-z0-9]{3,12}$/i; 
            if(reg.test(this.setUpwd)==false){
                this.tip5=1;
            }else{
                this.tip5=0;
            }
        },
        // 确认密码失去焦点时
        confirmUpwdBlur(){
            if(this.confirmUpwd!=this.setUpwd){
                this.tip6=1;    //密码重复错误，显示提示信息
            }else{
                this.tip6=0;
            }
        },
        // 点击注册按钮进行注册，请求axios
        reg(){
            // 只有在用户名和密码,确认密码都正确的情况下才能发送请求
            var reg = /^[a-z0-9]{3,12}$/i; 
            if(reg.test(this.setUname)==false){
                this.tip4=1;
                return;
            }else if(reg.test(this.setUpwd)==false){
                this.tip5=1;
                return;
            }else if(this.confirmUpwd!=this.setUpwd){
                console.log(this.confirmUpwd,this.setUpwd)
                this.tip6=1;
                return;
            }else{
                var url="/userReg";
                var obj={uname:this.setUname,upwd:this.setUpwd};
                this.axios.post(url,this.qs.stringify(obj)).then(res=>{
                    // console.log(res);
                    if(res.data.code==-1){
                        //如果注册失败，说明用户名已存在
                       this.tip7=1;
                    }else{
                        //如果注册成功，弹出注册成功提示框信息,并跳转到首页
                        this.$message({
                            message: '恭喜您，注册成功',
                            type: 'success'
                        });
                        this.$router.push("/"); //跳转到首页
                    }
                })
            }
        },
        // 以下是登录页面的事件
        // 用户名失去焦点时
        unameBlur(){
            // 如果用户名为空，
            if(this.uname==""){
                this.tip1=1;//提示信息显示
            }else{
                this.tip1=0;//提示信息隐藏
            }
        },
        // 密码框失去焦点时
        upwdBlur(){
            // 如果密码为空，
            if(this.upwd==""){
                this.tip2=1;//提示信息显示
            }else{
                this.tip2=0;//提示信息隐藏
            }
        },
        // 点击登录按钮进行登录，请求axios
        login(){
            // 只有在用户名和密码都不为空的情况下才能发送请求
            if(this.uname==""){
                this.tip1=1;
            }else if(this.upwd==""){
                this.tip2=1;
            }else{
                var url="/userLogin";
                var obj={uname:this.uname,upwd:this.upwd};
                this.axios.post(url,this.qs.stringify(obj)).then(res=>{
                    console.log(res);
                    if(res.data.code==-1){
                        //如果登录失败，用户名或密码不正确的提示信息显示
                        this.tip3=1;
                    }else{

                        //如果登录成功，弹出登录成功提示框信息,并跳转到首页
                        this.$message({
                            message: '恭喜您，登录成功',
                            type: 'success'
                        });
                        // this.$router.push("/"); //跳转到首页
                    }
                })
            }
        }
    }
};
</script>
<style>
/* 添加了active属性的显示 ---用户输入框提示信息效果*/
.active{display:block !important;}
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
.box .login-block .el-tabs .el-tabs__header .el-tabs__item{
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
ul,li{list-style:none;display: block;}
ul li{margin:30px 0;}
/* 用户名整体 */
ul li.li_uname{
    margin-top:50px;
}
ul .li_uname div,ul .li_uname .el-input,ul .li_uname span{
    float:left;color:#333;font-size:14px;
    line-height:40px;
}
/* 密码整体 */
ul .li_upwd div,ul .li_upwd .el-input,ul .li_upwd span{
    float:left;color:#333;font-size:14px;
    line-height:40px;
}
/* 用户名和密码输入框 */
ul li .el-input{
    width:200px;
}
/* 输入框左侧文字 */
ul li div.text{
    width:60px;
    text-align: right;
    padding-right: 20px;
}
/* 错误提示  默认隐藏*/
ul li span.errtip{
    color:red;
    margin-left:5px;
    display: none;
}
/* 用户名或密码不正确提示  默认隐藏 */
ul li.allerr span.errtip{
    clear:both;
    margin-left:76px;
    font-size:14px;
    display: none;
}
/* 登录按钮 */
ul .li_login{
    text-align: center;
    margin-left:80px;
    text-align: center;
    margin-top:40px;
}
ul .li_login #loginbtn{
    display:block;
    width:200px;
    line-height:20px;
    color:#fff;
}
</style>

