import Vue from 'vue'
import Router from 'vue-router'
import Index from '@/pages/index'
import Release from '@/pages/release'
import Login from '@/pages/login'
import Reg from '@/pages/reg'
import Content from '@/pages/content'
import Related from '@/pages/related'
import Asset from '@/pages/asset'
import Subscribe from '@/pages/subscribe'
import ContentData from '@/pages/contentData'
import StartLevel from '@/pages/startLevel'
import Info from '@/pages/info'
import InfoEdit from '@/pages/infoEdit'
import Account from '@/pages/account'
import Customer from '@/pages/customer'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path:'/index',
      name:'index',
      component:Index
    },
    {
      path:'/release',
      name:'release',
      component:Release
    },
    {
      path:'/login',
      name:'login',
      component:Login
    },
    {
      path:'/reg',
      name:'reg',
      component:Reg
    },
    {
      path:'/content',
      name:'content',
      component:Content
    },
    {
      path:'/related',
      name:'related',
      component:Related
    },
    {
      path:'/asset',
      name:'asset',
      component:Asset
    },
    {
      path:'/subscribe',
      name:'subscribe',
      component:Subscribe
    },
    {
      path:'/contentData',
      name:'contentData',
      component:ContentData
    },
    {
      path:'/startLevel',
      name:'startLevel',
      component:StartLevel
    },
    {
      path:'/info',
      name:'info',
      component:Info
    },
    {
      path:'/InfoEdit',
      name:'InfoEdit',
      component:InfoEdit
    },
    {
      path:'/account',
      name:'account',
      component:Account
    },
    {
      path:'/customer',
      name:'customer',
      component:Customer
    }
  ]
})
