<template>
    <div :class="cla[0]['claOne']">
      <div :class="cla[1]['claTwo']">
        <ul>
          <li v-for="title,index in titles" :class="index==curTab?'hit':''" @click="curTab=index" v-model="curTab">{{title}}</li>
        </ul>
      </div>
      <slot></slot>
    </div>
</template>

<script>
  import pageNation from '@/components/pageNation'
    export default {
      name: "tabPanel",
      components:{pageNation},
      props:['cur','titles','cla'],
      data(){
          return {
          curTab:this.cur
          }
      },
      watch:{
        cur(val){
          this.curTab=val;
        },
        curTab(val){
          this.$emit("getCur",val);
        }
      }
    }
</script>

<style scoped>


</style>
