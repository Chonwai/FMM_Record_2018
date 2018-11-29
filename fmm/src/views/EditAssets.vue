<template>
<div class="edit-assets-container">
  <div class="edit-panel-container">
    <div class="close-btn-container">
      <div class="close-btn" @click="closePanel()">&times;</div>
    </div>
    <div class="edit-panel">
      <h1>修改設備資料</h1>
      <input class="form-input" placeholder="財產名稱：" v-model="editingAsset.Item" />
      <input class="form-input" placeholder="財產編號：" v-model="editingAsset.ID_Number" />
      <input class="form-input" placeholder="財產描述：" v-model="editingAsset.Description" />
      <input class="form-input" placeholder="財產種類：" v-model="editingAsset.Category" />
      <input class="form-input" placeholder="財產狀態：" v-model="editingAsset.State" />
      <input class="form-input" placeholder="購買日期：" v-model="editingAsset.Acquired_Date" type="datetime" />
      <input class="form-input" placeholder="購買價格：" v-model="editingAsset.Purchase_Price" />
      <input class="form-input" placeholder="當前數量：" v-model="editingAsset.Current_Value" />
      <input class="form-input" placeholder="財產地點：" v-model="editingAsset.Location" />
      <input class="form-input" placeholder="生產廠商：" v-model="editingAsset.Manufacturer" />
      <input class="form-input" placeholder="財產型號：" v-model="editingAsset.Model" />
      <input class="form-input" placeholder="財產信息：" v-model="editingAsset.Comments" />
      <input class="form-input" placeholder="Owner：" v-model="editingAsset.Owner" />
      <!-- <div class="form-input input-item-title">
        <label>退役日期：</label>
        <input class="input-embed-input" type="date" v-model="editingAsset.Retired_Date" />
      </div> -->
      <input class="form-input" placeholder="退役日期：" v-model="editingAsset.Retired_Date" />
      <div class="form-input submit-btn update-btn" @click="updateAsset()">
        <p>更新</p>
      </div>
    </div>
  </div>
  <div class="title">
    <h1>設備資料</h1>
  </div>
  <div class="all-fat-card-container">
    <div class="fat-card-item" v-for="asset in assets" :key="asset.key">
      <div class="fat-card-info">
        <div class="fat-card-text-container">
          <h2>{{ asset.Item }}</h2>
          <p>財產編號：{{ asset.ID_Number }}</p>
          <p>財產種類：{{ asset.Category }}</p>
          <p>財產狀態：{{ asset.State }}</p>
          <p>財產地點：{{ asset.Location }}</p>
        </div>
        <div class="fat-card-img-container">
          <img :src="'./static/images/assets/tools.svg'" />
        </div>
      </div>
      <button class="fat-card-edit-btn" @click="editAssets(asset)">修改</button>
    </div>
  </div>
</div>
</template>

<script>
import config from '../config.json'
export default {
  data() {
    return {
      assets: [],
      editingAsset: [],
      getAllAssetsApi: config.URL + config.getAllAssetsApi,
      updateAssetsApi: config.URL + config.updateAssetsApi
    }
  },
  methods: {
    getAllAsset() {
      this.$http.get(this.getAllAssetsApi)
        .then((response) => {
          this.assets = response.data
        })
    },
    editAssets(asset) {
      $(".edit-panel-container").css('display', 'flex');
      this.editingAsset = [];
      this.editingAsset = JSON.parse(JSON.stringify(asset));
    },
    closePanel() {
      $(".edit-panel-container").hide();
    },
    updateAsset() {
      // console.log(this.editingAsset);
      this.$http.post(this.updateAssetsApi, JSON.stringify(this.editingAsset))
        .then((response) => {
          // console.log(response.data);
          if (response.data.message == 1) {
            swal("修改成功！", {
              icon: "success",
            });
            $(".edit-panel-container").hide();
            this.assets = [];
            this.getAllAsset();
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
    this.getAllAsset();
  }
}
</script>

<style scoped>
.edit-assets-container {
  min-height: calc(100vh - var(--footerHeight));
  width: auto;
  margin-left: var(--leftBar);
  padding: 36px;
  /* background-image: url("../../static/images/paper2.png");
  background-position: center;
  background-repeat: repeat;
  background-size: cover; */
}
</style>
