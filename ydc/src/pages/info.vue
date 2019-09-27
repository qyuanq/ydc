<template>
  <div class="ydc-release-content">
    <div class="ydc-tabPanel ydc-tabPanel-release">
      <div class="ydc-release-tab-head">
        <ul>
          <li class="hit">帐号设置</li>
        </ul>
      </div>
      <div class="ydc-panes">
        <div class="ydc-pane ydc-pane-clear" style="display:block;">
          <div class="ydc-reg-form-group clearfix">
            <label>帐号名称</label>
            <div class="ydc-reg-form-input">
              <label>{{result['display_name']}}</label>  <!--result.display_name-->
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>帐号类别</label>
            <div class="ydc-reg-form-input">
              <label>{{result['type']}}</label>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>分类</label>
            <div class="ydc-reg-form-input">
              <label>{{result.catalog}}</label>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>帐号图标</label>
            <div class="ydc-reg-form-input">
              <label></label>
              <div class="ydc-reg-form-text ydc-reg-form-user-logo">
                <img src="admin/images/icon/user-logo.png" alt="">
              </div>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>帐号简介</label>
            <div class="ydc-reg-form-input">
              <label>{{result['slogan']}}</label>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>帐号详情</label>
            <div class="ydc-reg-form-input">
              <label>{{result['description']}}</label>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>帐号背景图</label>
            <div class="ydc-reg-form-input">
              <label>默认</label>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>类型</label>
            <div class="ydc-reg-form-input">
              <label>个人</label>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>姓名</label>
            <div class="ydc-reg-form-input">
              <label>{{result['name']}}</label>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>所在城市</label>
            <div class="ydc-reg-form-input">
              <label>{{province_name}}－ {{city_name}}</label>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>身份证号</label>
            <div class="ydc-reg-form-input">
              <label>{{result['identify_number']}}</label>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>身份证照片</label>
            <div class="ydc-reg-form-input">
              <label>已提交</label>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>联系手机</label>
            <div class="ydc-reg-form-input">
              <label>185****2894 已验证</label>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>邮箱</label>
            <div class="ydc-reg-form-input">
              <label>{{result['email']}}</label>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>QQ/微信</label>
            <div class="ydc-reg-form-input">
              <label>{{result['qq_wx']}}</label>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix">
            <label>已有内容发布渠道</label>
            <div class="ydc-reg-form-input">
              <label>{{result['other_channels']}}</label>
            </div>
          </div>
          <div class="ydc-reg-form-group clearfix" style="margin-top:40px;">
            <div class="ydc-reg-form-button" style="margin-left:255px;">
              <a class="btn fl" href="#" @click="submitInfo()">修改</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import {SERVER} from '@/config'

  export default {
        name: "info",
      data(){
            return{
              result:[],
              province_name:'',
              city_name:'',
              token:localStorage.token
            }
      },
      methods:{
        submitInfo(){
          this.$router.push('/infoEdit');
        }
      },
      async created(){
          let token=this.token;
          let res=await fetch(SERVER+'api/get_user/'+token);
          let result=await res.json();
          this.result=result[0];
          this.province_name=result[1];
          this.city_name=result[2];
      }
    }
</script>

<style scoped>

</style>
