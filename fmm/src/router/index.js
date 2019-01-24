import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [{
      path: '/',
      name: 'homePage',
      component: () =>
        import('@/views/Homepage.vue')
    },
    {
      path: '/newRecord',
      name: 'newRecord',
      component: () =>
        import('@/views/NewRecord.vue')
    },
    {
      path: '/updateRecord',
      name: 'updateRecord',
      component: () =>
        import('@/views/UpdateRecord.vue')
    },
    {
      path: '/printForm',
      name: 'printForm',
      component: () =>
        import('@/views/PrintForm.vue')
    },
    {
      path: '/searchRecord',
      name: 'searchRecord',
      component: () =>
        import('@/views/SearchRecord.vue')
    },
    // {
    //   path: '/searchInternalRecord',
    //   name: 'searchInternalRecord',
    //   component: () => import('@/views/SearchInternalRecord.vue')
    // },
    {
      path: '/newAssets',
      name: 'newAssets',
      component: () =>
        import('@/views/NewAssets.vue')
    },
    {
      path: '/editAssets',
      name: 'editAssets',
      component: () =>
        import('@/views/EditAssets.vue')
    },
    {
      path: '/addNewUser',
      name: 'addNewUser',
      component: () =>
        import('@/views/AddNewUser.vue')
    },
    {
      path: '/internalUser',
      name: 'internalUser',
      component: () =>
        import('@/views/InternalUser.vue')
    },
    {
      path: '/externalUser',
      name: 'externalUser',
      component: () =>
        import('@/views/ExternalUser.vue')
    },
    {
      path: '/about',
      name: 'about',
      component: () =>
        import('@/views/About.vue')
    }
  ]
})
