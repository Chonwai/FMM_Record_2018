import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Homepage',
      component: () => import('@/views/Homepage.vue')
    },
    {
      path: '/newRecord',
      name: 'newRecord',
      component: () => import('@/views/NewRecord.vue')
    }
  ]
})
