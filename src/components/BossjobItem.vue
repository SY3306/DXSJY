<template>
  <div
    class="lqf-index"
    @click="$router.push(`/bossjobdetails?id=${bossjobitem.id}`)"
  >
    <div>
      <div class="lqf-index-span">
        <div>
          <span>{{ bossjobitem.jobname }}</span>
        </div>
        <div>
          <span>{{ bossjobitem.num }}人</span>
        </div>
        <div>
          <span>{{ bossjobitem.salary }}</span>
        </div>
      </div>
      <div class="lqf-index-ziti">
        <span>{{ bossjobitem.age }}</span>
        <span>{{ bossjobitem.work }}</span>
        <span>{{ bossjobitem.workyear }}</span>
        <span>{{ bossjobitem.education }}</span>
        <!-- 这里应该使用boss完善的资料信息 -->
      </div>
      <div>
        <!-- 这里应该使用boss完善的资料信息 -->
        <span> {{ bosscompany.name }} </span>
      </div>
      <div class="lqf-index-hr">
        <div>
          <img
            class="indextupian"
            src="https://img0.baidu.com/it/u=2387177308,2370109332&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500"
            alt="HR头像"
          />
          <span> {{ bosscompany.introduct }}</span>
          <!-- 这里应该使用boss完善的资料信息 -->
        </div>
        <!-- <div>
          {{ bossjobitem.welfare }}
        </div> -->
        <div>
          <span> {{ bossjobitem.myaddress }}</span>
          <van-icon
            name="cross"
            @click.native="deleteBossjob(bossjobitem.id)"
          />
        </div>
      </div>
    </div>
    <hr />
  </div>
</template>

<script>
import { Indicator } from "mint-ui";
export default {
  props: ["bossjobitem"],
  data() {
    return {
      bosscompany: [],
    };
  },
  mounted() {
    this.axios
      .get(`/bosscompany?boss_name=${this.$store.state.boss_name}`)
      .then((res) => {
        console.log(res);
        this.bosscompany = res.data.result[0];
        // 完成后关闭该功能
        Indicator.close();
      });
  },
  methods: {
    toAdd() {
      //   this.$router.push("/bossindex/me");
      console.log("跳转");
    },
    deleteBossjob(id) {
      event.stopPropagation();
      return new Promise((resolve, reject) => {
        // 加载中组件
        Indicator.open("加载中...");
        this.axios.delete(`/bossjobcard?id=${id}`).then((res) => {
          console.log(res);
          this.bossjoblist = res.data.result;

          // 完成后关闭该功能
          Indicator.close();
          location.reload();
          return false;
        });
      });
    },
  },
};
</script>

<style lang="scss" scoped></style>
<style scoped>
a {
  color: black;
}
.lqf-index {
  margin: 0.5em 0.5em;
  padding: 0.5em;
  background-color: whitesmoke;
}
.lqf-index div {
  padding: 0.2em 0;
}
.lqf-index-span {
  display: inline-block;
  display: flex;
  justify-content: space-between;
}
.lqf-index-span > div:first-child {
  font-size: 5vw;
  font-weight: 530;
}
.lqf-index-ziti {
  font-size: 12px;
}

.lqf-index-ziti span {
  display: inline-block;
  margin: 0 2px;
  padding: 3px 5px;
  background-color: rgb(230, 236, 240);
}
.lqf-index-hr {
  display: inline-block;
  display: flex;
  justify-content: space-between;
}
.indextupian {
  width: 1.5em;
  height: 1.5em;
  border-radius: 50%;
  margin-right: 0.6em;
  margin-bottom: -0.4em;
}
.indexsprice {
  margin-top: 0.25em;
}
</style>
