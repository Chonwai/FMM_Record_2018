<template>
<div class="new-record-container">
  <div class="title">
    <h1>新增表單</h1>
  </div>
  <div class="new-record-form-container">
    <!-- <div class="form-input input-item-title">
      <label>表單編號：</label>
      <div class="input-embed-input-container">
        <span class="input-embed-input">FMM{{ recordNumber }}</span>
      </div>
    </div> -->
    <div class="form-input input-item-title">
      <label>借出範圍：</label>
      <div class="input-embed-input-container">
        <label>內部：</label>
        <input class="input-embed-input" type="radio" value="internal" v-model="in_ex" selected />
        <label>外部：</label>
        <input class="input-embed-input" type="radio" value="external" v-model="in_ex" />
      </div>
    </div>
    <input class="form-input" placeholder="領取人：" v-model="name" />
    <div class="form-input input-item-title">
      <label>日期：</label>
      <div class="input-embed-input-container">
        <input class="input-embed-input" type="date" v-model="date" />
      </div>
    </div>
    <!-- <input class="form-input" placeholder="職員/學生證號碼：" v-model="staffNumber" /> -->
    <div class="form-input input-item-title">
      <label>職員/學生證號碼：</label>
      <div class="input-embed-input-container">
        <input class="input-embed-input" placeholder="(Example: XXXX-X)" v-model="staffNumber" />
        <button class="input-embed-input submit-btn" @click="searchByStaffNumber()">根據ID搜尋用戶資料</button>
      </div>
    </div>
    <input class="form-input" placeholder="部門：" v-model="department" />
    <!-- <input class="form-input" placeholder="預期歸還：" v-model="dateOfReturn"/> -->
    <div class="form-input input-item-title">
      <label>預期歸還：</label>
      <div class="input-embed-input-container">
        <input class="input-embed-input" type="date" v-model="dateOfReturn" />
      </div>
    </div>
    <div class="form-input input-item-title">
      <label>電話：</label>
      <div class="input-embed-input-container">
        <input class="input-embed-input" placeholder="(Example: XXXX)" v-model="contact" />
        <button class="input-embed-input submit-btn" @click="searchByPhone()">根據電話搜尋用戶資料</button>
      </div>
    </div>
    <div class="form-input input-item-title">
      <label>項目數量：</label>
      <div class="item-amount">
        <button class="form-item-button" @click="dropOne()">-</button>
        <span class="show-amount">{{ itemAmount }}</span>
        <button class="form-item-button" @click="addOne()">+</button>
      </div>
    </div>
    <div class="form-input item-form" v-for="item in itemAmount" :key="item.key">
      <label class="item-title">項目：{{ item }}</label>
      <input class="form-input" placeholder="器材名稱及型號：" v-model="assetsModel[item - 1]" />
      <input class="form-input" placeholder="器材財產編號：" v-model="assetsNo[item - 1]" />
      <input class="form-input" placeholder="用途及使用地點：" v-model="useLoctaion[item - 1]" />
      <input class="form-input" placeholder="還件人：" v-model="returnName[item - 1]" />
      <div class="form-input input-item-title">
        <label>還件日期：</label>
        <input class="input-embed-input" type="date" v-model="returnDate[item - 1]" />
      </div>
    </div>
    <textarea class="form-input" placeholder="備註：" v-model="remark" />
    <input class="form-input" placeholder="交件人：" v-model="deliveryPerson"/>
    <div class="form-input input-item-title">
      <label>交件日期：</label>
      <div class="input-embed-input-container">
        <input class="input-embed-input" type="date" v-model="deliveryDate"/>
      </div>
    </div>
    <input class="form-input" placeholder="收件人：" v-model="receiver"/>
    <div class="form-input input-item-title">
      <label>收件日期：</label>
      <div class="input-embed-input-container">
        <input class="input-embed-input" type="date" v-model="receivedDate"/>
      </div>
    </div>
    <div class="form-input input-item-title">
      <label>已還：</label>
      <div class="input-embed-input-container">
        <input class="input-embed-input" type="checkbox" v-model="isReturn"/>
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
      newRecordApi: config.URL + config.newRecordApi,
      getLastRecordNumberApi: config.URL + config.getLastRecordNumberApi,
      searchUserByContactApi: config.URL + config.searchUserByContactApi,
      searchUserByStaffNumberApi: config.URL + config.searchUserByStaffNumberApi,
      recordNumber: 0,
      name: null,
      date: null,
      staffNumber: null,
      department: null,
      dateOfReturn: null,
      contact: null,
      itemAmount: 0,
      assetsModel: [],
      assetsNo: [],
      useLoctaion: [],
      returnName: [],
      returnDate: [],
      remark: null,
      deliveryPerson: null,
      deliveryDate: null,
      receiver: null,
      receivedDate: null,
      isReturn: false,
      in_ex: "external",
      inputDataFlag: 0,
      getUserData: null
    }
  },
  methods: {
    addOne() {
      this.itemAmount += 1;
      if (this.itemAmount > 10) {
        this.itemAmount = 10;
        swal("最多只能填寫十項！", {
          icon: "error"
        });
      }
    },
    dropOne() {
      this.itemAmount -= 1;
      if (this.itemAmount <= 0) {
        this.itemAmount = 0;
      }
    },
    findLastRecordNumber() {
      this.$http.get(this.getLastRecordNumberApi)
        .then((response) => {
          this.recordNumber = response.data.recordNumber;
        })
    },
    searchByPhone() {
      if (this.contact != "") {
        this.$http.post(this.searchUserByContactApi, JSON.stringify({
            "userContact": this.contact
          }))
          .then((response) => {
            if (response.data.message == 0) {
              swal(":( 找不到用戶資料，請稍後新增用戶！", {
                icon: "error"
              });
            } else {
              swal("成功填入用戶信息！", {
                icon: "success"
              });
              this.getUserData = response.data;
              this.department = this.getUserData[0].department;
              this.staffNumber = this.getUserData[0].staffNumber;
              this.name = this.getUserData[0].userName;
            }
          })
      } else {
        swal("請填寫電話才能搜尋！", {
          icon: "error"
        });
      }
    },
    searchByStaffNumber() {
      console.log(this.staffNumber);
      if (this.staffNumber != "") {
        this.$http.post(this.searchUserByStaffNumberApi, JSON.stringify({
            "staffNumber": this.staffNumber
          }))
          .then((response) => {
            if (response.data.message == 0) {
              swal(":( 找不到用戶資料，請稍後新增用戶！", {
                icon: "error"
              });
            } else {
              swal("成功填入用戶信息！", {
                icon: "success"
              });
              this.getUserData = response.data;
              this.department = this.getUserData[0].department;
              this.staffNumber = this.getUserData[0].staffNumber;
              this.name = this.getUserData[0].userName;
              this.contact = this.getUserData[0].userContact;
            }
          })
      } else {
        swal("請填寫職員/學生證號碼才能搜尋！", {
          icon: "error"
        });
      }
    },
    submit() {
      this.checkInputData();
      if (this.inputDataFlag == 1) {
        this.$http.post(this.newRecordApi, JSON.stringify({
            "name": this.name,
            "date": this.date,
            "staffNumber": this.staffNumber,
            "department": this.department,
            "dateOfReturn": this.dateOfReturn,
            "contact": this.contact,
            "itemAmount": this.itemAmount,
            "assetsModel": this.assetsModel,
            "assetsNo": this.assetsNo,
            "useLoctaion": this.useLoctaion,
            "returnName": this.returnName,
            "returnDate": this.returnDate,
            "remark": this.remark,
            "deliveryPerson": this.deliveryPerson,
            "deliveryDate": this.deliveryDate,
            "receiver": this.receiver,
            "receivedDate": this.receivedDate,
            "isReturn": this.isReturn,
            "in_ex": this.in_ex
          }))
          .then((response) => {
            if (response.data.message == 1) {
              swal("新增成功！新表單編號為" + response.data.newFormID.FormID, {
                icon: "success"
              });
            } else if (response.data.message == 0) {
              swal("新增失敗，請填寫完整資料再試一次", {
                icon: "error"
              });
            }
            console.log(response.data);
            this.inputDataFlag = 0;
            this.resetInput();
          })
      }
    },
    checkInputData() {
      if (this.name == null) {
        swal("領取人名稱未填入", {
          icon: "error"
        });
      } else if (this.contact == null) {
        swal("聯絡電話未填入", {
          icon: "error"
        });
      } else if (this.assetsModel == "" || this.assetsNo == "") {
        swal("借件資料未填入", {
          icon: "error"
        });
      } else if (this.deliveryPerson == null) {
        swal("交件人名稱未填入", {
          icon: "error"
        });
      } else {
        this.inputDataFlag = 1;
      }
    },
    resetInput() {
      this.recordNumber = 0,
        this.name = null,
        this.date = null,
        this.staffNumber = null,
        this.department = null,
        this.dateOfReturn = null,
        this.contact = null,
        this.itemAmount = 0,
        this.assetsModel = [],
        this.assetsNo = [],
        this.useLoctaion = [],
        this.returnName = [],
        this.returnDate = [],
        this.remark = null,
        this.deliveryPerson = null,
        this.deliveryDate = null,
        this.receiver = null,
        this.receivedDate = null,
        this.isReturn = false,
        this.inputDataFlag = 0
    }
  },
  created() {
    this.itemAmount = 0;
    this.findLastRecordNumber();
    swal("提提您~", "記得填寫「電話」及「職員/學生證號碼」等資料。", "info");
  }
}
</script>

<style scoped>
.new-record-container {
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

/* select {
  padding: 8px;
} */

.new-record-form-container {
  height: auto;
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 36px;
}

.item-title {
  display: block;
}

.item-amount {
  height: 100%;
  display: flex;
  flex: 1;
  flex-direction: row;
  justify-content: flex-end;
}

.form-item-button {
  font-size: 100%;
  height: 100%;
  width: 24px;
  cursor: pointer;
  border: none;
  background-color: var(--turquoise);
  color: var(--white);
}

.show-amount {
  padding-left: 12px;
  padding-right: 12px;
}

.input-embed-input-container {
  display: flex;
  align-items: center;
}
</style>
