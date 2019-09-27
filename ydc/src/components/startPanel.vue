<template>
  <div class="ydc-panes">
    <div class="ydc-pane" :style="{display:cur==0?'block':'none'}">
      <div class="ydc-right-banner">
        <div class="slideshow-container">
          <a href="https://xihazahuopu.taobao.com/" target="_blank" class="mySlides fade">
            <img src="../assets/images/ad/ad1.jpg" style="width:100%">
          </a>
          <a href="https://weibo.com/525135676" target="_blank" class="mySlides fade">
            <img src="../assets/images/ad/ad2.jpg" style="width:100%">
          </a>
          <a href="http://www.a-ui.cn/" target="_blank" class="mySlides fade">
            <img src="../assets/images/ad/ad3.jpg" style="width:100%">
          </a>
        </div>
      </div>
      <!-- gongGao begin -->
      <div class="ydc-loading-box">
        <div>
          <dataChart :series="series" :xAxis="xAxis" :legendData="legendData"></dataChart>
          <data-table :reads="reads"></data-table>
          <page-nation></page-nation>
        </div>
      </div>
      <!-- gongGao End -->
    </div>
    <div class="ydc-pane" :style="{display:cur==1?'block':'none'}">
      <!-- gongGao begin -->
      <div class="ydc-loading-box">
        <div>
          <data-table :reads="readsJf"></data-table>
          <page-nation></page-nation>
        </div>
      </div>
      <!-- gongGao End -->
    </div>
  </div>
</template>

<script>
  import dataChart from '@/components/dataChart'
  import dataTable from '@/components/dataTable'
  import pageNation from '@/components/pageNation'

    export default {
        name: "startPanel",
      props:['cur'],
      components:{dataChart,dataTable,pageNation},
      data(){
        return{
          xAxis:["健康度","原创度","活跃度","专业度","互动度"],
          legendData:"车讯号总数1295",
          series:[5, 20, 40, 100, 10],
          reads:{
            head:'数据明细',
            titles:["健康度","原创度","活跃度","专业度","互动度"],
            dates:[
              {name:'2018-05-20',content:'68909',tj:'10000',gt:'20000',fx:'30000'},
              {name:'2018-05-21',content:'68910',tj:'10001',gt:'20001',fx:'30001'},
              {name:'2018-05-22',content:'68911',tj:'10002',gt:'20002',fx:'30002'},
              {name:'2018-05-23',content:'68912',tj:'10003',gt:'20003',fx:'30003'},
              {name:'2018-05-24',content:'68913',tj:'10004',gt:'20004',fx:'30004'},
              {name:'2018-05-25',content:'68914',tj:'10005',gt:'20005',fx:'30005'},
              {name:'2018-05-26',content:'68915',tj:'10006',gt:'20006',fx:'30006'}
            ]
          },
          readsJf:{
            head:'积分明细',
            titles:["日期","积分","详情"],
            dates:[
              {name:'2018-05-20',content:'68909',tj:'10000'},
              {name:'2018-05-21',content:'68910',tj:'10001'},
              {name:'2018-05-22',content:'68911',tj:'10002'},
              {name:'2018-05-23',content:'68912',tj:'10003'},
              {name:'2018-05-24',content:'68913',tj:'10004'},
              {name:'2018-05-25',content:'68914',tj:'10005'},
              {name:'2018-05-26',content:'68915',tj:'10006'}
            ]
          }
        }
      }
    }
</script>

<style scoped>

</style>
