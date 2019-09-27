<template>
  <div class="ydc-column ydc-column-2">
    <div class="ydc-menu">
      <ul>
        <li class="ydc-menu-item" v-for="menu in menus">
          <router-link v-if="menu.type=='link'" :to="menu.to"><i :class="['ydc-icon','fl',menu.icon]"></i>{{menu.title}}</router-link>
          <div v-if="menu.type=='sub'">
            <span class="ydc-menu-sub-title">
              <i :class="['ydc-icon','fl',menu.icon]"></i>{{menu.title}}
            </span>
            <ul>
              <li v-for="child in menu.children">
                <router-link :to="child.to">{{child.title}}</router-link>
              </li>
            </ul>
          </div>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
    export default {
        name: "menu",
        data(){
            return {
              menus:[
                {type:'link',to:{name:'index',params:{}},icon:'ydc-icon-home',title:'首页'},
                {type:'link',to:{name:'release'},params:{},icon:'ydc-icon-find',title:'发布'},
                {type:'sub',icon:'ydc-icon-file',title:'管理',children:[
                    {to:{name:'content'},title:'内容管理'},
                    {to:{name:'related'},title:'内容同步'},
                    {to:{name:'asset'},title:'素材中心'}
                 ]},
                {type:'sub',icon:'ydc-icon-record',title:'数据',children:[
                    {to:{name:'subscribe'},title:'订阅数据'},
                    {to:{name:'contentData'},title:'内容数据'},
                    {to:{name:'startLevel'},title:'指数星级'}
                  ]},
                {type:'sub',icon:'ydc-icon-set',title:'设置',children:[
                    {to:{name:'info'},title:'账号信息'},
                    {to:{name:'account'},title:'账号状态'}
                  ]},
                {type:'sub',icon:'ydc-icon-set',title:'客服',children:[
                    {to:{name:'customer'},title:'在线咨询'}
                  ]}
              ]
            }
        }
    }
</script>

<style scoped>


  .ydc-menu {
    min-width: 150px;
    min-height: 1300px;
    height: 100%;
    background: #f4f4f4;
    padding: 33px 0 50px;
    color: #333;
    letter-spacing: 1px;
    border-radius: 2px;
  }

  .ydc-body .menu {
    min-height: 1300px;
    height: 100%;
    background: #f4f4f4;
    border-radius: 8px;
    padding: 33px 0 50px;
    color: #333;
    letter-spacing: 1px;
  }

  .ydc-menu .ydc-menu-item a {
    display: block;
    width: 100%;
    padding: 10px 0 10px 68px;
    line-height: 20px;
    position: relative;
    font-size: 14px;
  }

  .ydc-menu .ydc-menu-item a:hover {
    background: #ff6565;
    color: #fff;
  }

  .ydc-menu .ydc-menu-item .router-link-active {
    background: #ff6565;
    color: #fff;
  }

  .ydc-menu-sub-title {
    padding: 10px 0 10px 70px;
    color: #999;
    border-top: 1px solid #ddd;
    margin-top: 15px;
    position: relative;
    display: inline-block;
    width: 100%;
    line-height: 22px;
    font-size: 14px;
  }
</style>
