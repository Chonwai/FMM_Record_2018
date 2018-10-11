<template>
<div class="new-user-container">
  <div class="title">
    <h1>新增用戶</h1>
  </div>
  <div class="new-user-form-container">
    <div class="form-input input-item-title">
      <label>用戶範圍：</label>
      <div class="input-embed-input-container">
        <label>內部：</label>
        <input class="input-embed-input" type="radio" value="internal" v-model="in_ex" selected/>
        <label>外部：</label>
        <input class="input-embed-input" type="radio" value="external" v-model="in_ex" />
      </div>
    </div>
    <input class="form-input" placeholder="用戶編號：" v-model="staffNumber" />
    <input class="form-input" placeholder="用戶名稱：" v-model="userName" />
    <input class="form-input" placeholder="聯絡電話：" v-model="userContact" type="email" />
    <input class="form-input" placeholder="用戶電郵：" v-model="userEmail" v-if="this.in_ex === 'internal'" />
    <input class="form-input" placeholder="外部用戶部門：" v-model="externalUserDepartment" v-if="this.in_ex === 'external'" />
    <input class="form-input" placeholder="內部用戶部門：" v-model="internalUserDepartment" v-if="this.in_ex === 'internal'" />
    <button class="form-input submit-btn" @click="submit()">新增</button>
  </div>
</div>
</template>

<script>
export default {
  data() {
    return {
      in_ex: null,
      staffNumber: null,
      userContact: null,
      userEmail: null,
      userName: null,
      externalUserDepartment: null,
      internalUserDepartment: null,
      addNewInternalUserApi: "http://localhost:8888/index.php/api/internal_user/new",
      addNewExternalUserApi: "http://localhost:8888/index.php/api/external_user/new"
    }
  },
  methods: {
    submit() {
      if (this.staffNumber != null) {
        if (this.in_ex === 'internal') {
          this.$http.post(this.addNewInternalUserApi, JSON.stringify({
              "staffNumber": this.staffNumber,
              "userName": this.userName,
              "userContact": this.userContact,
              "userEmail": this.userEmail,
              "department": this.internalUserDepartment
            }))
            .then((response) => {
              if (response.data.message == 1) {
                swal("新增成功！", {
                  icon: "success"
                });
                this.resetInput();
              }
              else {
                swal("發生問題，請再試一次！", {
                  icon: "error"
                });
              }
            })
        }
        else if (this.in_ex === 'external') {
          this.$http.post(this.addNewExternalUserApi, JSON.stringify({
            "staffNumber": this.staffNumber,
            "userName": this.userName,
            "userContact": this.userContact,
            "department": this.externalUserDepartment
          }))
          .then((response) => {
            if (response.data.message == 1) {
              swal("新增成功！", {
                icon: "success"
              });
              this.resetInput();
            }
            else {
              swal("發生問題，請再試一次！", {
                icon: "error"
              });
            }
          })
        }
      }
      else {
        swal("請輸入用戶編號！", {
          icon: "error"
        });
      }
    },
    resetInput() {
      this.in_ex = null;
      this.staffNumber = null;
      this.userContact = null;
      this.userEmail = null;
      this.userName = null;
      this.externalUserDepartment = null;
      this.internalUserDepartment = null;
    }
  }
}
</script>

<style>
.new-user-container {
  min-height: calc(100vh - var(--footerHeight));
  width: auto;
  margin-left: var(--leftBar);
  padding: 36px;
  /* background-image: url("../../static/images/pexels-photo-370474.jpeg"); */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.new-user-form-container {
  height: auto;
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 36px;
}
</style>
