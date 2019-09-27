<template>
  <div class="ydc-right-banner">
    <div class="slideshow-container">
      <a href="https://xihazahuopu.taobao.com/" target="_blank" class="mySlides fade" style="display: block">
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
</template>

<script>
    export default {
        name: "rightBanner"
    }
</script>

<style scoped>
  .ydc-right-banner {
    margin-top: 20px;
    width: 100%;
    height: 122px;
    overflow: hidden;
    border-radius: 3px;
  }

  .mySlides {
    display: none
  }

  /* banner begin */
  .slideshow-container {
    width: 930px;
    position: relative;
    margin: 0 auto;
    border-radius: 14px;
  }

  /* css3 cover */
  .fade {
    -webkit-animation-name: fade;
    -webkit-animation-duration: 1.5s;
    animation-name: fade;
    animation-duration: 1.5s;
    border-radius: 3px;
  }

  @-webkit-keyframes fade {
    from {
      opacity: .4
    }

    to {
      opacity: 1
    }
  }

  @keyframes fade {
    from {
      opacity: .4
    }

    to {
      opacity: 1
    }
  }
</style>
