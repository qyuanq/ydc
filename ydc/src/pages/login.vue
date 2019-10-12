<template>
<!--  <div class="ydc-body-content">-->
<!--    <div class="ydc-body-bj">-->
<!--      <div class="ydc-body-logo">-->
<!--        <a href="login.html">-->
<!--          <img src="../assets/images/icon/ydc-logo.png" alt="">-->
<!--        </a>-->
<!--      </div>-->
<!--      <div class="ydc-body-login">-->
<!--        <h2>登录</h2>-->
<!--        <div class="ydc-body-login-content">-->
          <form :action="SERVER+'api/login'" method="post" ref="formlogin">
            <div class="ydc-body-login-box">
              <div class="ydc-user-img">
                <div class="ydc-user-img-img"><img src="../assets/images/icon/ph.png" alt=""></div>
              </div>
              <div class="ydc-user-border">
                <input type="email" name="email" data-type="email" placeholder="请输入邮箱账号">
              </div>
            </div>
            <div class="ydc-body-login-box">
              <div class="ydc-user-img">
                <div class="ydc-user-img-img"><img src="../assets/images/icon/pad.png" alt=""></div>
              </div>
              <div class="ydc-user-border">
                <input type="password" name="password" data-type="password" placeholder="密码">
              </div>
            </div>
            <div class="ydc-bod-aq">
              <p>为了您的账号安全，请勿在公共电脑登录</p>
            </div>
            <div class="clearfix">
              <div class="fl">
                <input type="checkbox" checked="checked">
                <label>十天内免登录</label>
              </div>
              <div class="fr">
                <a href="#">忘记密码</a>
              </div>
            </div>
            <div class="ydc-body-submit">
              <a href="#" @click="login()">登录</a>
            </div>
            <div class="ydc-login-box">

              <a href="#"  @click="$router.push('/reg')">立即注册</a>
              <span>|</span>
              <a href="javascript:;" target="_blank" @click="$router.push('/customer')">常见问题</a>

            </div>
          </form>

<!--        </div>-->

<!--      </div>-->
<!--    </div>-->
<!--    <div class="ydc-footer-news">-->
<!--      <div class="ydc-footer">-->
<!--        <div>-->
<!--          <p>©2018 一点车版权所有About 公司简介  联系方法  招聘信息  客户服务  隐私政策  广告服务  网站地图  意见反馈  不良信息举报</p>-->
<!--        </div>-->
<!--      </div>-->
<!--    </div>-->
<!--  </div>-->

</template>

<script>
  import {SERVER} from '@/config'
  import {fetch_form} from '@/lib/fetch'

    export default {
        name: "login",
        data(){
            return {
              SERVER
            };
        },
        methods:{
            async login(){
              let json=await fetch_form(this.$refs['formlogin']);
              if(json.err){
                alert(json.msg);
              }else{
                localStorage.token=json.token;//登录后token存放在localStorage中
                alert('登录成功');
                this.$router.push('/index');
              }
            }
        }
    }
</script>

<style scoped>

</style>
