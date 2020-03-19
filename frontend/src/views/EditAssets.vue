<template>
<div class="edit-assets-container">
  <div class="edit-panel-container">
    <div class="close-btn-container">
      <div class="close-btn" @click="closePanel()">&times;</div>
    </div>
    <div class="edit-panel">
      <h1>修改設備資料</h1>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">財產名稱：</p>
          <input class="form-input" placeholder="財產名稱" v-model="editingAsset.Item" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">財產編號：</p>
          <input class="form-input" placeholder="財產編號" v-model="editingAsset.ID_Number" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">財產描述：</p>
          <input class="form-input" placeholder="財產描述" v-model="editingAsset.Description" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">財產種類：</p>
          <input class="form-input" placeholder="財產種類" v-model="editingAsset.Category" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">財產狀態：</p>
          <input class="form-input" placeholder="財產狀態" v-model="editingAsset.State" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">購買日期：</p>
          <input class="form-input" placeholder="購買日期" v-model="editingAsset.Acquired_Date" type="date" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">購買價格：</p>
          <input class="form-input" placeholder="購買價格" v-model="editingAsset.Purchase_Price" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">當前數量：</p>
          <input class="form-input" placeholder="當前數量" v-model="editingAsset.Current_Value" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">財產地點：</p>
          <input class="form-input" placeholder="財產地點" v-model="editingAsset.Location" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">生產廠商：</p>
          <input class="form-input" placeholder="生產廠商" v-model="editingAsset.Manufacturer" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">財產型號：</p>
          <input class="form-input" placeholder="財產型號" v-model="editingAsset.Model" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">財產信息：</p>
          <input class="form-input" placeholder="財產信息" v-model="editingAsset.Comments" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">Owner：</p>
          <input class="form-input" placeholder="Owner" v-model="editingAsset.Owner" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">退役日期：</p>
          <input class="form-input" placeholder="退役日期" v-model="editingAsset.Retired_Date" type="date" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <div class="submit-btn update-btn group" @click="updateAsset()">
            <p>更新</p>
          </div>
          <div class="submit-btn update-btn group" @click="deleteAsset()">
            <p>刪除</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="title">
    <h1>設備資料</h1>
  </div>
  <!-- <div class="title">
    <div class="edit-panel-row search-input">
      <div class="row-item">
        <p class="row-title">搜尋用戶：</p>
        <input class="form-input" placeholder="請輸入搜尋條件" v-model="search" />
      </div>
    </div>
  </div> -->
  <div class="all-fat-card-container">
    <div class="fat-card-item" v-for="asset in assets" :key="asset.ID">
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
      search: "",
      getAllAssetsApi: config.URL + config.getAllAssetsApi,
      updateAssetsApi: config.URL + config.updateAssetsApi,
      deleteAssetsApi: config.URL + config.deleteAssetsApi
    }
  },
  computed: {
    filteredAssest: function() {
      console.log(this.assets);
      console.log(this.search);
      return this.assets.filter((asset) => {
        console.log(asset);
        return asset.Item.match(this.search);
      })
    }
  },
  methods: {
    getAllAsset() {
      this.$http.get(this.getAllAssetsApi)
        .then((response) => {
          this.assets = response.data;
        })
    },
    editAssets(asset) {
      $(".edit-panel-container").css('display', 'flex');
      this.editingAsset = [];
      this.editingAsset = JSON.parse(JSON.stringify(asset));
      // console.log(this.assets);
    },
    closePanel() {
      $(".edit-panel-container").hide();
    },
    updateAsset() {
      this.$http.post(this.updateAssetsApi, JSON.stringify(this.editingAsset))
        .then((response) => {
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
    },
    deleteAsset() {
      swal({
          title: "確定要刪除" + this.editingAsset.Item + "嗎？",
          text: "進行刪除操作後，該資料便不能再復原",
          icon: "warning",
          buttons: true,
          dangerMode: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            this.$http.post(this.deleteAssetsApi, JSON.stringify({"ID": this.editingAsset.ID}))
              .then((response) => {
                if (response.data.message == 1) {
                  swal("該資料已成功刪除！", {
                    icon: "success",
                  });
                  $(".edit-panel-container").hide();
                  this.assets = [];
                  this.getAllAsset();
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

.search-input:hover::after {
  position: absolute;
  left: calc(20% + 24px);
  content: "根據領取人、日期、ID、電話或表單編號搜尋（不用輸入FMM）";
  color: red;
  font-size: 14px;
}
</style>
