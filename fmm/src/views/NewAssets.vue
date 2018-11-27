<template>
<div class="new-assets-container">
  <div class="title">
    <h1>新增設備資料</h1>
  </div>
</div>
</template>

<script>
export default {
  data() {
    return {

    }
  },
  created() {
    //do something after creating vue instance
    swal("噢！此功能還在開發中～", {
      icon: "info"
    })
    .then((value) => {
      this.$router.push({
        name: 'homePage'
      })
    });
  }
}
</script>

<style scoped>
.new-assets-container {
  min-height: calc(100vh - var(--footerHeight));
  width: auto;
  margin-left: var(--leftBar);
  padding: 36px;
  /* background-image: url("../../static/images/paper2.png"); */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

h1 {
  margin: 0px;
}
</style>
