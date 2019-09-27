<template>
  <div class="ydc-entered-box">
    <div class="ydc-release-content">
      <tab-panel :cur="cur" :titles="titles" :cla="cla" @getCur="getCur">
        <start-panel :cur="cur"></start-panel>
      </tab-panel>
      </div>
    </div>

</template>

<script>
  import tabPanel from '@/components/tabPanel'
  import startPanel from '@/components/startPanel'

    export default {
        name: "startLevel",
      components:{startPanel,tabPanel},
      data(){
          return{
            cur:0,
            titles:['车讯号指数','车讯号星级'],
            cla:[{claOne:'ydc-tabPanel ydc-tabPanel-release'},{claTwo:'ydc-release-tab-head'}]
          }
      },
      methods:{
          getCur(val){
            this.cur=val;
          }
      }
    }
</script>

<style scoped>

</style>
