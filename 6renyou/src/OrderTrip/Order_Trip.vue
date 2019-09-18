<template>
    <div class="OrderTrip-container-box" >
        <div class="ctz-wrp">
            <div class="ctz-area">
                <div class="ctz-box">
                    <h3>定制旅行</h3>
                    <h2>其实可以很简单</h2>
                    <div class="err-tips">
                        <div class="dis-box">
                            <em class="icon-err"></em>
                            <span v-show="flase">请输入手机号码</span>
                        </div>
                    </div>
                    <div class="ctz-form">
                        <ul>
                            <li class="ctz-form-item">
                                <div class="ctz-form-box">
                                    <i class="icon-ctz1"></i>
                                    <label for="" class="labelbox">
                                        <input type="text" class="ipt-dest" :placeholder="touchipt==0||touchipt==2?'请填写您想去的目的地':''" @focus="touchipt1" @blur="touchipt3">
                                    </label>
                                </div>
                            </li>
                            <li class="ctz-form-item">
                                <div class="ctz-form-box">
                                    <i class="icon-ctz2"></i>
                                    <label for="" class="labelbox">
                                        <input type="text" class="ipt-dest" :placeholder="touchipt==1||touchipt==2?'请填写您的手机号码':''" @focus="touchipt2" @blur="touchipt3">
                                    </label>
                                </div>
                            </li>
                        </ul>
                        <div>
                            <a href="" class="helpmeDZXC">帮我定制行程</a>
                        </div>
                        <p>
                            <a href="">法律声明</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="customized-wrp">
            <div class="section">
                <div class="fp-tableCell">
                    <div class="section-inner">
                        <span class="ctz-process"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            touchipt:2
        }
    },methods:{
        touchipt1(){
            this.touchipt=1;
        },
        touchipt2(){
            this.touchipt=0;
        },touchipt3(){
            this.touchipt=2;
        }
    }
}
</script>
<style>
.OrderTrip-container-box>.ctz-wrp{
    width: 400px;
    min-width: 400px;
    position: absolute;
    left: 50%;
    top: 68px;
    margin-left: -560px;
    height: 720px;
    z-index: 1;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area{
    width: 340px;
    height: 400px;
    padding: 30px;
    background: url("../../public/img/OrderTrip/opacity_40.png") repeat;
    top: 68px;
    border-radius: 0 0 10px 10px;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box{
    text-align: center;
    color: #FFF;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box h3{
    font-size: 28px;
    font-weight: bold;
    padding-top: 40px;
    color: #3eb166;
    margin:0;
    font-family: 'Microsoft Yahei';
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box h2{
    font-size: 24px;
    font-weight: normal;
    margin-bottom: 10px;
    color: #ffffff;
    padding:0;
    margin-top:0;
    font-family: 'Microsoft Yahei';
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.err-tips>.dis-box{
    display:block;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.err-tips>.dis-box>.icon-err{
    font-size: 100%;
    font-style: normal;
    font-weight: normal;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.err-tips>.dis-box span{
    vertical-align: middle;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.ctz-form{
    padding-top: 20px;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.ctz-form ul{
    list-style: none;
    padding:0;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.ctz-form ul>.ctz-form-item{
    padding-bottom: 20px;
    
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.ctz-form ul>.ctz-form-item>.ctz-form-box{
    border-radius: 4px;
    position: relative;
    height: 48px;
    width:270px;
    padding: 0 30px 0 40px;
    background-color: #fff;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.ctz-form ul>.ctz-form-item>.ctz-form-box>.icon-ctz1{
    display: inline-block;
    width: 26px;
    height: 26px;
    position: absolute;
    left: 7px;
    top: 11px;
    background: url("../../public/img/OrderTrip/i-citz-pin.png") center center no-repeat;
}

.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.ctz-form ul>.ctz-form-item>.ctz-form-box>.icon-ctz2{
    display: inline-block;
    width: 26px;
    height: 26px;
    position: absolute;
    left: 7px;
    top: 11px;
    background: url("../../public/img/OrderTrip/i-citz-phone.png") center center no-repeat;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.ctz-form ul>.ctz-form-item>.ctz-form-box>.labelbox{
    display: block;
    padding: 14px 0;
    height: 20px;
    vertical-align: middle;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.ctz-form ul>.ctz-form-item>.ctz-form-box>.labelbox>.ipt-dest{
    border: 0 none;
    height: 20px;
    line-height: 20px;
    width: 100%;
    font-family: 'Microsoft Yahei';
    font-size: 15px;
    color: #333;
    letter-spacing: normal;
    outline: none;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.ctz-form div{
    padding-top: 10px;
    text-align: center;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.ctz-form div a{
    display: block;
    width: 100%;
    height: 48px;
    border: 0 none;
    background-color: #059659;
    font-size: 15px;
    color: #fff;
    border-radius: 4px;
    line-height:48px;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.ctz-form div a:hover{
    color:#71b32b;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.ctz-form p{
    margin: 0 auto;
}
.OrderTrip-container-box>.ctz-wrp>.ctz-area>.ctz-box>.ctz-form p a{
    color: #bababa;
    text-decoration: none;
}
/* ---------------------------------------- */
.OrderTrip-container-box>.customized-wrp{
    height:889px;
    font-family: 'Microsoft Yahei';
}
.OrderTrip-container-box>.customized-wrp>.section{
    display: table;
    width: 100%;
    height:889px;
    background: url("../../public/img/OrderTrip/ctz-bg1.jpg") 50%;
}
.OrderTrip-container-box>.customized-wrp>.section>.fp-tableCell{
    display: table-cell;
    vertical-align: middle;
    width: 100%;
}
.OrderTrip-container-box>.customized-wrp>.section>.fp-tableCell>.session-inner{
    height: 100%;
    width: 1120px;
    min-width: 1120px;
    margin: 0 auto;
    position: relative;
}
.OrderTrip-container-box>.customized-wrp>.section>.fp-tableCell>.section-inner>.ctz-process{
    display: block;
    width: 340px;
    height: 340px;
    position: absolute;
    top: 124px;
    right: 438px;
    background: url("../../public/img/OrderTrip/ctz-liucheng.png") no-repeat;
}
</style>