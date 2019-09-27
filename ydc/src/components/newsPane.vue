<template>
  <div class="ydc-panes">
    <div class="ydc-pane" v-for="data,index in datas" :style="{display:index==cur?'block':'none'}">
      <ol class="ydc-pane-list">
        <li v-for="news in data.newss">
          <a :href="news.href" target="_blank">{{news.title}}<i v-if="news.isNew">new</i></a>
          <span>{{news.time}}</span>
        </li>
      </ol>
      <pageNation></pageNation>
    </div>
  </div>
</template>

<script>
  import pageNation from '@/components/pageNation'
    export default {
      name: "newsPane",
     props:['cur'],
      components:{pageNation},
      data(){
          return{
            datas:[
              {newss:[
                  {id:2,title:'一点车点讯号平台关于封禁违规账号的通知（4月13日-4月20日）',isNew:true,time:'1561368282866',href:'http://www.bing.com'},
                  {id:3,title:'4月特色MCN | 点讯号MCN颁发月度特色奖项：决定就是你了！',isNew:false,time:'1561348282866',href:'http://www.bing.com'},
                  {id:5,title:'一点车点讯号平台关于封禁违规账号的通知（4月13日-4月20日）',isNew:true,time:'1561358282866',href:'http://www.bing.com'},
                  {id:8,title:'一点车点讯号平台关于封禁违规账号的通知（4月13日-4月20日）',isNew:true,time:'1561388282866',href:'http://www.bing.com'}
                ]},
              {
                newss:[
                  {id:2,title:'大号“思域”全新十代雅阁，革新换代后的全新十代雅阁到底如何！',isNew:true,time:'1561368282866',href:'http://www.bing.com'},
                  {id:3,title:'在国内为什么丰田阿尔法加价那么厉害还是会有人买？',isNew:false,time:'1561348282866',href:'http://www.bing.com'},
                  {id:5,title:'一点车点讯号平台关于封禁违规账号的通知（4月13日-4月20日）',isNew:true,time:'1561358282866',href:'http://www.bing.com'},
                  {id:8,title:'一点车点讯号平台关于封禁违规账号的通知（4月13日-4月20日）',isNew:true,time:'1561388282866',href:'http://www.bing.com'}]
              }
            ]
          }
      }
    }
</script>

<style scoped>

</style>
