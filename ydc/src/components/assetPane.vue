<template>
  <div class="ydc-panes">
    <div class="ydc-pane" v-for="data,index in datas" :style="{display:index==cur?'block':'none'}">
      <div class="ydc-release-form-group ">
        <div class="ydc-warning-default">
          <p>{{data.pTie}}</p>
        </div>
        <div class="ydc-group-input clearfix" style="width:100%; margin-bottom:20px;">
          <input type="text" :placeholder="data.placeholder" style="width:91.333%">
          <button class="ydc-group-button">搜 索</button>
        </div>
      </div>
      <div class="ydc-assetStyle">
        <span>共<span class="ydc-assetStyle-span">28</span>条内容</span>
        <button class="ydc-assetStyle-btn">{{data.btn}}</button>
      </div>
      <div class="ydc-asset-img clearfix">
        <div class="ydc-asset-img-list" v-for="astlist in data.upload">
          <div class="ydc-asset-img-list-img"><img :src="astlist.astImg" alt=""></div>
          <div class="ydc-asset-img-list-til">{{astlist.astTie}}</div>
          <div class="ydc-asset-img-list-del">
            <button>编辑</button>
            <button>删除</button>
          </div>
        </div>
      </div>
      <page-nation></page-nation>
    </div>
<!--    <div class="ydc-pane">-->
<!--      <div class="ydc-release-form-group">-->
<!--        <div class="ydc-warning-default">-->
<!--          <p>搜索视频标题以及描述</p>-->
<!--        </div>-->
<!--        <div class="ydc-group-input clearfix" style="width:100%; margin-bottom:20px;">-->
<!--          <input type="text" placeholder="搜索视频标题以及描述" style="width:91.333%">-->
<!--          <button class="ydc-group-button">搜 索</button>-->
<!--        </div>-->
<!--      </div>-->
<!--      <div class="ydc-assetStyle">-->
<!--        <span>共<span class="ydc-assetStyle-span">7</span>条内容</span>-->
<!--        <button class="ydc-assetStyle-btn">上传视频</button>-->
<!--      </div>-->
<!--      <div class="ydc-asset-img ydc-asset-video clearfix">-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/img-ad9.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/img-ad10.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/img-ad2.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/img-ad3.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/ad1.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img">-->
<!--            <img src="admin/images/ad/img-ad0.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/img-ad2.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/img-ad3.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/ad2.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/ad3.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/ad1.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/img-ad4.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/img-ad5.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/img-ad6.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/img-ad7.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--        <div class="ydc-asset-img-list">-->
<!--          <div class="ydc-asset-img-list-img"><img src="admin/images/ad/img-ad8.jpg" alt="">-->
<!--            <div class="ydc-asset-img-video-info">-->
<!--              <img src="admin/images/icon/vid.png" title="" about="" alt="">-->
<!--            </div>-->
<!--          </div>-->
<!--          <div class="ydc-asset-img-list-til">cropper_image_152639</div>-->
<!--          <div class="ydc-asset-img-list-del">-->
<!--            <button>编辑</button>-->
<!--            <button>删除</button>-->
<!--          </div>-->
<!--        </div>-->
<!--      </div>-->
<!--      <page-nation></page-nation>-->
<!--    </div>-->
  </div>
</template>

<script>
  import pageNation from '@/components/pageNation'
  import ad1 from '../assets/images/ad/img-ad0.jpg'
  import ad2 from '../assets/images/ad/img-ad2.jpg'
  import ad3 from '../assets/images/ad/img-ad3.jpg'
  import ad4 from '../assets/images/ad/img-ad4.jpg'
  import ad5 from '../assets/images/ad/img-ad5.jpg'
  import ad6 from '../assets/images/ad/img-ad6.jpg'
  import ad7 from '../assets/images/ad/img-ad7.jpg'
  import ad8 from '../assets/images/ad/img-ad8.jpg'

    export default {
        name: "assetPane",
      props:['cur'],
      components: {pageNation},
      data(){
          return{
            datas:[
              {
                pTie:'搜索标题以及描述',
                placeholder:'请输入关键词进行搜索',
                btn:'上传图片',
                upload:[
                {astImg:ad1,astTie:'cropper_image_152639'},
                {astImg:ad2,astTie:'cropper_image_152639'},
                {astImg:ad3,astTie:'cropper_image_152639'},
                {astImg:ad4,astTie:'cropper_image_152639'},
                {astImg:ad5,astTie:'cropper_image_152639'},
                {astImg:ad6,astTie:'cropper_image_152639'},
                {astImg:ad7,astTie:'cropper_image_152639'},
                {astImg:ad8,astTie:'cropper_image_152639'}
              ]},
              {
                pTie:'搜索视频标题以及描述',
                placeholder:'搜索视频标题以及描述',
                btn:'上传视频',
                upload:[
                {astImg:ad1,astTie:'cropper_image_152639'},
                {astImg:ad2,astTie:'cropper_image_152639'},
                {astImg:ad3,astTie:'cropper_image_152639'},
                {astImg:ad4,astTie:'cropper_image_152639'},
                {astImg:ad5,astTie:'cropper_image_152639'},
                {astImg:ad6,astTie:'cropper_image_152639'},
                {astImg:ad7,astTie:'cropper_image_152639'},
                {astImg:ad8,astTie:'cropper_image_152639'}
              ]}

            ]
          }
      }
    }
</script>

<style scoped>

</style>
