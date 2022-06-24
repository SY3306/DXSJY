<template>
    <div>
   <div  class="bigdiv" >
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <div class="card-img">
              <img :src="`${gz.avatar}`" alt="" />
            </div>
            <div class="card-image">
              <p>{{gz.name}}</p>
              <span >{{gz.zhiwei}}</span>
            </div>
            <!-- <el-button class="card-button1"  type="text"
              >+关注</el-button
            > -->
          </div>
          <div class="text item" style="font-size: 16px">
            {{gz.content}}
          </div>
          <button class="card-button">评论</button>
          <button class="card-button" @click="shareToMicroblog()" >分享</button>
        </el-card>
      </div>
    </div>
</template>

<script>

    export default {
        props: ["gz"],
        methods:{
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
        }
    }
</script>

<style  scoped>
.bigdiv{
  padding: 0 0.3rem;
  border-radius: 10%;
}
.el-card{
    margin-bottom:5px;
    background-color: white;
}
.clearfix:before,
.clearfix:after {
  display: table;
  content: "";
}

.clearfix:after {
  clear: both;
}
.clearfix {
  display: flex;

}
.card-img img {
  width: 40px;
  height: 40px;
}
.card-image {
  margin-left: 1rem;
}
.card-image p{
  margin: 0;
  padding: 0;
}
.card-image span {
  font-size: 12px;
}
.card-button1 {
  margin-left: 15rem;
  font-size: 1rem;
  height: 25px;
  padding:5px ;
  background-color: #f0f0f0;
  border-radius: 5px;
}
.card-button {
  padding: 0 3px;
  margin: 10px 6px;
  font-size: 13px;
  /* margin-left: 70%; */
}
</style>