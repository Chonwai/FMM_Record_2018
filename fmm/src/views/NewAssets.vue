<template>
<div class="new-assets-container">
  <div class="title">
    <h1>新增設備資料</h1>
  </div>
  <div class="new-assets-form-container">
    <div class="edit-panel-row">
      <div class="row-item">
        <label class="row-title">財產名稱：</label>
        <input class="form-input" placeholder="財產名稱" v-model="Item" />
      </div>
    </div>
    <div class="edit-panel-row">
      <div class="row-item">
        <label class="row-title">財產編號：</label>
        <input class="form-input" placeholder="財產編號" v-model="ID_Number" />
      </div>
    </div>
    <div class="edit-panel-row">
      <div class="row-item">
        <label class="row-title">財產描述：</label>
        <input class="form-input" placeholder="財產描述" v-model="Description" />
      </div>
    </div>
    <div class="edit-panel-row">
      <div class="row-item">
        <label class="row-title">財產種類：</label>
        <input class="form-input" placeholder="財產種類" v-model="Category" />
      </div>
    </div>
    <div class="edit-panel-row">
      <div class="row-item">
        <label class="row-title">財產狀態：</label>
        <input class="form-input" placeholder="財產狀態" v-model="State" />
      </div>
    </div>
    <div class="edit-panel-row">
      <div class="row-item">
        <label class="row-title">購買日期：</label>
        <input class="form-input" placeholder="購買日期" v-model="Acquired_Date" type="date" />
      </div>
    </div>
    <div class="edit-panel-row">
      <div class="row-item">
        <label class="row-title">購買價格：</label>
        <input class="form-input" placeholder="購買價格" v-model="Purchase_Price" />
      </div>
    </div>
    <div class="edit-panel-row">
      <div class="row-item">
        <label class="row-title">當前數量：</label>
        <input class="form-input" placeholder="當前數量" v-model="Current_Value" />
      </div>
    </div>
    <div class="edit-panel-row">
      <div class="row-item">
        <label class="row-title">財產地點：</label>
        <input class="form-input" placeholder="財產地點" v-model="Location" />
      </div>
    </div>
    <div class="edit-panel-row">
      <div class="row-item">
        <label class="row-title">生產廠商：</label>
        <input class="form-input" placeholder="生產廠商" v-model="Manufacturer" />
      </div>
    </div>
    <div class="edit-panel-row">
      <div class="row-item">
        <label class="row-title">財產型號：</label>
        <input class="form-input" placeholder="財產型號" v-model="Model" />
      </div>
    </div>
    <div class="edit-panel-row">
      <div class="row-item">
        <label class="row-title">財產信息：</label>
        <input class="form-input" placeholder="財產信息" v-model="Comments" />
      </div>
    </div>
    <div class="edit-panel-row">
      <div class="row-item">
        <label class="row-title">Owner：</label>
        <input class="form-input" placeholder="Owner" v-model="Owner" />
      </div>
    </div>
    <div class="edit-panel-row">
      <div class="row-item">
        <label class="row-title">退役日期：</label>
        <input class="form-input" placeholder="退役日期" v-model="Retired_Date" type="date" />
      </div>
    </div>
    <button class="form-input submit-btn" @click="submit()">新增</button>
  </div>
</div>
</template>

<script>
import config from '../config.json';
export default {
  data() {
    return {
      Item: null,
      ID_Number: null,
      Description: null,
      Category: null,
      State: null,
      Acquired_Date: null,
      Purchase_Price: null,
      Current_Value: null,
      Location: null,
      Manufacturer: null,
      Model: null,
      Comments: null,
      Owner: null,
      Retired_Date: null,
      addNewAssetsApi: config.URL + config.addNewAssetsApi
    }
  },
  created() {
    //do something after creating vue instance
    swal("提提您~", "記得填寫「財產名稱」及「財產編號」等資料。", "info");
  },
  methods: {
    submit() {
      if (this.Item != null && this.ID_Number != null) {
        this.Purchase_Price == null ? this.Purchase_Price = 0 : this.Purchase_Price = this.Purchase_Price;
        this.Current_Value == null ? this.Current_Value = 1 : this.Current_Value = this.Current_Value;
        this.$http.post(this.addNewAssetsApi, JSON.stringify({
            "Item": this.Item,
            "ID_Number": this.ID_Number,
            "Description": this.Description,
            "Category": this.Category,
            "State": this.State,
            "Acquired_Date": this.Acquired_Date,
            "Purchase_Price": this.Purchase_Price,
            "Current_Value": this.Current_Value,
            "Location": this.Location,
            "Manufacturer": this.Manufacturer,
            "Model": this.Model,
            "Comments": this.Comments,
            "Owner": this.Owner,
            "Retired_Date": this.Retired_Date
          }))
          .then((response) => {
            if (response.data.message == 1) {
              swal("新增成功！", {
                icon: "success"
              });
            } else if (response.data.message == 0) {
              swal("發生問題，請再試一次！", {
                icon: "error"
              });
            }
          })
      }
      else {
        swal("請輸入「財產名稱」和「財產編號」", {
          icon: "error"
        });
      }
    },
    resetInput() {
      this.Item = null;
      this.ID_Number = null;
      this.Description = null;
      this.Category = null;
      this.State = null;
      this.Acquired_Date = null;
      this.Purchase_Price = 0;
      this.Current_Value = 1;
      this.Location = null;
      this.Manufacturer = null;
      this.Model = null;
      this.Comments = null;
      this.Owner = null;
    }
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

.new-assets-form-container {
  height: auto;
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 36px;
}

h1 {
  margin: 0px;
}
</style>
