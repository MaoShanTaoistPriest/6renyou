import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    keys:""
  },
  mutations: {
    updateKeys(state,keys){
      state.keys=keys;
      // console.log(state.keys);
    }
  },
  getters:{
    getKeys(state){//特殊：所有函数都有参数
      return state.keys;
    }
  },
  actions: {
  }
})
