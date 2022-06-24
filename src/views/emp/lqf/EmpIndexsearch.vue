<template>
  <div>
    <div @click="good">
      <van-nav-bar title="查询" left-text="返回" left-arrow>

      </van-nav-bar>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  },
  methods: {
    good() {
      this.$router.go(-1);
    },
  },
};
</script>

<style scoped>
</style>