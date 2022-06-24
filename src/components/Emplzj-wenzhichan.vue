<template>
  <div>   
    
    <div
      class="bigdiv"
    >
 
      <el-card class="box-card">
        <div slot="header" class="clearfix">
          <div style="display:flex">
            <div class="card-img">
            <img :src="`${wzc.avatar}`" alt="" />
          </div>
          <div class="card-image">
            <p>{{ wzc.name }}</p>
            <span>{{ wzc.zhiwei }}</span>
          </div>
          </div>
          
          <el-button class="card-button1" v-if="guanzhu"  @click="a" type="text">+关注</el-button>
          <el-button class="card-button2" v-else type="text" @click="a">已关注</el-button>
        </div>
        <div class="text item" style="font-size: 14px">
          {{ wzc.content }}
        </div>
        <button class="card-button">评论</button>
        <button class="card-button"  @click="shareToMicroblog()" >分享</button>
        <button class="card-button" v-if="wzc.name==name" @click="delete1">删除</button>
      </el-card>
      
    </div>
  </div>
</template>

<script>
import { mapMutations, mapState } from 'vuex';
export default {
  props: ["wzc"],
  data() {
    return {
      guanzhu: true,
    }
  },
  computed:{
    ...mapState(['name'])
  },
  methods:{
    a(){
      if(this.guanzhu==true){
        this.guanzhu=false
      }else{
        this.guanzhu=true
      }
    },
    ...mapMutations(['updatezqlength']),
    delete1(){
      this.axios.post('/empdelete',`id=${this.wzc.id}`).then(res=>{
        console.log(res)
      this.axios.get(`zqselect?name=${this.name}`).then(res=>{
          console.log('同名数据:',res)
          this.updatezqlength(res.data.result.length)
        })
      })
    },
     //分享到微博(可用)
    shareToMicroblog() {
      //自定义内容
      const share = {
        title: "分享",
        image_url: ["111"],
        share_url: "111"
      };
      //跳转地址
      location.replace(
        "https://service.weibo.com/share/share.php?url=" +
          encodeURIComponent(share.share_url) +
          "&title=" +
          share.title +
          "&pic=" +
          share.image_url +
          "&searchPic=true"
      );
    }
  },
};
</script>

<style  scoped>
.bigdiv{
  padding: 0 0.3rem;
  border-radius: 10%;
}
.btn{
  font-size: 13px;
  margin-left: 187px;
}
p{
  margin: 0;padding: 0;
}
.el-card {
  margin-bottom: 5px;
  background-color: white;
}

.clearfix {
display: flex;
justify-content: space-between;
}

.card-img img {
  width: 40px;
  height: 40px;
}
.card-image {
  margin-left:10px;
}
.card-image span {
  font-size: 12px;
}
.card-button1 {
  width:3.8rem;
   height: 1.6rem;
 line-height: 1.6rem;
 margin-top: 0.5rem;
 padding: 0 0.5rem;
 color: whitesmoke;
 background-color: rgb(241, 147, 79);
}
.card-button2{
    height: 1.6rem;
 line-height: 1.6rem;
 margin-top: 0.5rem;
 padding: 0 0.5rem;
 color: whitesmoke;
    background-color: #666;
}
.card-button {
  padding: 0px 3px;
  margin: 12px 0 0px  12px;
  font-size: 13px;
  /* margin-left: 70%; */
}
</style>