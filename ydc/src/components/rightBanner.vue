<template>
  <el-carousel indicator-position="outside" >
    <el-carousel-item v-for="item,index in imgs" :key="index">
      <img :src="item" class="img-s">
    </el-carousel-item>
  </el-carousel>
</template>

<script>
  import ad1 from '@/assets/images/ad/ad1.jpg'
  import ad2 from '@/assets/images/ad/ad2.jpg'
  import ad3 from '@/assets/images/ad/ad3.jpg'

    export default {
        name: "rightBanner",
        data(){
            return{
              imgs:[ad1,ad2,ad3]
            }
        }
    }
</script>
<style>
  .el-carousel__container{
    height:125px;
  }
  .el-carousel__indicators--outside{
    display:none;
  }
</style>
<style scoped>
  .img-s{
    width:100%;
    max-wiath:100%;
  }
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
