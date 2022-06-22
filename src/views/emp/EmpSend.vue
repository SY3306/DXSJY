<template>
  <div>
    <van-nav-bar>
      <template #left>
        <van-icon name="arrow-left" size="20" @click="onClickLeft" />
      </template>
      <template #title >我的投递</template>
      <!-- <template #right>
    <van-icon name="search" size="18" />
  </template> -->
    </van-nav-bar>

    <div v-if="!data"><span>还没有投递简历哦！快去寻找心仪的工作吧</span></div>
    <div v-else>
      <lqfindex v-for="jl in data" :item="jl" :key="jl.id" />
    </div>
  </div>
</template>

<script>
import Lqfindex from "@/components/Lqfindex.vue";
export default {
  components: { Lqfindex },
  data() {
    return {
      data: "",
    };
  },
  methods: {
    onClickLeft() {
      this.$router.go(-1);
    },
  },
  mounted() {
    let url = "/sendlist?uid=" + this.$store.state.id;
    this.axios.get(url).then((res) => {
      console.log(res);
      this.data = res.data.result;
    });
  },
};
</script>

<style scoped>
.title{
  font-size: 20px;
}
</style>
<style lang="scss" scoped>
</style>