<template>
<div class="edit-user-container">
  <div class="edit-panel-container">
    <div class="close-btn-container">
      <div class="close-btn" @click="closePanel()">&times;</div>
    </div>
    <div class="edit-panel">
      <h1>修改內部用戶資料</h1>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">用戶名稱：</p>
          <input class="form-input" placeholder="用戶名稱" v-model="editingUser.userName" title="用戶名稱" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">用戶編號：</p>
          <input class="form-input" placeholder="用戶編號" v-model="editingUser.staffNumber" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">用戶部門：</p>
          <input class="form-input" placeholder="用戶部門" v-model="editingUser.department" title="用戶部門" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">用戶電郵：</p>
          <input class="form-input" placeholder="用戶電郵" v-model="editingUser.userEmail" title="用戶電郵" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">聯絡電話</p>
          <input class="form-input" placeholder="聯絡電話" v-model="editingUser.userContact" title="聯絡電話" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">用戶累計：</p>
          <input class="form-input" placeholder="用戶累計" v-model="editingUser.sum" title="用戶累計" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <div class="submit-btn update-btn group" @click="updateUser()">
            <p>更新</p>
          </div>
          <div class="submit-btn update-btn group" @click="deleteUser()">
            <p>刪除</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="title">
    <h1>內部用戶資料</h1>
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
          <p>用戶電郵：{{ user.userEmail }}</p>
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
import config from '../config.json'
export default {
  data() {
    return {
      users: [],
      editingUser: [],
      search: "",
      getAllInternalUserApi: config.URL + config.getAllInternalUserApi,
      updateInternalUserApi: config.URL + config.updateInternalUserApi,
      deleteInternalUserApi: config.URL + config.deleteInternalUserApi
    }
  },
  computed: {
    filteredUser: function() {
      return this.users.filter((user) => {
        return user.userName.match(this.search) || user.staffNumber.match(this.search) || user.userContact.match(this.search) || user.userEmail.match(this.search);
      })
    }
  },
  methods: {
    getAllUser() {
      this.$http.get(this.getAllInternalUserApi)
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
      this.$http.post(this.updateInternalUserApi, JSON.stringify(this.editingUser))
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
    },
    deleteUser() {
      swal({
          title: "確定要刪除" + this.editingUser.userName + "嗎？",
          text: "進行刪除操作後，該資料便不能再復原",
          icon: "warning",
          buttons: true,
          dangerMode: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            this.$http.post(this.deleteInternalUserApi, JSON.stringify({"userID": this.editingUser.userID}))
              .then((response) => {
                if (response.data.message == 1) {
                  swal("該資料已成功刪除！", {
                    icon: "success",
                  });
                  $(".edit-panel-container").hide();
                  this.users = [];
                  this.getAllUser();
                } else {
                  swal("刪除失敗，請再試一次！", {
                    icon: "error"
                  });
                }
              })
          } else {
            swal("該資料沒有被刪除！");
          }
        });
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
  content: "根據用戶名稱、編號、聯絡電話或電郵搜尋";
  color: red;
  font-size: 14px;
}
</style>
