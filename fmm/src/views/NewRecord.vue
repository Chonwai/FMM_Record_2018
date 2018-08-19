<template>
<div class="new-record-container">
  <div class="title">
    <h1>新增表單</h1>
  </div>
  <div class="new-record-form-container">
    <input class="form-input" placeholder="表單編號：" />
    <input class="form-input" placeholder="領取人：" />
    <input class="form-input" placeholder="日期：" />
    <input class="form-input" placeholder="職員/學生證號碼：" />
    <input class="form-input" placeholder="部門：" />
    <input class="form-input" placeholder="預期歸還：" />
    <input class="form-input" placeholder="電話：" />
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
      <input class="form-input" placeholder="器材名稱及型號：" v-model="assetsModel[item - 1]"/>
      <input class="form-input" placeholder="器材財產編號：" v-model="assetsNo[item - 1]"/>
      <input class="form-input" placeholder="用途及使用地點：" v-model="useLoctaion[item - 1]"/>
      <input class="form-input" placeholder="還件人：" v-model="returnName[item - 1]"/>
      <div class="form-input input-item-title">
        <label>還件日期：</label>
        <input class="input-embed-input" type="date" v-model="returnDate[item - 1]"/>
      </div>
    </div>
    <textarea class="form-input" placeholder="備註：" v-model="remark" />
    <input class="form-input" placeholder="交件人：" />
    <div class="form-input input-item-title">
      <label>交件日期：</label>
      <input class="input-embed-input" type="date"/>
    </div>
    <input class="form-input" placeholder="收件人：" />
    <div class="form-input input-item-title">
      <label>收件日期：</label>
      <input class="input-embed-input" type="date"/>
    </div>
    <button class="form-input" @click="submit()">新增</button>
  </div>
</div>
</template>

<script>
export default {
  data() {
    return {
      itemAmount: 0,
      assetsModel: [],
      assetsNo: [],
      useLoctaion: [],
      returnName: [],
      returnDate: [],
      remark: ""
    }
  },
  methods: {
    addOne() {
      this.itemAmount += 1;
    },
    dropOne() {
      this.itemAmount -= 1;
      if (this.itemAmount <= 0) {
        this.itemAmount = 0;
      }
    },
    submit() {
      console.log(this.assetsModel, this.assetsNo, this.useLoctaion, this.returnName, this.returnDate);
    }
  },
  created() {
    this.itemAmount = 0;
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
</style>
