<template>
<div class="search-record-container">
  <div class="edit-panel-container">
    <div class="close-btn-container">
      <div class="close-btn" @click="closePanel()">&times;</div>
    </div>
    <div class="edit-panel">
      <h1>FMM{{ editingRecord.FormID }} 表單記錄</h1>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">領取人：</p>
          <input class="form-input" placeholder="領取人" v-model="editingRecord.name" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">日期：</p>
          <input class="form-input" placeholder="日期" type="date" v-model="editingRecord.date" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">職員/學生證號碼：</p>
          <input class="form-input" placeholder="職員/學生證號碼" v-model="editingRecord.staffNumber" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">部門：</p>
          <input class="form-input" placeholder="部門" v-model="editingRecord.department" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">預期歸還：</p>
          <input class="form-input" placeholder="預期歸還" type="date" v-model="editingRecord.dateOfReturn" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">電話：</p>
          <input class="form-input" placeholder="電話" v-model="editingRecord.userContact" />
        </div>
      </div>
      <div class="form-input edit-panel-row" v-for="item in editingItems" :key="item.key">
        <label class="item-title">項目：{{ item.item }}</label>
        <div class="row-item">
          <p class="row-title">器材名稱及型號：</p>
          <input class="form-input" placeholder="器材名稱及型號" v-model="item.assetsModel" />
        </div>
        <div class="row-item">
          <p class="row-title">器材財產編號：</p>
          <input class="form-input" placeholder="器材財產編號" v-model="item.assetsNo" />
        </div>
        <div class="row-item">
          <p class="row-title">用途及使用地點：</p>
          <input class="form-input" placeholder="用途及使用地點" v-model="item.useLoctaion" />
        </div>
        <div class="row-item">
          <p class="row-title">還件人：</p>
          <input class="form-input" placeholder="還件人" v-model="item.returnName" />
        </div>
        <div class="row-item">
          <p class="row-title">還件日期：</p>
          <input class="form-input" placeholder="還件日期" type="date" v-model="item.returnDate" />
        </div>
      </div>
      <!-- <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">項目數量：</p>
          <div class="form-input">
            <div class="item-amount">
              <button class="form-item-button" @click="dropOne()">-</button>
              <span class="show-amount">{{ newItemsAmount }}</span>
              <button class="form-item-button" @click="addOne()">+</button>
            </div>
          </div>
        </div>
      </div> -->
      <div class="form-input edit-panel-row" v-for="item in newItemsAmount" :key="item.ItemRecordID">
        <label class="item-title">項目：{{ item + editingItems.length }}</label>
        <div class="row-item">
          <p class="row-title">器材名稱及型號：</p>
          <input class="form-input" placeholder="器材名稱及型號" v-model="newItems.assetsModel[item - 1]" />
        </div>
        <div class="row-item">
          <p class="row-title">器材財產編號：</p>
          <input class="form-input" placeholder="器材財產編號" v-model="newItems.assetsNo[item - 1]" />
        </div>
        <div class="row-item">
          <p class="row-title">用途及使用地點：</p>
          <input class="form-input" placeholder="用途及使用地點" v-model="newItems.useLoctaion[item - 1]" />
        </div>
        <div class="row-item">
          <p class="row-title">還件人：</p>
          <input class="form-input" placeholder="還件人" v-model="newItems.returnName[item - 1]" />
        </div>
        <div class="row-item">
          <p class="row-title">還件日期：</p>
          <input class="form-input" placeholder="還件日期" type="date" v-model="newItems.returnDate[item - 1]" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">備註：</p>
          <input class="form-input" placeholder="備註" v-model="editingRecord.remark" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">交件人：</p>
          <input class="form-input" placeholder="交件人" v-model="editingRecord.deliveryPerson" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">交件日期：</p>
          <input class="form-input" placeholder="交件日期" type="date" v-model="editingRecord.deliveryDate" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">收件人：</p>
          <input class="form-input" placeholder="收件人" v-model="editingRecord.returnPerson" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">收件日期：</p>
          <input class="form-input" placeholder="收件日期" type="date" v-model="editingRecord.returnDate" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <p class="row-title">已還：</p>
          <input class="form-input" placeholder="已還" type="checkbox" v-model="editingRecord.isReturn" />
        </div>
      </div>
      <div class="edit-panel-row">
        <div class="row-item">
          <div class="submit-btn update-btn group" @click="updateRecord()">
            <p>更新</p>
          </div>
          <router-link class="submit-btn update-btn group" :to="{ name: 'printForm', params : { FormID: editingRecord.FormID}}">
            <p>列印</p>
          </router-link>
        </div>
      </div>
    </div>
  </div>
  <div class="title">
    <h1>查找及更新外部記錄</h1>
  </div>
  <div class="title">
    <div class="edit-panel-row search-input">
      <div class="row-item">
        <p class="row-title">搜尋表單：</p>
        <input class="form-input" placeholder="請輸入搜尋條件" v-model="search" />
      </div>
    </div>
  </div>
  <div class="all-fat-card-container">
    <div class="fat-card-item" v-for="record in filteredRecords" :key="record.key" v-if="record.isReturn == true">
      <div class="fat-card-info">
        <div class="fat-card-text-container">
          <h2>FMM{{ record.FormID }}</h2>
          <p>領取人：{{ record.name }}</p>
          <p>日期：{{ record.date }}</p>
          <p>職員/學生證號碼：{{ record.staffNumber }}</p>
          <p>電話：{{ record.userContact }}</p>
          <p>是否已還：是</p>
        </div>
        <div class="fat-card-img-container">
          <img :src="'./static/images/file.svg'" />
        </div>
      </div>
      <button class="fat-card-edit-btn" @click="editRecord(record)">查看更多</button>
    </div>
    <div v-else class="fat-card-item" style="background-color:deepskyblue">
      <div class="fat-card-info">
        <div class="fat-card-text-container">
          <h2>FMM{{ record.FormID }}</h2>
          <p>領取人：{{ record.name }}</p>
          <p>日期：{{ record.date }}</p>
          <p>職員/學生證號碼：{{ record.staffNumber }}</p>
          <p>電話：{{ record.userContact }}</p>
          <p>是否已還：否</p>
        </div>
        <div class="fat-card-img-container">
          <img :src="'./static/images/file.svg'" />
        </div>
      </div>
      <button class="fat-card-edit-btn" @click="editRecord(record)">查看更多</button>
    </div>
  </div>
</div>
</template>

<script>
import config from '../config.json';
export default {
  data() {
    return {
      records: [],
      editingRecord: [],
      editingItems: [],
      newItems: {
        item: [],
        assetsModel: [],
        assetsNo: [],
        useLoctaion: [],
        returnName: [],
        returnDate: []
      },
      newItemsAmount: 0,
      getRecordApi: config.URL + config.getRecordApi,
      getOneRecordItemsApi: config.URL + config.getOneRecordItemsApi,
      updateRecordApi: config.URL + config.updateRecordApi,
      search: ""
    }
  },
  computed: {
    filteredRecords: function() {
      return this.records.filter((record) => {
        return record.FormID.match(this.search) || record.name.match(this.search) || record.staffNumber.match(this.search) || record.userContact.match(this.search) || record.date.match(this.search);
      })
    }
  },
  methods: {
    addOne() {
      this.newItemsAmount += 1;
      if (this.newItemsAmount + this.editingItems.length > 10) {
        this.newItemsAmount = 10 - this.editingItems.length;
        swal("最多只能填寫十項！", {
          icon: "error"
        });
      }
    },
    dropOne() {
      this.newItemsAmount -= 1;
      if (this.newItemsAmount <= 0) {
        this.newItemsAmount = 0;
      }
    },
    getAllRecords() {
      this.$http.get(this.getRecordApi)
        .then((response) => {
          this.records = response.data;
        })
    },
    getOneRecordItems() {
      this.$http.post(this.getOneRecordItemsApi, JSON.stringify({
          "formID": this.editingRecord.FormID
        }))
        .then((response) => {
          this.editingItems = response.data;
        })
    },
    editRecord(record) {
      $(".edit-panel-container").css('display', 'flex');
      this.editingRecord = [];
      this.editingRecord = JSON.parse(JSON.stringify(record));
      this.getOneRecordItems();
    },
    closePanel() {
      $(".edit-panel-container").hide();
    },
    updateRecord() {
      // console.log(this.newItems);
      this.$http.post(this.updateRecordApi, JSON.stringify({
          "editingRecord": this.editingRecord,
          "editingItems": this.editingItems
        }))
        .then((response) => {
          // console.log(response.data);
          if (response.data.message == 1) {
            swal("修改成功！", {
              icon: "success",
            });
            $(".edit-panel-container").hide();
            this.record = [];
            this.getAllRecords();
          } else {
            swal("修改失敗！", {
              icon: "error"
            });
          }
        })
    },
    printForm() {
      this.$router.push({
        path: 'printForm',
        props: {
          default: true,
          "FormID": this.editingRecord.FormID
        }
      });
    },
  },
  created() {
    this.getAllRecords();
    swal("提提您~", "您可以在「查看更多」中修改表單", "info");
  }
}
</script>

<style scoped>
.search-record-container {
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

.edit-panel {
  overflow: scroll;
}

.search-input:hover::after {
  position: absolute;
  left: calc(20% + 24px);
  content: "根據領取人、日期、ID、電話或表單編號搜尋（不用輸入FMM）";
  color: red;
  font-size: 14px;
}
</style>
