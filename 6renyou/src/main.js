import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
// 引入element-ui组件
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
// 注册element-ui这个组件
Vue.use(ElementUI)
// 引入axios库
import axios from 'axios'
// 配置属性发送ajax请求时保存session信息
axios.defaults.withCredentials = true
// 配置ajax请求基础路径
// 5050是我服务器监听的端口
axios.defaults.baseURL = "http://127.0.0.1:5050/"
// 数据库的基础图片路径
Vue.prototype.$imgUrl = "http://127.0.0.1:5050/"
// 注册axios为vue实例
Vue.prototype.axios = axios
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')