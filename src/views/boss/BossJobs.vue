<template>
  <div>
    <div class="jobhead">
      <h3>快来招募你的同事吧</h3>
      <!-- 跳转到职位add界面 -->
      <van-icon name="plus" @click.native="$router.push(`/recruit`)" />
    </div>

    <bossjob-item
      v-for="item in bossjoblist"
      :key="item.id"
      :bossjobitem="item"
    ></bossjob-item>
  </div>
</template>

<script>
import BossjobItem from "@/components/BossjobItem";
import { Indicator } from "mint-ui";

export default {
  components: { "bossjob-item": BossjobItem },
  data() {
    return {
      bossjoblist: [], // 用于存储当前
    };
  },

  methods: {
    //获取数据
    loadBossjob() {
      return new Promise((resolve, reject) => {
        console.log(this.$store.state.boss_name);
        // 加载中组件
        Indicator.open("加载中...");
        this.axios
          .get(`bossjobcard?boss_name=${this.$store.state.boss_name}`)
          .then((res) => {
            console.log(res);
            this.bossjoblist = res.data.result;
            // 完成后关闭该功能
            Indicator.close();
          });
      });
    },
  },
  mounted() {
    // 加载UI类别下的首页文章数据
    this.loadBossjob();
  },
  watch: {},
};
</script>

<style lang="scss" scoped></style>
<style scoped>
.jobhead {
  display: flex;
  justify-content: space-between;
  margin: 0 20px;
}
.van-icon:before {
  line-height: 63px;
  /* margin: 0 px; */
  font-size: 20px;
  font-weight: bold;
}
</style>
