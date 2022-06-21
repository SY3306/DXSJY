<template>
  <div>
    
  </div>
</template>

<script>
export default {
  mounted() {
    let url = "/sendlist?uid=" + this.$store.state.id;
    this.axios.get(url).then((res) => {
      console.log(res);
    });
  },
};
</script>

<style lang="scss" scoped>
</style>