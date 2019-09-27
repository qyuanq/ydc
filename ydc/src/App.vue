<template>
  <div>
    <div v-if="$route.name=='login'|| $route.name=='reg'">
      <router-view></router-view>
    </div>
    <div v-if="$route.name!='login' && $route.name!='reg'">
      <Header></Header>
      <section>
        <div v-if="$route.name=='customer'">
          <router-view></router-view>
        </div>
        <div v-if="$route.name!='customer'" class="ydc-content-slide ydc-body">
          <div class="ydc-flex">
            <Menu></Menu>

            <div class="ydc-column ydc-column-8">
              <router-view></router-view>
            </div>

          </div>
        </div>
        <Footer></Footer>
      </section>
    </div>
  </div>
</template>

<script>
  import Header from './components/header'
  import Menu from './components/menu'
  import Footer from './components/footer'
  import Index from '@/pages/index'
  import Login from '@/pages/login'

export default {
  name: 'App',
  components:{Header,Menu,Footer,Index,Login},
  created(){
    if(!localStorage.token){
      this.$router.push('/login');
    }
  }
}
</script>

<style>
  .ydc-column-2 {
    -ms-flex: 0 0 20.83333%;
    -webkit-flex: 0 0 20.83333%;
    flex: 0 0 20.83333%;
    max-width: 20.83333%
  }

  .ydc-column-8 {
    -ms-flex: 0 0 79.16667%;
    -webkit-flex: 0 0 79.16667%;
    flex: 0 0 79.16667%;
    max-width: 79.16667%
  }

</style>
