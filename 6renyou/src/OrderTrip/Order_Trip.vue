<template>
<!-- height: 100%;
    width: 1120px;
    min-width: 1120px;
    margin: 0 auto;
    position: relative; -->
  <div class="OrderTrip-container-box">
    <div class="ctz-wrp">
      <div class="ctz-area">
        <div class="ctz-box">
          <h3>定制旅行</h3>
          <h2>其实可以很简单</h2>
          <div class="err-tips">
            <div class="dis-box">
              <em class="icon-err"></em>
              <span v-show="false">请输入手机号码</span>
            </div>
          </div>
          <div class="ctz-form">
            <ul>
              <li class="ctz-form-item">
                <div class="ctz-form-box">
                  <i class="icon-ctz1"></i>
                  <label for class="labelbox">
                    <!-- <input
                      type="text"
                      class="ipt-dest"
                      :placeholder="touchipt==0||touchipt==2?'请填写您想去的目的地':''"
                      @focus="touchipt1"
                      @blur="touchipt3"
                    />-->
                    <el-row class="demo-autocomplete">
                      <el-col :span="24">
                        <el-autocomplete
                          class="inline-input ipt-dest"
                          v-model="state2"
                          :fetch-suggestions="querySearch"
                          :placeholder="touchipt==0||touchipt==2?'请填写您想去的目的地':''"
                          @focus="touchipt1"
                          @blur="touchipt3"
                          :trigger-on-focus="false"
                          @select="handleSelect"
                        ></el-autocomplete>
                      </el-col>
                    </el-row>
                  </label>
                </div>
              </li>
              <li class="ctz-form-item">
                <div class="ctz-form-box">
                  <i class="icon-ctz2"></i>
                  <label for class="labelbox">
                    <input
                      type="text"
                      class="ipt-dest"
                      :placeholder="touchipt==1||touchipt==2?'请填写您的手机号码':''"
                      @focus="touchipt2"
                      @blur="touchipt3"
                    />
                  </label>
                </div>
              </li>
            </ul>
            <div>
              <a href class="helpmeDZXC">请帮我定制行程</a>
            </div>
            <p>
              <a href>法律声明</a>
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
  data() {
    return {
      touchipt: 2,
      restaurants: [],
      state2: ""
    };
  },
  methods: {
    touchipt1() {
      this.touchipt = 1;
    },
    touchipt2() {
      this.touchipt = 0;
    },
    touchipt3() {
      this.touchipt = 2;
    },
    querySearch(queryString, cb) {
      var restaurants = this.restaurants;
      var results = queryString
        ? restaurants.filter(this.createFilter(queryString))
        : restaurants;
      // 调用 callback 返回建议列表的数据
      cb(results);
    },
    createFilter(queryString) {
      return restaurant => {
        return (
          restaurant.value.toLowerCase().indexOf(queryString.toLowerCase()) ===
          0
        );
      };
    },
    loadAll() {
      return [
        { value: "美国", address: "长宁区新渔路144号" },
        { value: "加拿大", address: "上海市长宁区淞虹路661号" },
        {
          value: "阿根廷",
          address: "上海市普陀区真北路988号创邑金沙谷6号楼113"
        },
        { value: "巴西", address: "天山西路438号" },
        {
          value: "智利",
          address: "上海市长宁区金钟路968号1幢18号楼一层商铺18-101"
        },
        { value: "秘鲁", address: "上海市长宁区金钟路633号" },
        { value: "古巴", address: "上海市嘉定区曹安公路曹安路1685号" },
        { value: "墨西哥", address: "上海市普陀区同普路1435号" },
        { value: "南极", address: "上海市北翟路1444弄81号B幢-107" },
        { value: "玻利维亚", address: "上海市嘉定区新郁路817号" },
        { value: "厄尔瓜多", address: "嘉定区曹安路1611号" },
        { value: "阿布扎比", address: "嘉定区曹安公路2383弄55号" },
        {
          value: "迪拜",
          address: "嘉定区江桥镇曹安公路2409号1F，2383弄62号1F"
        },
        { value: "以色列", address: "上海长宁区金钟路968号9号楼地下一层" },
        { value: "南非", address: "上海市长宁区天山西路119号" },
        { value: "埃及", address: "上海市长宁区仙霞西路" },
        { value: "摩洛哥", address: "上海市长宁区天山西路567号1层R117号店铺" },
        { value: "肯尼亚", address: "上海市普陀区光复西路丹巴路28弄6号楼819" },
        {
          value: "纳米比亚",
          address: "上海市长宁区仙霞西路88号第一层G05-F01-1-306"
        },
        { value: "坦桑尼亚", address: "上海市普陀区棕榈路" },
        { value: "英国", address: "元丰天山花园(东门) 双流路267号" },
        { value: "法国", address: "上海市长宁区天山西路" },
        { value: "瑞士", address: "上海市长宁区通协路" },
        {
          value: "荷兰",
          address: "上海市长宁区新泾镇金钟路999号2幢（B幢）第01层第1-02A单元"
        },
        { value: "德国", address: "长宁区仙霞西路88号1305室" },
        {
          value: "希腊",
          address:
            "上海市普陀区真北路818号近铁城市广场北区地下二楼N-B2-O2-C商铺"
        },
        { value: "意大利", address: "普陀区金沙江路2239号金沙和美广场B1-10-6" },
        { value: "西班牙", address: "上海市长宁区威宁路天山路341号" },
        { value: "葡萄牙", address: "上海市嘉定区丰庄路240号" },
        { value: "捷克", address: "长宁区新渔路144号" },
        { value: "奥地利", address: "长宁区淞虹路148号" },
        { value: "匈牙利", address: "上海市普陀区老真北路160号" },
        { value: "挪威", address: "上海市长宁区金钟路968号15楼15-105室" },
        { value: "丹麦", address: "剑河路443-1" },
        { value: "芬兰", address: "长宁区北新泾街道天山西路490-1号" },
        {
          value: "冰岛",
          address: "上海市长宁区金钟路968号9号楼地下一层9-83室"
        },
        { value: "瑞典", address: "上海市金钟路633号地下一层甲部" },
        { value: "俄罗斯", address: "长宁区仙霞西路299弄3号101B" },
        { value: "泰国", address: "天山西路430号" },
        { value: "新加坡", address: "上海市长宁区天山西路" },
        { value: "越南", address: "上海市长宁区金钟路968号15楼15-105室" },
        { value: "日本", address: "天山西路428号" },
        { value: "柬埔寨", address: "上海市长宁区协和路福泉路255弄57-73号" },
        {
          value: "斯里兰卡",
          address: "上海市长宁区北新泾街道金钟路180号1层01号摊位"
        },
        { value: "缅甸", address: "上海市长宁区天山西路492号" },
        { value: "伊朗", address: "长宁区仙霞西路88号百联2楼" },
        { value: "印度", address: "天山西路389号" },
        { value: "土耳其", address: "普陀区金沙江路1699号鑫乐惠美食广场A13" },
        { value: "尼泊尔", address: "长宁区北新泾街道天山西路490-1号" },
        {
          value: "马来西亚",
          address: "上海市长宁区金钟路968号9号楼地下一层9-83室"
        },
        { value: "老挝", address: "上海市金钟路633号地下一层甲部" },
        { value: "澳大利亚", address: "长宁区仙霞西路299弄3号101B" },
        { value: "新西兰", address: "天山西路430号" },
        { value: "巴厘岛", address: "上海市长宁区天山西路" },
        { value: "普吉岛", address: "上海市长宁区金钟路968号15楼15-105室" },
        { value: "苏梅岛", address: "天山西路428号" },
        { value: "马尔代夫", address: "上海市长宁区协和路福泉路255弄57-73号" },
        {
          value: "斐济",
          address: "上海市长宁区北新泾街道金钟路180号1层01号摊位"
        },
        { value: "毛里求斯", address: "上海市长宁区天山西路492号" },
        { value: "塞舌尔", address: "长宁区仙霞西路88号百联2楼" },
        { value: "塞班岛", address: "天山西路389号" },
        { value: "大溪地", address: "普陀区金沙江路1699号鑫乐惠美食广场A13" },
        { value: "关岛", address: "普陀区金沙江路1699号鑫乐惠美食广场A13" }
      ];
    },
    handleSelect(item) {
      console.log(item);
    }
  },
  mounted() {
    this.restaurants = this.loadAll();
  }
};
</script>
<style>
.OrderTrip-container-box > .ctz-wrp {
  width: 400px;
  min-width: 400px;
  position: absolute;
  left: 50%;
  top: 68px;
  margin-left: -560px;
  height: 720px;
  z-index: 1;
}
.OrderTrip-container-box > .ctz-wrp > .ctz-area {
  width: 340px;
  height: 400px;
  padding: 30px;
  background: url("../../public/img/OrderTrip/opacity_40.png") repeat;
  top: 68px;
  border-radius: 0 0 10px 10px;
}
.OrderTrip-container-box > .ctz-wrp > .ctz-area > .ctz-box {
  text-align: center;
  color: #fff;
}
.OrderTrip-container-box > .ctz-wrp > .ctz-area > .ctz-box h3 {
  font-size: 28px;
  font-weight: bold;
  padding-top: 40px;
  color: #3eb166;
  margin: 0;
  font-family: "Microsoft Yahei";
}
.OrderTrip-container-box > .ctz-wrp > .ctz-area > .ctz-box h2 {
  font-size: 24px;
  font-weight: normal;
  margin-bottom: 10px;
  color: #ffffff;
  padding: 0;
  margin-top: 0;
  font-family: "Microsoft Yahei";
}
.OrderTrip-container-box
  > .ctz-wrp
  > .ctz-area
  > .ctz-box
  > .err-tips
  > .dis-box {
  display: block;
}
.OrderTrip-container-box
  > .ctz-wrp
  > .ctz-area
  > .ctz-box
  > .err-tips
  > .dis-box
  > .icon-err {
  font-size: 100%;
  font-style: normal;
  font-weight: normal;
}
.OrderTrip-container-box
  > .ctz-wrp
  > .ctz-area
  > .ctz-box
  > .err-tips
  > .dis-box
  span {
  vertical-align: middle;
}
.OrderTrip-container-box > .ctz-wrp > .ctz-area > .ctz-box > .ctz-form {
  padding-top: 20px;
}
.OrderTrip-container-box > .ctz-wrp > .ctz-area > .ctz-box > .ctz-form ul {
  list-style: none;
  padding: 0;
}
.OrderTrip-container-box
  > .ctz-wrp
  > .ctz-area
  > .ctz-box
  > .ctz-form
  ul
  > .ctz-form-item {
  padding-bottom: 20px;
}
.OrderTrip-container-box
  > .ctz-wrp
  > .ctz-area
  > .ctz-box
  > .ctz-form
  ul
  > .ctz-form-item
  > .ctz-form-box {
  border-radius: 4px;
  position: relative;
  height: 48px;
  width: 270px;
  padding: 0 30px 0 40px;
  background-color: #fff;
}
.OrderTrip-container-box
  > .ctz-wrp
  > .ctz-area
  > .ctz-box
  > .ctz-form
  ul
  > .ctz-form-item
  > .ctz-form-box
  > .icon-ctz1 {
  display: inline-block;
  width: 26px;
  height: 26px;
  position: absolute;
  left: 7px;
  top: 11px;
  background: url("../../public/img/OrderTrip/i-citz-pin.png") center center
    no-repeat;
}

.OrderTrip-container-box
  > .ctz-wrp
  > .ctz-area
  > .ctz-box
  > .ctz-form
  ul
  > .ctz-form-item
  > .ctz-form-box
  > .icon-ctz2 {
  display: inline-block;
  width: 26px;
  height: 26px;
  position: absolute;
  left: 7px;
  top: 11px;
  background: url("../../public/img/OrderTrip/i-citz-phone.png") center center
    no-repeat;
}
.OrderTrip-container-box
  > .ctz-wrp
  > .ctz-area
  > .ctz-box
  > .ctz-form
  ul
  > .ctz-form-item
  > .ctz-form-box
  > .labelbox {
  display: block;
  padding: 14px 0;
  height: 20px;
  vertical-align: middle;
}
.OrderTrip-container-box
  > .ctz-wrp
  > .ctz-area
  > .ctz-box
  > .ctz-form
  ul
  > .ctz-form-item
  > .ctz-form-box
  > .labelbox
   .ipt-dest {
  border: 0 none;
  height: 20px;
  line-height: 20px;
  width: 100%;
  font-family: "Microsoft Yahei";
  font-size: 15px;
  color: #333;
  letter-spacing: normal;
  outline: none;
}
.OrderTrip-container-box > .ctz-wrp > .ctz-area > .ctz-box > .ctz-form div {
  padding-top: 10px;
  text-align: center;
}
.OrderTrip-container-box > .ctz-wrp > .ctz-area > .ctz-box > .ctz-form div a {
  display: block;
  width: 100%;
  height: 48px;
  border: 0 none;
  background-color: #059659;
  font-size: 15px;
  color: #fff;
  border-radius: 4px;
  line-height: 48px;
  font-family: "Microsoft Yahei";
}
.OrderTrip-container-box
  > .ctz-wrp
  > .ctz-area
  > .ctz-box
  > .ctz-form
  div
  a:hover {
  color: #71b32b;
}
.OrderTrip-container-box > .ctz-wrp > .ctz-area > .ctz-box > .ctz-form p {
  margin: 0 auto;
}
.OrderTrip-container-box > .ctz-wrp > .ctz-area > .ctz-box > .ctz-form p a {
  color: #bababa;
  text-decoration: none;
}
/* ---------------------------------------- */
.OrderTrip-container-box > .customized-wrp {
  height: 889px;
  font-family: "Microsoft Yahei";
}
.OrderTrip-container-box > .customized-wrp > .section {
  display: table;
  width: 100%;
  height: 889px;
  background: url("../../public/img/OrderTrip/ctz-bg1.jpg") 50%;
}
.OrderTrip-container-box > .customized-wrp > .section > .fp-tableCell {
  display: table-cell;
  vertical-align: middle;
  width: 100%;
}
.OrderTrip-container-box
  > .customized-wrp
  > .section
  > .fp-tableCell
  > .section-inner {
  height: 100%;
  width: 1120px;
  min-width: 1120px;
  margin: 0 auto;
  position: relative;
}
.OrderTrip-container-box
  > .customized-wrp
  > .section
  > .fp-tableCell
  > .section-inner
  > .ctz-process {
  display: block;
  width: 340px;
  height: 340px;
  position: absolute;
  top: 50px;
  right: 50px;
  background: url("../../public/img/OrderTrip/ctz-liucheng.png") no-repeat;
}
/* 更改 */
.OrderTrip-container-box > .ctz-wrp > .ctz-area > .ctz-box > .ctz-form div{
  padding:0;
}
.OrderTrip-container-box > .ctz-wrp > .ctz-area > .ctz-box > .ctz-form .el-input__inner {
    -webkit-appearance: none;
    background-color: #FFF;
    background-image: none;
    border-radius: 4px;
    /* border: 1px solid #DCDFE6; */
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    color: #606266;
    display: inline-block;
    font-size: inherit;
    height: 22px;
    line-height: 20px;
    outline: 0;
    /* padding: 0 15px; */
    -webkit-transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    transition: border-color .2s cubic-bezier(.645,.045,.355,1);
    width: 100%;
    border: none;
    padding: 0;
    }
.OrderTrip-container-box > .ctz-wrp > .ctz-area > .ctz-box > .ctz-form input::placeholder{
    font-size: 15px;
    color: #333;
}
</style>