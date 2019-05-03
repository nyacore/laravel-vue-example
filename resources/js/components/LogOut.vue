<template></template>

<script>
export default {
  mounted() {
    window.localStorage.removeItem("token");
    this.$router.push({ name: "Home" });
  }
};
</script>

<style>
</style>
