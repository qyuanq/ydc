<template>
  <div>
    <div class="ydc-chart-title clearfix">
      <div class="fl">
        <h2>详细数据</h2>
      </div>
      <div class="fl">
        <span>7天 | 14天  | 30天</span>
      </div>
    </div>
    <div ref="main" style="height:400px; margin-top:20px;"></div>
  </div>
</template>

<script>
  let echarts = require('echarts/lib/echarts')
  require('echarts/lib/chart/bar')
  require('echarts/lib/component/tooltip')
  require('echarts/lib/component/title')
  require('echarts/lib/component/legend')

  export default {
        props:['series','xAxis','legendData'],
        name: "dataChart.vue",
        data(){
          return {
          }
      },
    mounted(){
      this.drawPie();
    },
      methods:{
        drawPie(){
          // 基于准备好的dom，初始化echarts图表
          let myChart = echarts.init(this.$refs['main']);
          // 为echarts对象加载数据
          myChart.setOption({
            color:'orange',
            tooltip: {
              show: true
            },
            legend:{//图例
              show:true,
              data:''
            },
            xAxis : [//x轴
              {
                type : 'category',
                data : this.xAxis
              }
            ],
              yAxis : [//y轴
              {
                type : 'value'
              }
            ],
              series : [
              {
                name:this.legendData,
                type:'bar',//柱形图
                data:this.series//跟xAxis中data数据相对应
              }
            ]
          });
        }
      }
    }
</script>

<style scoped>

</style>
