<template>
  <div class="ydc-content-slide ydc-body">
    <div class="ydc-customer">
      <div class="ydc-tabPanel clearfix">
        <div class="ydc-customer-tab-title">
          <ul>
            <li v-for="data,index in datas" :class="licheck==index?'hit':''" @click="licheck=index">{{data.nav}}</li>
          </ul>
        </div>
        <div class="fl ydc-group-top-rg">
          <div class="ydc-group-input clearfix" style="width:100%; margin-bottom:20px;">
            <input type="text" placeholder="请输入关键词进行搜索" style="width:90%">
            <button class="ydc-group-button" style="background-color:#ff5f5f">搜 索</button>
          </div>
<!--          <div class="ydc-panes">-->
<!--            <div class="ydc-pane" v-for="data,index in datas" :style="{display:licheck==index?'block':'none'}">-->
<!--              <dl v-for="con in data.content" class="foldpanel">-->
<!--                <dt>{{con.question}}</dt>-->
<!--                <dd v-html="con.answer">-->
<!--                 {{con.answer}}-->
<!--                </dd>-->
<!--              </dl>-->
<!--            </div>-->
          <div class="ydc-panes">
            <el-collapse v-for="data,index in datas" :key="index" v-model="activeName" accordion :style="{display:licheck==index?'block':'none'}">
              <el-collapse-item v-for="con,index in data.content" :title="con.question" :name="index+1" >
                <div  v-html="con.answer">{{con.answer}}</div>
              </el-collapse-item>
            </el-collapse>
          </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</template>

<script>

    export default {
        name: "customer",
      data(){
          return{
            licheck:0,
            activeName: 1,
            datas:[
              {nav:'热门问题',content:[
                  {question:'如果出现一点车车讯号名称重复怎么办？',answer:"<p>如果您的帐号被冒名，您可以：</p><p>①帐号同名，并盗用帐号的图标、简介、文章，请发送相关证据（其他平台后台截图、抄袭文章链接、营业执照等）到wangyihao@service.netease.com。</p><p>②只是帐号同名，并未抄袭文章，帐号有注册商标，发送注册商标扫描照片至wangyihao@service.netease.com；没有注册商标，不算侵权，原则上无法处理。</p>"},
                  {question:'为什么我的文章/视频被下线了？',answer:"<p>被下线有以下几种可能：</p><p>存在抄袭、侵权、非授权转载等情况：</p><p>存在涉黄涉暴涉恐信息：</p><p>存在严重推广营销行为：</p><p>存在虚假信息：</p><p>违反互联网相关规定：</p>"},
                  {question:'如何申报一点车车讯号特色内容激励计划？',answer:"<p>一点车车讯号平台秉承初心希望有更多的优质内容汇入一点车车讯号的内容汪洋，有更多各有态度的创作者能在一点车车讯号平台获得应有的收益，开通了特色内容激励计划的自主申请通道，您可以通过以下方式提交您的申请资料。</p>"},
                  {question:'内容推荐量为什么这么低？',answer:"<p>相似文章过多，被去重；同话题文章过多，内容供过于求。很多作者擅长抓住热点加以发挥创作，这样能够吸引主流用户，但由于很多作者都有这个倾向，导致一部分文章集中在某一个话题或者领域，甚至相似度过高，被系统去重。这个很好理解，100篇同话题文章，对应10000个用户，和10篇同话题文章，对应10000个用户，每篇文章的用户获得的推荐量肯定是不一样的。</p><p>感兴趣或者潜在用户人数少。推荐系统的机制就是将文章推荐给感兴趣的用户。如果文章涉及的话题、事件过于冷门、晦涩难懂，鲜有用户问津，那么系统能为文章找到的感兴趣用户或者潜在感兴趣用户较少，导致推荐量低。</p><p>时效性短。一些文章发布后，受内容或者话题时效性影响，时效性非常短，会影响到推荐量。</p><p>内容存在审核和投诉等合规性风险。如果文章不符合审核管控规定，会被审核员认为不可推荐；如果文章过了审核，但推荐过程中被用户投诉或者负面反馈过多，也会被系统下撤停止推荐，影响推荐量。</p>"}
                ]
              },
              {nav:'账户问题',content:[
                  {question:'一点车车讯号支持帐号主体类型修改吗？',answer:" <p>一点车车讯号目前不支持媒体、自媒体、组织机构和企业帐号主体类型之间的修改，如果因为注册失误造成要修改帐号类型，请准备一个新的从未注册过任何一点车车讯号的网易邮箱重新申请入驻。</p><p>如果您的帐号被冒名，您可以：</p><p>企业：将帐号名称、一点车车讯号后台截图、原运营人手持身份证图片、企业营业执照、现运营人手持身份证图片、yidianc@163.com，各项资质齐全可修改。</p>"},
                  {question:'帐号被封禁后可以解封吗？',answer:"<p>　根据目前一点车车讯号相关处罚规定，帐号被封禁后不予解封。</p><p>　内容存在审核和投诉等合规性风险，会被审核员认为不可推荐。</p><p>　很多作者擅长抓住热点加以发挥创作，原运营人手持身份证图片。</p>"},
                  {question:'如何更换运营人？',answer:" <p>媒体/自媒体/组织机构：将帐号名称、一点车车讯号后台截图、原运营人手持身份证图片、现运营人手持身份证图片、现运营人姓名及身份证号码发送至一点车车讯号客服邮箱w，各项资质齐全可修改。</p><p>企业：将帐号名称、一点车车讯号后台截图、原运营人手持身份证图片、企业营业执照、现运营人手持身份证图片、现运营人姓名及身份证号码发送至一点车车讯号客服邮箱wangyihao@service.netease.com，各项资质齐全可修改。</p>"},
                  {question:'如何申报一点车车讯号特色内容激励计划？',answer:" <p>一点车车讯号平台秉承初心希望有更多的优质内容汇入一点车车讯号的内容汪洋，有更多各有态度的创作者能在一点车车讯号平台获得应有的收益，开通了特色内容激励计划的自主申请通道，您可以通过以下方式提交您的申请资料。</p>"}
              ]
              },
              {
                nav:'入驻审核',content:[
                  {question:'提交了一点车车讯号申请后，审核需要多久？',answer:'<p>aui_cn@163.com/yidiac@163.com询问。</p>'},
                  {question:'一个身份证能否注册多个一点车车讯号？一个营业执照能否注册多个一点车车讯号？',answer:' <p>　一个身份证可以注册2个一点车车讯号；一个企业营业执照可以注册5个一点车车讯号。</p>'},
                  {question:'帐号审核申请可以提交几次？',answer:'<p>一个帐号24小时之内仅能提交2次上线申请。若超过规定次数，请过24小时再试。</p>'}
                ]
              },
              {
                nav:'主体修改',content:[
                  {question:'如果出现一点车车讯号名称重复怎么办？',answer:'<p>如果您的帐号被冒名，您可以：</p><p>①帐号同名，并盗用帐号的图标、简介、文章，请发送相关证据（其他平台后台截图、抄袭文章链接、营业执照等）到wangyihao@service.netease.com。</p> <p>②只是帐号同名，并未抄袭文章，帐号有注册商标，发送注册商标扫描照片至wangyihao@service.netease.com；没有注册商标，不算侵权，原则上无法处理。</p>'},
                  {question:'为什么我的文章/视频被下线了？',answer:'  <p>被下线有以下几种可能：</p><p>存在抄袭、侵权、非授权转载等情况：</p><p>存在涉黄涉暴涉恐信息：</p><p>存在严重推广营销行为：</p><p>存在虚假信息：</p><p>违反互联网相关规定：</p>'},
                  {question:'如何申报一点车车讯号特色内容激励计划？',answer:'<p>一点车车讯号平台秉承初心希望有更多的优质内容汇入一点车车讯号的内容汪洋，有更多各有态度的创作者能在一点车车讯号平台获得应有的收益，开通了特色内容激励计划的自主申请通道，您可以通过以下方式提交您的申请资料。</p>'},
                  {question:'内容推荐量为什么这么低？',answer:'<p>相似文章过多，被去重；同话题文章过多，内容供过于求。很多作者擅长抓住热点加以发挥创作，这样能够吸引主流用户，但由于很多作者都有这个倾向，导致一部分文章集中在某一个话题或者领域，甚至相似度过高，被系统去重。这个很好理解，100篇同话题文章，对应10000个用户，和10篇同话题文章，对应10000个用户，每篇文章的用户获得的推荐量肯定是不一样的。</p> <p>感兴趣或者潜在用户人数少。推荐系统的机制就是将文章推荐给感兴趣的用户。如果文章涉及的话题、事件过于冷门、晦涩难懂，鲜有用户问津，那么系统能为文章找到的感兴趣用户或者潜在感兴趣用户较少，导致推荐量低。</p> <p>时效性短。一些文章发布后，受内容或者话题时效性影响，时效性非常短，会影响到推荐量。</p><p>内容存在审核和投诉等合规性风险。如果文章不符合审核管控规定，会被审核员认为不可推荐；如果文章过了审核，但推荐过程中被用户投诉或者负面反馈过多，也会被系统下撤停止推荐，影响推荐量。</p>'}
                ]
              }
          ]
      }
    },
      watch:{
          //监听licheck,切换菜单，折叠面板默认显示第一个
          licheck(){
              this.activeName=1;
          }
      }
}
</script>

<style scoped>


</style>
