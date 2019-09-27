<template>
  <div>
    <div class="ydc-chart-title ydc-chart-title-top clearfix">
      <div class="fl">
        <h2>{{reads.head}}</h2>
      </div>
      <div class="fr">
        <a href="#">导出Excel</a>
      </div>
    </div>
    <div class="ydc-chart-table">
      <table>
        <thead>
        <tr>
          <th v-for="title in reads.titles">{{title}}</th>
        </tr>
        </thead>
        <tbody>
        <tr v-for="read in reads.dates">
          <td>{{read.name}}</td>
          <td>{{read.content}}</td>
          <td v-if="read.tj">{{read.tj}}</td>
          <td v-if="read.gt">{{read.gt}}</td>
          <td v-if="read.fx">{{read.fx}}</td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
    export default {
      props:['reads'],
        name: "dataTable",
      data(){
          return {
            // reads:{
            //   titles:['日期','新增订阅'],
            //   dates:[
            //          {name:'2018-05-20',content:'68909'},
            //          {name:'2018-05-21',content:'68910'},
            //          {name:'2018-05-22',content:'68911'},
            //          {name:'2018-05-23',content:'68912'},
            //          {name:'2018-05-24',content:'68913'},
            //          {name:'2018-05-25',content:'68914'}
            //         ]
            // }
          }
      }
    }
</script>

<style scoped>

</style>
