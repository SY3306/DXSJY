+<template>
  <div>
    <van-nav-bar>
      <template #left>
        <van-icon name="arrow-left" size="20" @click="onClickLeft" />
      </template>
      <template #title>我的投递</template>
      <!-- <template #right>
    <van-icon name="search" size="18" />
  </template> -->
    </van-nav-bar>
      <sendindex v-for="jl in data" :item="jl" :key="jl.id" />
  </div>
</template>

<script>
import sendindex from "@/components/sendindex.vue";
import { mapState } from "vuex";

export default {
  components: { sendindex },
  data() {
    return {
      data: [],
    };
  },
  computed: {
    ...mapState(["toudi"]),
    a() {
      return this.toudi;
    },
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
  watch: {
    a() {
      if (this.toudi == 0) {
        this.$router.push("/empindex/empme");
        this.$toast("投递已删完");
      } else {
        let url = "/sendlist?uid=" + this.$store.state.id;
        this.axios.get(url).then((res) => {
          console.log(res);
          this.data = res.data.result;
        });
      }
    },
    // data() {
    //   let url = "/sendlist?uid=" + this.$store.state.id;
    //   this.axios.get(url).then((res) => {
    //     console.log(res);
    //     this.data = res.data.result;
    //   });
    // },
  },
};
</script>

<style scoped>
.title {
  font-size: 20px;
}
</style>
<style lang="scss" scoped>
</style>