<template>
  <div class="ydc-release-content">
    <div class="ydc-tabPanel ydc-tabPanel-release">
      <div class="ydc-release-tab-head">
        <ul>
          <li class="hit">帐号设置</li>
        </ul>
      </div>
      <div class="ydc-panes">
        <form :action="SERVER+'api/edit'" method="post" enctype="multipart/form-data" ref="formEdit">
          <input type="hidden" name="token" :value="token">
          <div class="ydc-reg-form-class ydc-reg-form-reg" style="margin-top:40px;">
            <div class="ydc-reg-form-group clearfix">
              <label>帐号名称:</label>
              <div class="ydc-reg-form-input">
                <input type="text" id="loginEmail" name="display_name" class="ydc-form-control" autocomplete="off" :value="result['display_name']" style="width:200px;">
                <div class="ydc-reg-form-text">
                  <p>请输入2至14字的帐号名称</p>
                </div>
              </div>
            </div>
            <div class="ydc-reg-form-group clearfix">
              <label>帐号简介:</label>
              <div class="ydc-reg-form-input">
                <input type="password" id="psd" name="slogan" class="ydc-form-control" autocomplete="off" :value="result['slogan']">
                <div class="ydc-reg-form-text">
                  <p>请输入2至14字的帐号简介</p>
                </div>
              </div>
            </div>
            <div class="ydc-reg-form-group clearfix">
              <label>帐号分类:</label>
              <div class="ydc-reg-form-input">
                <select name="catalog">
                  <option :selected="catalog ==result['catalog']?'selected':''"  v-for="catalog,index in fenlei" :value="index">{{catalog}}</option>
                </select>
              </div>
              <div class="ydc-reg-form-text">
                <p>请输入2至14字的帐号名称</p>
              </div>
            </div>
            <div class="ydc-reg-form-group clearfix">
              <label>帐号图标:</label>
              <div class="ydc-reg-form-input">
                <input type="file" id="" name="icon" class="" autocomplete="off" placeholder="">
                <div class="ydc-reg-form-text">
                  <p>选取至少160*160尺寸的图片。请勿上传二维码或其他推广性质图片作为图标。</p>
                </div>
              </div>
            </div>
            <div class="ydc-reg-form-group clearfix">
              <label>帐号描述:</label>
              <div class="ydc-reg-form-input ydc-reg-form-input-width">
                <textarea name="description" :value="result['description']">{{result['description']}}</textarea>
                <div class="ydc-reg-form-text">
                  <p>请输入2至14字的帐号名称</p>
                </div>
              </div>
            </div>
            <div class="ydc-reg-form-group clearfix">
              <label>已有内容渠道及链接:</label>
              <div class="ydc-reg-form-input ydc-reg-form-input-width">
                <textarea name="other_channels" :value="result['other_channels']">{{result['other_channels']}}</textarea>
                <div class="ydc-reg-form-text">
                  <p>例如已发布文章的网站地址、博客地址、微信号等，方便我们作为审核参考。</p>
                </div>
              </div>
            </div>

            <div class="ydc-reg-form-group clearfix">
              <label>姓名:</label>
              <div class="ydc-reg-form-input">
                <input type="text" id="user1" name="name" class="ydc-form-control" autocomplete="off" :value="result['name']">
              </div>
            </div>
            <div class="ydc-reg-form-group clearfix">
              <label>身份证号:</label>
              <div class="ydc-reg-form-input clearfix">
                <input type="text" id="user2" name="identify_number" class="ydc-form-control" autocomplete="off" :value="result['identify_number']">
                <div class="ydc-reg-form-text">
                  <p>帐号信息填写需真实有效，如发现虚假以及非个人真实信息导致帐号收益无法提取，责任由帐号个人承担</p>
                </div>
                <div class="ydc-warning-default fl" style="height:auto; font-size:12px;">
                  <p>提交本页信息后，使用当前账号登录客户端3.0版本<br>点击「我的」-「实名认证」进行实名认证。</p>
                </div>
              </div>

            </div>
            <div class="ydc-reg-form-group clearfix">
              <label>所在城市:</label>
              <div class="ydc-reg-form-input">
                <select name="province"  @change="changeProvince($event)">
                  <option v-for="province in provinces" :selected="province['name']==province_name?'selected':''" :value="province.ID">{{province.name}}</option>
                </select>
                <select name="city" v-model="cur_city">
                  <option v-for="c,index in city" :value="c.ID">{{c.name}}</option>
<!--                  <option v-for="c,index in city" :selected="c['name']==city_name?'selected':''" :value="c.ID">{{c.name}}</option>  加了v-model 一开始将cur_city设置成了result['city']就省略了:selected-->
                </select>
              </div>

            </div>
            <div class="ydc-reg-form-group clearfix">
              <label>联系手机:</label>
              <div class="ydc-reg-form-input">
                <input type="text" id="user4"  class="ydc-form-control" autocomplete="off" placeholder="18519232899">
                <div class="ydc-reg-form-text">
                  <p>请输入手机号并验证</p>
                </div>
              </div>
              <div class="ydc-reg-yzm">
                <button>获取验证码</button>
              </div>
            </div>
            <div class="ydc-reg-form-group clearfix">
              <label>邮箱:</label>
              <div class="ydc-reg-form-input">
                <input type="text" id="user5" name="email" class="ydc-form-control" autocomplete="off" :value="result['email']">
              </div>
              <div class="ydc-reg-form-text">
                <p>请使用自己日常使用邮箱便于接受相关信息</p>
              </div>
            </div>
            <div class="ydc-reg-form-group clearfix">
              <label>QQ/微信号:</label>
              <div class="ydc-reg-form-input">
                <input type="text" id="user6" name="qq_wx" class="ydc-form-control" autocomplete="off" :value="result['qq_wx']">
              </div>
              <div class="ydc-reg-form-text">
                <p>请输入常用QQ/微信号方便联系沟通</p>
              </div>
            </div>
            <div class="ydc-reg-form-group clearfix">
              <label>推荐人:</label>
              <div class="ydc-reg-form-input">
                <input type="text" id="user7" name="recommend_code" class="ydc-form-control" autocomplete="off" :value="result['recommend_code']">
              </div>
              <div class="ydc-reg-form-text">
                <p>选填，若有网易员工推荐您入驻，请填写相应推荐码。</p>
              </div>
            </div>
            <div class="ydc-reg-form-group clearfix">
              <label></label>
              <div class="ydc-reg-form-input ydc-reg-form-input-agreement">
                <label><input type="checkbox" value="yes"  ref="agreement"> 我已经阅读并同意 <a href="agreement.html" target="_blank">《车讯号媒体开放平台注册协议》</a>。</label>
              </div>
            </div>
          </div>
          <div class="ydc-reg-form-group">
            <div class="ydc-reg-form-button" style="margin-left:255px;">
              <a class="btn fl" href="#" @click="submitEdit()">保存</a>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
  import {SERVER} from '@/config'
  import {fetch_form} from '@/lib/fetch'

    export default {
        name: "infoEdit",
      data(){
          return{
            result:[],
            province_name:'',
            city_name:'',
            token:localStorage.token,
            SERVER,
            fenlei:[],
            provinces:[],
            city:null,
            provinceId:0,
            cur_city:1
          }
      },
      methods: {
        async submitEdit() {
          if (!this.$refs['agreement'].checked) {
            alert("请阅读并同意");
          }else{
            let form = this.$refs['formEdit'];
            let json = await fetch_form(form);
            if (json.err == 0) {
              alert('修改成功');
              this.$router.push('/info');
            }
          }
        },
        async changeProvince(event){
          console.log(event.target.value);
          let res=await fetch(SERVER+`api/get_city/${event.target.value}`);
          let arr=await res.json();
          this.city=arr;
          this.cur_city=arr[0].ID;//检测当省份变了，城市默认等于ID为1d的城市
        }
      },

      async created(){
        {
          let res = await fetch(SERVER + 'api/get_user/' + this.token);
          let result = await res.json();
          this.result = result[0];
          this.province_name=result[1];
          this.city_name=result[2];
        }
        {
          let res=await fetch(SERVER+'api/account_catalog');
          let json=await res.json();
          this.fenlei=json;
        }
        {
          let res=await fetch(SERVER+'api/get_province');
          let json=await res.json();
          this.provinces=json;
        }
        {
          //let res=await fetch(SERVER+`api/get_city/${this.result['province']}`);  ES6字符串模板
          let res=await fetch(SERVER+'api/get_city/'+this.result['province']);
          let arr=await res.json();
          this.city=arr;
          this.cur_city=this.result['city'];//将cur_city设置成默认城市，绑定v-model
        }
      }

    }
</script>

<style scoped>

</style>
