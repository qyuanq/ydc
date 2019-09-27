<template>
  <div class="ydc-release-content">
    <tab-panel @getCur="getCur" :cur="cur" :titles="titles" :cla="cla">
      <asset-pane :cur="cur"></asset-pane>
    </tab-panel>
    </div>
<!--  </div>-->
</template>

<script>
  import pageNation from '@/components/pageNation'
  import tabPanel from '@/components/tabPanel'
  import assetPane from'@/components/assetPane'

    export default {
      name: "asset.vue",
      components:{pageNation,assetPane,tabPanel},
      data(){
        return{
          cur:0,
          titles:['图片素材','视频素材'],
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
