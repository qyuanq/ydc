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
    </div>
    <dataChart :series="series" :xAxis="xAxis" :legendData="legendData"></dataChart>
    <dataTable :reads="reads"></dataTable>
    <pageNation></pageNation>
  </div>
</template>

<script>
  import dataHeader from '@/components/dataHeader'
  import dataChart from '@/components/dataChart'
  import dataTable from '@/components/dataTable'
  import pageNation from '@/components/pageNation'

    export default {
        name: "contentData",
      components:{dataHeader,dataChart,dataTable,pageNation},
      data(){
          return {
            titles:[{title:'总订阅',data:89076},{title:'昨日新增',data:3890},{title:'昨日推荐',data:79963}],
            xAxis:["阅读","推荐","跟帖","分享","阅读总数"],
            series:[100, 10, 4, 3, 9],
            legendData:'总量',
            reads:{
              head:'数据明细',
              titles:['日期','新增订阅','推荐','跟帖','分享'],
              dates:[
                {name:'2018-05-20',content:'68909',tj:'10000',gt:'20000',fx:'30000'},
                {name:'2018-05-21',content:'68910',tj:'10001',gt:'20001',fx:'30001'},
                {name:'2018-05-22',content:'68911',tj:'10002',gt:'20002',fx:'30002'},
                {name:'2018-05-23',content:'68912',tj:'10003',gt:'20003',fx:'30003'},
                {name:'2018-05-24',content:'68913',tj:'10004',gt:'20004',fx:'30004'},
                {name:'2018-05-25',content:'68914',tj:'10005',gt:'20005',fx:'30005'},
                {name:'2018-05-26',content:'68915',tj:'10006',gt:'20006',fx:'30006'}
                ]
            }
          };
      }
    }
</script>

<style scoped>

</style>
