<template>
  <div class="ydc-pagination">
    <ol>
      <li class="ydc-previous-item">
        <button class="ydc-previous-item-btn-medium ydc-disabled">
          <span>上一页</span>
        </button>
      </li>
      <li>
        <button class="ydc-previous-item-btn-medium cur">1</button>
      </li>
      <li>
        <button class="ydc-previous-item-btn-medium">2</button>
      </li>
      <li>
        <button class="ydc-previous-item-btn-medium">3</button>
      </li>
      <li class="ydc-previous-item">
        <button class="ydc-previous-item-btn-medium">
          <span>下一页</span>
        </button>
      </li>
      <li class="ydc-item-quick">
        第<div class="ydc-item-quick-kun"><input type="number" aria-invalid="false" class=""></div>页
        <button style="margin-left:5px;" class="ydc-previous-item-btn-medium">
          <span>跳转</span>
        </button>
      </li>
    </ol>
  </div>
</template>

<script>
    export default {
        name: "pageNation"
    }
</script>

<style scoped>
  .ydc-pagination{
    margin-top: 20px;
    padding: 0 0 0 80px;
    display: inline-block;
    /* margin-right: 225px; */
    width: 100%;
    position:relative;
  }

  .ydc-pagination ol{
    width: 100%;
    font-size: 14px;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    margin: 0;
    padding: 0;
    -ms-flex-align: center;
    -webkit-align-items: center;
    align-items: center;
    -ms-flex-wrap: wrap;
    -webkit-flex-wrap: wrap;
    flex-wrap: wrap;
    list-style: none;
  }


  .ydc-previous-item{
    margin-top: 2px;
    margin-bottom: 2px;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -ms-flex-align: center;
    -webkit-align-items: center;
    align-items: center;
    height: 40px;
  }

  .ydc-previous-item-btn-medium{
    position: relative;
    text-align: center;
    line-height: 1;
    cursor: pointer;
    -webkit-appearance: none;
    -webkit-transition: all .2s ease-out;
    transition: all .2s ease-out;
    border: 1px solid transparent;
    border-radius: 4px;
    margin: 0;
    background-color: #f2f2f2;
    border-color: #d7dde4;
    color: #324050;
    padding: 8px 12px;
    font-size: 13px;
    min-width: 32px;
  }
  .ydc-disabled{
    opacity: .6;
    cursor: not-allowed;
  }

  .ydc-pagination .ydc-disabled:hover{
    background:none;
    border:1px solid #ff5f5f;
    color:#999;

  }

  .ydc-disabled:hover{
    border-color: #e25050;
    background-color: transparent;
    color: #e25050
  }

  .ydc-previous-item-btn-medium:hover{
    background:#ff5f5f;
    border:1px solid #ff5f5f;
    color:#fff;
  }

  .ydc-pagination li+li {
    margin-left: 10px;
  }

  .cur{
    background:#ff5f5f;
    border:1px solid #ff5f5f;
    color:#fff;
  }


  .ydc-item-quick{
    position: absolute;
    right: 30px;
    width: 200px;
  }

  .ydc-item-quick-kun{
    position: relative;
    display: -ms-inline-flexbox;
    display: -webkit-inline-flex;
    display: inline-flex;
    -ms-flex-align: stretch;
    -webkit-align-items: stretch;
    align-items: stretch;
    border-radius: 4px;
    border: 1px solid #e6e6e6;
    -webkit-transition: border .2s ease-out;
    transition: border .2s ease-out;
    line-height: 1.2;
    padding: 4px 8px;
    line-height: 22px;
    font-size: 14px;
    width: 80px;
    margin: 0 10px;
  }

  .ydc-item-quick-kun input{
    display: inline-block;
    line-height: inherit;
    min-width: 0;
    width: 100%;
    border: none;
    outline: 0;
    padding: 0;
    border-radius: 4px;
    -webkit-transition: border .2s ease-out;
    transition: border .2s ease-out;
    padding-right: 5px;
  }

  .ydc-item-quick-kun:hover{
    border:1px solid #ff5f5f;
  }
</style>
