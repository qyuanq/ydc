<template>
  <div class="ydc-right-head">
    <div class="ydc-right-head-info">
      <dl>
        <a href="#">
          <dt>总订阅</dt>
          <dd>14</dd>
        </a>
      </dl>
      <dl>
        <a href="#">
          <dt>总阅读</dt>
          <dd>224</dd>
        </a>
      </dl>
      <dl>
        <a href="#">
          <dt>昨日阅读</dt>
          <dd>14</dd>
        </a>
      </dl>
      <dl>
        <a href="#">
          <dt>总数据指数</dt>
          <dd>158</dd>
        </a>
      </dl>
    </div>
    <button class="btn ydc-ne-carousel" @click="$router.push({name:'release',params:{}})">
      <i class="ydc-icon-shu"></i>
      <span>发布</span>
    </button>
  </div>
</template>

<script>
    export default {
        name: "rightHeader"
    }
</script>

<style scoped>
  .ydc-ne-carousel {
    padding: 8px 12px;
    font-size: 14px;
    min-width: 32px;
    background-color: #ff6565;
    border-color: #ff6565;
    color: #fff;
    width: 130px;
    height: 140px;
    margin-left: 20px;
    font-weight: normal;
  }

  .ydc-ne-carousel span {
    font-weight: 300;
  }
</style>
