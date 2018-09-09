<template>
<div class="edit-user-container">
  <div class="edit-panel-container">
    <div class="close-btn-container">
      <div class="close-btn" @click="closePanel()">&times;</div>
    </div>
    <div class="edit-panel">
      <h1>修改內部用戶資料</h1>
      <div class="form-input submit-btn update-btn" @click="updateAsset()">
        <p>更新</p>
      </div>
    </div>
  </div>
</div>
</template>

<script>
export default {
  data() {
    return {
      users: [],
      getAllInternalUserApi: "http://localhost:8888/index.php/api/internal_user"
    }
  },
  methods: {
    getAllUser() {
      this.$http.get(this.getAllInternalUserApi)
        .then((response) => {
          this.users = response.data;
        })
    },
    closePanel() {
      $(".edit-panel-container").hide();
    },
  }
}
</script>

<style scoped>

</style>
