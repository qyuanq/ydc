<template>
  <div class="ydc-entered-box">
    <div class="ydc-content-right">
      <dataHeader :titles="titles"></dataHeader>
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
      <div class="ydc-loading-box">
        <dataChart :series="series" :xAxis="xAxis" :legendData="legendData"></dataChart>
        <dataTable :reads="reads"></dataTable>
        <pageNation></pageNation>
      </div>
    </div>
  </div>
</template>

<script>
  import dataHeader from '@/components/dataHeader'
  import dataChart from '@/components/dataChart'
  import dataTable from '@/components/dataTable'
  import pageNation from '@/components/pageNation'

    export default {
      name: "subscribe.vue",
      components:{dataHeader,dataChart,dataTable,pageNation},
      data(){
        return {titles:[{title:'总订阅',data:14},{title:'昨日新增',data:224}],
                xAxis:["阅读","推荐","跟帖","分享","阅读总数"],
                series:[5, 20, 40, 10, 10],
                legendData:'总量',
                reads:{
                  head:'数据明细',
                  titles:['日期','新增订阅'],
                  dates:[
                    {name:'2018-05-20',content:'68909'},
                    {name:'2018-05-21',content:'68910'},
                    {name:'2018-05-22',content:'68911'},
                    {name:'2018-05-23',content:'68912'},
                    {name:'2018-05-24',content:'68913'},
                    {name:'2018-05-25',content:'68914'},
                    {name:'2018-05-26',content:'68915'}
                  ]
              }
        };
     }
    }
</script>0

<style scoped>

</style>
