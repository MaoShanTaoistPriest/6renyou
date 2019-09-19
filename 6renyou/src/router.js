import Vue from 'vue'
import Router from 'vue-router'
// 首页的组件的引入
import Index from './views/Index.vue'
// 定制行程的组件的引入
import OrderTrip from './views/OrderTrip.vue'
// 目的地的组件的引入
import Destination from './views/Destination.vue'
// 用户评价的组件的引入
import UserComment from './views/UserComment.vue'
// 度假&别墅的组件的引入
import Villa from './views/Villa.vue'
// 商务考察的组件的引入
import Business from './views/Business.vue'
// 登录注册的组件的引入
import Login from './views/Login.vue'
// 引入嵌套路由父组件Home
import Home from './views/Home.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home,
      // 此处用的是嵌套路由，因为都有公用的组件
      children:[
        {
          path: '/',
          name: 'Index',
          component: Index
        },
        {
          path: '/UserComment',
          name: 'UserComment',
          component: UserComment
        },
        {
          path: '/OrderTrip',
          name: 'OrderTrip',
          component: OrderTrip
        },
        {
          path: '/Destination',
          name: 'Destination',
          component: Destination
        },
        {
          path: '/Villa',
          name: 'Villa',
          component: Villa
        },
        {
          path: '/Business',
          name: 'Business',
          component: Business
        }
      ]
    },
    // 因为登陆页没有公用的页头，所以不需嵌套
    {
      path: '/Login',
      name: 'Login',
      component: Login
    },
  ]
})