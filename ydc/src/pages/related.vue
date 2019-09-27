<template>
  <div class="ydc-release-content">
    <div class="ydc-tabPanel ydc-tabPanel-release">
      <div class="ydc-release-tab-head">
        <ul>
          <li class="hit">内容同步</li>
        </ul>
      </div>
      <div class="ydc-panes">
        <div class="ydc-pane" style="display:block;">
          <div class="clearfix">
            <div class="fl ydc-group-sel">
              <select  style="width:160px;">
                <option>请选择同步链接的类型</option>
                <option>RSS或文章列表页</option>
                <option>微信</option>
                <option>头条</option>
              </select>
            </div>
            <div class="fl ydc-group-input" style="width:755px;">
              <input type="text" placeholder="请输入同步链接，请您务必确保对提交的内容源拥有版权" style="width:88%">
              <button class="ydc-group-button">确 定</button>
            </div>
          </div>
        </div>
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
    </div>
  </div>
</template>

<script>
    export default {
        name: "related.vue"
    }
</script>

<style scoped>

</style>
