<template>
<div class="edit-user-container">
  <div class="edit-panel-container">
    <div class="close-btn-container">
      <div class="close-btn" @click="closePanel()">&times;</div>
    </div>
    <div class="edit-panel">
      <h1>修改外部用戶資料</h1>
      <input class="form-input" placeholder="用戶名稱：" v-model="editingUser.userName" title="用戶名稱" />
      <input class="form-input" placeholder="用戶編號：" v-model="editingUser.staffNumber" />
      <!-- <input class="form-input" placeholder="聯絡電話：" v-model="editingUser.userContact" title="聯絡電話"/> -->
      <input class="form-input" placeholder="用戶部門" v-model="editingUser.department" title="用戶部門" />
      <input class="form-input" placeholder="用戶累計：" v-model="editingUser.sum" title="用戶累計" />
      <div class="form-input submit-btn update-btn" @click="updateUser()">
        <p>更新</p>
      </div>
    </div>
  </div>
  <div class="title">
    <h1>外部用戶資料</h1>
  </div>
  <div class="title">
    <div class="edit-panel-row search-input">
      <div class="row-item">
        <p class="row-title">搜尋用戶：</p>
        <input class="form-input" placeholder="請輸入搜尋條件" v-model="search" />
      </div>
    </div>
  </div>
  <div class="all-fat-card-container">
    <div class="fat-card-item" v-for="user in filteredUser" :key="user.key">
      <div class="fat-card-info">
        <div class="fat-card-text-container">
          <h2>{{ user.userName }}</h2>
          <p>用戶編號：{{ user.staffNumber }}</p>
          <p>聯絡電話：{{ user.userContact }}</p>
          <p>用戶累計：{{ user.sum }}</p>
        </div>
        <div class="fat-card-img-container">
          <img src="../../static/images/healthy-boy.svg" />
        </div>
      </div>
      <button class="fat-card-edit-btn" @click="editUser(user)">修改</button>
    </div>
  </div>
</div>
</template>

<script>
import config from '../config.json';
export default {
  data() {
    return {
      users: [],
      editingUser: [],
      search: "",
      getAllExternalUserApi: config.URL + config.getAllExternalUserApi,
      updateExternalUserApi: config.URL + config.updateExternalUserApi
    }
  },
  computed: {
    filteredUser: function() {
      return this.users.filter((user) => {
        return user.userName.match(this.search) || user.staffNumber.match(this.search) || user.userContact.match(this.search);
      })
    }
  },
  methods: {
    getAllUser() {
      this.$http.get(this.getAllExternalUserApi)
        .then((response) => {
          this.users = response.data;
        })
    },
    editUser(user) {
      $(".edit-panel-container").css('display', 'flex');
      this.editingUser = [];
      this.editingUser = JSON.parse(JSON.stringify(user));
    },
    closePanel() {
      $(".edit-panel-container").hide();
    },
    updateUser() {
      this.$http.post(this.updateExternalUserApi, JSON.stringify(this.editingUser))
        .then((response) => {
          if (response.data.message == 1) {
            swal("修改成功！", {
              icon: "success",
            });
            $(".edit-panel-container").hide();
            this.users = [];
            this.getAllUser();
          } else {
            swal("修改失敗！", {
              icon: "error"
            });
          }
        })
    }
  },
  created() {
    //do something after creating vue instance
    this.getAllUser();
  }
}
</script>

<style scoped>
.edit-user-container {
  min-height: calc(100vh - var(--footerHeight));
  width: auto;
  margin-left: var(--leftBar);
  padding: 36px;
  /* background-image: url("../../static/images/paper2.png"); */
  background-position: center;
  background-repeat: repeat;
  background-size: cover;
}

.search-input:hover::after {
  position: absolute;
  left: calc(20% + 24px);
  content: "根據用戶名稱、編號或聯絡電話搜尋";
  color: red;
  font-size: 14px;
}
</style>
