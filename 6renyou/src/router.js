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

Vue.use(Router)

export default new Router({
  routes: [{
      path: '/',
      name: 'Index',
      component: Index
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
      path: '/UserComment',
      name: 'UserComment',
      component: UserComment
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
    },
  ]
})