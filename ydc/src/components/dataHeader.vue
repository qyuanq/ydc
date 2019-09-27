<template>
  <div class="ydc-right-head">
    <div class="ydc-right-head-info">
      <dl v-for="tit in titles">
        <a href="#">
          <dt>{{tit.title}}</dt>
          <dd>{{tit.data}}</dd>
        </a>
      </dl>
    </div>
  </div>
</template>

<script>
    export default {
      props:['titles'],
      name: "dataHeader",
      data(){
          return {}
      }
    }
</script>

<style scoped>

</style>
