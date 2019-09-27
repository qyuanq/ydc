<template>
  <div class="ydc-entered-box">
    <div class="ydc-content-right">
      <rightHeader></rightHeader>
      <rightBanner></rightBanner>
      <div class="ydc-loading-box">
        <tabPanel @getCur="getCur" :cur="cur" :titles="titles" :cla="cla">
            <newsPane :cur="cur"></newsPane>
        </tabPanel>
      </div>
    </div>
  </div>
</template>

<script>
  import rightHeader from '@/components/rightHeader'
  import rightBanner from '@/components/rightBanner'
  import tabPanel from '@/components/tabPanel'
  import newsPane from '@/components/newsPane'

    export default {
      name: "index",
      components:{rightHeader,rightBanner,tabPanel,newsPane},
      data(){
        return {
          cur:0,
          titles:['公告栏','一点车咨询'],
          cla:[{claOne:'ydc-tabPanel'},{claTwo:''}]
        }
      },
      methods:{
        getCur(val){
          this.cur=val;
          console.log(this.cur);
        }
      }
    }
</script>

<style scoped>
  .ydc-loading-box {
    margin-top: 20px;
    border: 1px solid #ddd;
    /* border-radius: 53px; */
    padding-bottom: 40px;
  }
</style>
