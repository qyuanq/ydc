<template>
  <div>
    <header class="ydc-header">
      <div class="ydc-entered">
        <div class="ydc-header-content ydc-flex">
          <div class="ydc-column">
            <a href="index.html" class="ydc-column-ydc-logo">
              <img src="../assets/images/icon/ydc-logo.png" title="" about="" alt="">
            </a>
          </div>
          <div class="ydc-column">
            <div class="ydc-column-user">
              <div class="ydc-user-photo">
                <!--<a href="javascript:;">-->
                <!--<img src="admin/images/icon/photo.png" title="" about="" alt="">-->
                <!--</a>-->
              </div>
              <div class="ydc-user-info">
                <div class="ydc-user-info-name">
                  <!--<a href="javascript:;">一点车</a>-->
                </div>
                <div class="ydc-user-info-func ydc-flex">
                  <!--<span class="ydc-tag">新手期</span>-->
                  <!--<span class="ydc-mal"><i class="ydc-icon ydc-icon-mail fl"></i><em>12</em></span>-->
                  <a href="javascript:;">退出</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <section>
      <div class="ydc-content-slide ydc-body">
        <div class="ydc-page-content" style="overflow:hidden">
          <div class="ydc-reg-title">
            <ul class="clearfix">
              <li v-for="title,index in steps" :class="['ydc-reg-step', index<=step?'active':'']">
                <em></em>
                <h3>{{title}}</h3>
              </li>
            </ul>
          </div>
          <div class="ydc-reg-form clearfix">
            <form action="" v-if="step==0">
              <div class="ydc-reg-form-group clearfix">
                <label>邮箱账号:</label>
                <div class="ydc-reg-form-input">
                  <input type="text" id="loginEmail" name="username" class="ydc-form-control" autocomplete="off" placeholder="账号通行证/邮箱">
                </div>
                <div class="ydc-reg-form-text">
                  <p>请填写账号邮箱，作为登录帐号。<br>没有账号邮箱？ <a href="javascript:;">立即注册>></a></p>
                </div>
              </div>
              <div class="ydc-reg-form-group clearfix">
                <label>密码:</label>
                <div class="ydc-reg-form-input">
                  <input type="password" id="psd" name="username" class="ydc-form-control" autocomplete="off" placeholder="密码">
                </div>
                <div class="ydc-reg-form-text">
                  <p><a href="javascript:;">忘记密码？</a></p>
                </div>
              </div>
              <div class="ydc-reg-form-group">
                <div class="ydc-reg-form-button">
                  <a class="btn" type="submit" href="javascript:;" @click="step++">登录</a>
                </div>
              </div>
            </form>

            <form action="" v-if="step==1">
              <div class="ydc-reg-form-class">
                <div class="ydc-reg-text-center">
                  <div class="ydc-text-center-item" v-for="item,index in items">
                    <div class="ydc-text-item-list" @click="item_check=index">
                      <div class="ydc-text-item-list-title">
                        <div class="ydc-text-ab">
                          <input type="radio" name="rdo" class="rdolist" />
                          <label :class="['rdobox',item_check==index?'checked':'unchecked']" >
                            <span :class="['check-image',item_check==index?'checked-image':'check-image']"></span>
                            <span class="radiobox-content"></span>
                          </label>
                        </div>
                        <div class="ydc-text-item-list-mt1">
                          <img :src="item.icon" alt="">
                        </div>
                      </div>
                      <div class="ydc-text-item-list-text">
                        <h2>{{item.title}}</h2>
                        <p>{{item.desc}}</p>
                      </div>
                    </div>
                  </div>

                </div>
                <div></div>
                <div></div>
                <div></div>
              </div>
              <div class="ydc-reg-form-group">
                <div class="ydc-reg-form-button clearfix">
                  <a class="btn" href="javascript:;" @click="stepTo()">下一步</a>
                </div>
              </div>
            </form>

            <form :action="SERVER+'api/reg'" v-if="step==2" method="post" enctype="multipart/form-data" ref="form3">
              <input type="hidden" name="type" v-model="item_check">
              <div class="ydc-reg-form-class ydc-reg-form-reg">
                <div class="ydc-reg-form-group clearfix">
                  <label>帐号名称:</label>
                  <div class="ydc-reg-form-input">
                    <input type="text" id="loginEmail" name="display_name" class="ydc-form-control" autocomplete="off" placeholder="" style="width:200px;">
                    <div class="ydc-reg-form-text">
                      <p>请输入2至14字的帐号名称</p>
                    </div>
                  </div>
                </div>
                <div class="ydc-reg-form-group clearfix">
                  <label>帐号密码:</label>
                  <div class="ydc-reg-form-input">
                    <input type="password"  name="password" class="ydc-form-control" autocomplete="off" placeholder="">
                    <div class="ydc-reg-form-text">
                      <p>请输入2至14字的帐号密码</p>
                    </div>
                  </div>
                </div>
                <div class="ydc-reg-form-group clearfix">
                  <label>帐号简介:</label>
                  <div class="ydc-reg-form-input">
                    <input type="text" id="psd" name="slogan" class="ydc-form-control" autocomplete="off" placeholder="">
                    <div class="ydc-reg-form-text">
                      <p>请输入2至14字的帐号简介</p>
                    </div>
                  </div>
                </div>
                <div class="ydc-reg-form-group clearfix">
                  <label>帐号分类:</label>
                  <div class="ydc-reg-form-input">
                    <select name="catalog">
                      <option v-for="fenlei,index in fenlei_arr" :value="index">{{fenlei}}</option>
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
                    <textarea name="description">请详细描述您的帐号，30至120字</textarea>
                    <div class="ydc-reg-form-text">
                      <p>请输入2至14字的帐号名称</p>
                    </div>
                  </div>
                </div>
                <div class="ydc-reg-form-group clearfix">
                  <label>已有内容渠道及链接:</label>
                  <div class="ydc-reg-form-input ydc-reg-form-input-width">
                    <textarea name="other_channels">请详细描述您的帐号，30至120字</textarea>
                    <div class="ydc-reg-form-text">
                      <p>例如已发布文章的网站地址、博客地址、微信号等，方便我们作为审核参考。</p>
                    </div>
                  </div>
                </div>
                <div class="ydc-reg-form-group clearfix">
                  <label>姓名:</label>
                  <div class="ydc-reg-form-input">
                    <input type="text" id="user1" name="name" class="ydc-form-control" autocomplete="off" placeholder="">
                  </div>
                </div>
                <div class="ydc-reg-form-group clearfix">
                  <label>身份证号:</label>
                  <div class="ydc-reg-form-input clearfix">
                    <input type="text" id="user2" name="identify_number" class="ydc-form-control" autocomplete="off" placeholder="">
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
                    <select v-model="cur_pro" name="province">
                      <option v-for="province in provinces" :value="province.ID">{{province.name}}</option>
                    </select>
                    <select v-model="cur_city" name="city">
                      <option v-if="city" v-for="c in city" :value="c.ID">{{c.name}}</option>
                    </select>
                  </div>

                </div>
                <div class="ydc-reg-form-group clearfix">
                  <label>联系手机:</label>
                  <div class="ydc-reg-form-input">

                    <input type="text" id="user4" name="" class="ydc-form-control" autocomplete="off" placeholder="">
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
                    <input type="text" id="user5" name="email" class="ydc-form-control" autocomplete="off" placeholder="">
                  </div>
                  <div class="ydc-reg-form-text">
                    <p>请使用自己日常使用邮箱便于接受相关信息</p>
                  </div>
                </div>
                <div class="ydc-reg-form-group clearfix">
                  <label>QQ/微信号:</label>
                  <div class="ydc-reg-form-input">
                    <input type="text" id="user6" name="qq_wx" class="ydc-form-control" autocomplete="off" placeholder="">
                  </div>
                  <div class="ydc-reg-form-text">
                    <p>请输入常用QQ/微信号方便联系沟通</p>
                  </div>
                </div>
                <div class="ydc-reg-form-group clearfix">
                  <label>推荐人:</label>
                  <div class="ydc-reg-form-input">
                    <input type="text" id="user7" name="recommend_code" class="ydc-form-control" autocomplete="off" placeholder="">
                  </div>
                  <div class="ydc-reg-form-text">
                    <p>选填，若有网易员工推荐您入驻，请填写相应推荐码。</p>
                  </div>
                </div>
                <div class="ydc-reg-form-group clearfix">
                  <label></label>
                  <div class="ydc-reg-form-input ydc-reg-form-input-agreement">
                    <label><input type="checkbox" value="yes" id="agreement" checked=""> 我已经阅读并同意 <a href="agreement.html" target="_blank">《车讯号媒体开放平台注册协议》</a>。</label>
                  </div>
                </div>
              </div>
              <div class="ydc-reg-form-group">
                <div class="ydc-reg-form-button" style="margin-left:255px;">
                  <a class="btn btn-border fl" href="#" @click="step--">上一步</a>
                  <a class="btn fl" href="#" @click="submit_form()">提交申请</a>
                </div>
              </div>
            </form>

          </div>
          <div class="ydc-right-banner" style="margin-top:80px;">
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
      <div class="ydc-footer">
        <div>
          <p>©2018 一点车版权所有About 公司简介  联系方法  招聘信息  客户服务  隐私政策  广告服务  网站地图  意见反馈  不良信息举报</p>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
  import mt1 from '../assets/images/icon/mt1.png'
  import mt2 from '../assets/images/icon/mt2.png'
  import mt3 from '../assets/images/icon/mt3.png'
  import mt4 from '../assets/images/icon/mt4.png'
  import {SERVER} from '@/config'
  import {fetch_form} from '@/lib/fetch'

    export default {
  name: "reg",
        data(){
            return {
              step:0,
              steps:['登录邮箱账号','选择账号类别','填写媒体信息'],
              item_check:-1,
              fenlei_arr:[],
              provinces:[],
              city:null,
              cur_pro:1,
              cur_city:1,
              items:[
                {title:'媒体',desc:'适合报纸、杂志、电视台、网站等以内容生产为主，有国家新闻出版广电总局认可资质的媒体机构申请。',icon:mt1},
                {title:'自媒体',desc:'适合垂直领域专家、意见领袖、评论家等个人创作者或以内容生产为主的自媒体公司/机构申请。',icon:mt2},
                {title:'组织机构',desc:'适合党政机关、事业单位和各类公共场馆、公益机构、学校/培训机构、民间组织等申请。',icon:mt3},
                {title:'企业',desc:'适合企业、公司及其分支机构、旗下品牌等申请，品牌宣传，主要用于商业品牌推广等申请。',icon:mt4}
              ],
              SERVER
            }
        },
        async created(){
        //fenlei_arr
          {
            let res=await fetch(SERVER+"api/account_catalog");
            let arr=await res.json();
            // alert(arr);
            this.fenlei_arr=arr;
          }
          //省份
          {
            let res=await fetch(SERVER+"api/get_province");
            let arr=await res.json();
            this.provinces=arr;
          }
          //城市
          {
            let res=await fetch(SERVER+`api/get_city/${this.provinces[0].ID}`);
            let arr=await res.json();
            this.city=arr;
          }
        },
        methods:{
          stepTo(){
            if(this.item_check==-1){
              alert("请选择账号类别");
            }else{
              this.step++;
            }
          },
          async submit_form(){
            let json=await fetch_form(this.$refs['form3']);
            if(json.err==0){
              alert('注册成功');
              this.$router.push('/login');
            }
          }
        },
        watch:{
          async cur_pro(){
            let res=await fetch(SERVER+`api/get_city/${this.cur_pro}`);
            let arr=await res.json();
            this.city=arr;
            this.cur_city=arr[0].ID;
          }
        }
    }
</script>

<style scoped>

</style>
