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
      <input class="form-input" placeholder="購買日期：" v-model="editingAsset.Acquired_Date" type="datetime"/>
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
      <input class="form-input" placeholder="退役日期：" v-model="editingAsset.Retired_Date"/>
      <div class="form-input submit-btn update-btn" @click="updateAsset()">
        <p>更新</p>
      </div>
    </div>
  </div>
  <div class="title">
    <h1>設備資料</h1>
  </div>
  <div class="all-assets-container">
    <div class="assets-item" v-for="asset in assets" :key="asset.key">
      <div class="assets-info">
        <div class="text-container">
          <h2>{{ asset.Item }}</h2>
          <p>財產編號：{{ asset.ID_Number }}</p>
          <p>財產種類：{{ asset.Category }}</p>
          <p>財產狀態：{{ asset.State }}</p>
          <p>財產地點：{{ asset.Location }}</p>
        </div>
        <div class="img-container">
          <img :src="'../../static/images/assets/' + asset.Attachments" />
        </div>
      </div>
      <button class="edit-btn" @click="editAssets(asset)">修改</button>
    </div>
  </div>
</div>
</template>

<script>
export default {
  data() {
    return {
      assets: [],
      editingAsset: [],
      getAllAssetsApi: "http://localhost:8888/index.php/api/assets",
      updateAssetsApi: "http://localhost:8888/index.php/api/assets"
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
      this.editingAsset = asset;
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

.title h1 {
  margin: 0px;
}

p {
  margin: 8px;
}

.all-assets-container {
  padding: 12px;
}

.edit-panel-container {
  position: fixed;
  display: block;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background-color: rgba(0, 0, 0, 0.7);
}

.assets-item {
  display: flex;
  flex-direction: column;
  margin: 24px;
  padding: 12px 24px 12px 24px;
  color: var(--white);
  background-color: var(--turquoise);
  border-radius: var(--bigBorderRadius);
}

.assets-info {
  display: flex;
}

.text-container {
  display: flex;
  flex: 3;
  flex-direction: column;
}

.img-container {
  display: flex;
  flex: 1;
  padding: 12px;
  /* border: 3px solid var(--white); */
  /* border-radius: var(--mediumBorderRadius); */
}

.img-container>img {
  height: 100%;
  width: 100%;
}

.edit-btn {
  height: auto;
  width: auto;
  margin: 8px;
  padding: 8px;
  background-color: var(--transparent);
  color: var(--white);
  font-size: 16px;
  border-radius: var(--mediumBorderRadius);
  border: 3px solid white;
  cursor: pointer;
}

.update-btn {
  height: auto;
  margin: 8px;
  padding: 8px;
  background-color: var(--transparent);
  color: var(--turquoise);
  font-size: 16px;
  border-radius: var(--mediumBorderRadius);
  border: 3px solid var(--turquoise);
  cursor: pointer;
}

.update-btn p {
  margin: 0px;
  display: flex;
  justify-content: center;
  align-items: center;
  color: var(--greensea);
}

.edit-btn:hover {
  animation-name: scale;
  animation-duration: 1s;
}

.edit-panel-container {
  display: none;
  justify-content: center;
  align-items: center;
  z-index: 999;
}

.close-btn-container {
  position: absolute;
  right: 20px;
  top: 0px;
  z-index: 999;
  color: var(--white);
  font-size: 48px;
  cursor: pointer;
}

.edit-panel {
  height: 70vh;
  width: 70vw;
  overflow: scroll;
  background-color: var(--white);
  display: flex;
  align-items: center;
  flex-direction: column;
  border-radius: var(--bigBorderRadius);
  border: 3px solid var(--turquoise);
  padding: 24px;
  animation: bigbang;
  animation-duration: 0.5s;
}
</style>
