webpackJsonp([6],{"4HXX":function(t,e){},"ZH/y":function(t,e,s){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var i=s("mvHQ"),a=s.n(i),r=s("DEN3"),o=s.n(r),n={data:function(){return{records:[],editingRecord:[],editingItems:[],newItems:{item:[],assetsModel:[],assetsNo:[],useLoctaion:[],returnName:[],returnDate:[]},newItemsAmount:0,getRecordApi:o.a.URL+o.a.getRecordApi,getOneRecordItemsApi:o.a.URL+o.a.getOneRecordItemsApi,updateRecordApi:o.a.URL+o.a.updateRecordApi,search:""}},computed:{filteredRecords:function(){var t=this;return this.records.filter(function(e){return e.FormID.match(t.search)||e.name.match(t.search)||e.staffNumber.match(t.search)||e.userContact.match(t.search)||e.date.match(t.search)})}},methods:{addOne:function(){this.newItemsAmount+=1,this.newItemsAmount+this.editingItems.length>10&&(this.newItemsAmount=10-this.editingItems.length,swal("最多只能填寫十項！",{icon:"error"}))},dropOne:function(){this.newItemsAmount-=1,this.newItemsAmount<=0&&(this.newItemsAmount=0)},getAllRecords:function(){var t=this;this.$http.get(this.getRecordApi).then(function(e){t.records=e.data})},getOneRecordItems:function(){var t=this;this.$http.post(this.getOneRecordItemsApi,a()({formID:this.editingRecord.FormID})).then(function(e){t.editingItems=e.data})},editRecord:function(t){$(".edit-panel-container").css("display","flex"),this.editingRecord=[],this.editingRecord=JSON.parse(a()(t)),this.getOneRecordItems()},closePanel:function(){$(".edit-panel-container").hide()},updateRecord:function(){var t=this;this.$http.post(this.updateRecordApi,a()({editingRecord:this.editingRecord,editingItems:this.editingItems})).then(function(e){1==e.data.message?(swal("修改成功！",{icon:"success"}),$(".edit-panel-container").hide(),t.record=[],t.getAllRecords()):swal("修改失敗！",{icon:"error"})})},printForm:function(){this.$router.push({path:"printForm",props:{default:!0,FormID:this.editingRecord.FormID}})}},created:function(){this.getAllRecords(),swal("提提您~","您可以在「查看更多」中修改表單","info")}},d={render:function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"search-record-container"},[s("div",{staticClass:"edit-panel-container"},[s("div",{staticClass:"close-btn-container"},[s("div",{staticClass:"close-btn",on:{click:function(e){t.closePanel()}}},[t._v("×")])]),t._v(" "),s("div",{staticClass:"edit-panel"},[s("h1",[t._v("FMM"+t._s(t.editingRecord.FormID)+" 表單記錄")]),t._v(" "),s("div",{staticClass:"edit-panel-row"},[s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("領取人：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.name,expression:"editingRecord.name"}],staticClass:"form-input",attrs:{placeholder:"領取人"},domProps:{value:t.editingRecord.name},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"name",e.target.value)}}})])]),t._v(" "),s("div",{staticClass:"edit-panel-row"},[s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("日期：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.date,expression:"editingRecord.date"}],staticClass:"form-input",attrs:{placeholder:"日期",type:"date"},domProps:{value:t.editingRecord.date},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"date",e.target.value)}}})])]),t._v(" "),s("div",{staticClass:"edit-panel-row"},[s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("職員/學生證號碼：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.staffNumber,expression:"editingRecord.staffNumber"}],staticClass:"form-input",attrs:{placeholder:"職員/學生證號碼"},domProps:{value:t.editingRecord.staffNumber},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"staffNumber",e.target.value)}}})])]),t._v(" "),s("div",{staticClass:"edit-panel-row"},[s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("部門：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.department,expression:"editingRecord.department"}],staticClass:"form-input",attrs:{placeholder:"部門"},domProps:{value:t.editingRecord.department},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"department",e.target.value)}}})])]),t._v(" "),s("div",{staticClass:"edit-panel-row"},[s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("預期歸還：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.dateOfReturn,expression:"editingRecord.dateOfReturn"}],staticClass:"form-input",attrs:{placeholder:"預期歸還",type:"date"},domProps:{value:t.editingRecord.dateOfReturn},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"dateOfReturn",e.target.value)}}})])]),t._v(" "),s("div",{staticClass:"edit-panel-row"},[s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("電話：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.userContact,expression:"editingRecord.userContact"}],staticClass:"form-input",attrs:{placeholder:"電話"},domProps:{value:t.editingRecord.userContact},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"userContact",e.target.value)}}})])]),t._v(" "),t._l(t.editingItems,function(e){return s("div",{key:e.key,staticClass:"form-input edit-panel-row"},[s("label",{staticClass:"item-title"},[t._v("項目："+t._s(e.item))]),t._v(" "),s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("器材名稱及型號：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:e.assetsModel,expression:"item.assetsModel"}],staticClass:"form-input",attrs:{placeholder:"器材名稱及型號"},domProps:{value:e.assetsModel},on:{input:function(s){s.target.composing||t.$set(e,"assetsModel",s.target.value)}}})]),t._v(" "),s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("器材財產編號：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:e.assetsNo,expression:"item.assetsNo"}],staticClass:"form-input",attrs:{placeholder:"器材財產編號"},domProps:{value:e.assetsNo},on:{input:function(s){s.target.composing||t.$set(e,"assetsNo",s.target.value)}}})]),t._v(" "),s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("用途及使用地點：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:e.useLoctaion,expression:"item.useLoctaion"}],staticClass:"form-input",attrs:{placeholder:"用途及使用地點"},domProps:{value:e.useLoctaion},on:{input:function(s){s.target.composing||t.$set(e,"useLoctaion",s.target.value)}}})]),t._v(" "),s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("還件人：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:e.returnName,expression:"item.returnName"}],staticClass:"form-input",attrs:{placeholder:"還件人"},domProps:{value:e.returnName},on:{input:function(s){s.target.composing||t.$set(e,"returnName",s.target.value)}}})]),t._v(" "),s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("還件日期：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:e.returnDate,expression:"item.returnDate"}],staticClass:"form-input",attrs:{placeholder:"還件日期",type:"date"},domProps:{value:e.returnDate},on:{input:function(s){s.target.composing||t.$set(e,"returnDate",s.target.value)}}})])])}),t._v(" "),t._l(t.newItemsAmount,function(e){return s("div",{key:e.ItemRecordID,staticClass:"form-input edit-panel-row"},[s("label",{staticClass:"item-title"},[t._v("項目："+t._s(e+t.editingItems.length))]),t._v(" "),s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("器材名稱及型號：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.newItems.assetsModel[e-1],expression:"newItems.assetsModel[item - 1]"}],staticClass:"form-input",attrs:{placeholder:"器材名稱及型號"},domProps:{value:t.newItems.assetsModel[e-1]},on:{input:function(s){s.target.composing||t.$set(t.newItems.assetsModel,e-1,s.target.value)}}})]),t._v(" "),s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("器材財產編號：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.newItems.assetsNo[e-1],expression:"newItems.assetsNo[item - 1]"}],staticClass:"form-input",attrs:{placeholder:"器材財產編號"},domProps:{value:t.newItems.assetsNo[e-1]},on:{input:function(s){s.target.composing||t.$set(t.newItems.assetsNo,e-1,s.target.value)}}})]),t._v(" "),s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("用途及使用地點：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.newItems.useLoctaion[e-1],expression:"newItems.useLoctaion[item - 1]"}],staticClass:"form-input",attrs:{placeholder:"用途及使用地點"},domProps:{value:t.newItems.useLoctaion[e-1]},on:{input:function(s){s.target.composing||t.$set(t.newItems.useLoctaion,e-1,s.target.value)}}})]),t._v(" "),s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("還件人：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.newItems.returnName[e-1],expression:"newItems.returnName[item - 1]"}],staticClass:"form-input",attrs:{placeholder:"還件人"},domProps:{value:t.newItems.returnName[e-1]},on:{input:function(s){s.target.composing||t.$set(t.newItems.returnName,e-1,s.target.value)}}})]),t._v(" "),s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("還件日期：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.newItems.returnDate[e-1],expression:"newItems.returnDate[item - 1]"}],staticClass:"form-input",attrs:{placeholder:"還件日期",type:"date"},domProps:{value:t.newItems.returnDate[e-1]},on:{input:function(s){s.target.composing||t.$set(t.newItems.returnDate,e-1,s.target.value)}}})])])}),t._v(" "),s("div",{staticClass:"edit-panel-row"},[s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("備註：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.remark,expression:"editingRecord.remark"}],staticClass:"form-input",attrs:{placeholder:"備註"},domProps:{value:t.editingRecord.remark},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"remark",e.target.value)}}})])]),t._v(" "),s("div",{staticClass:"edit-panel-row"},[s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("交件人：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.deliveryPerson,expression:"editingRecord.deliveryPerson"}],staticClass:"form-input",attrs:{placeholder:"交件人"},domProps:{value:t.editingRecord.deliveryPerson},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"deliveryPerson",e.target.value)}}})])]),t._v(" "),s("div",{staticClass:"edit-panel-row"},[s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("交件日期：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.deliveryDate,expression:"editingRecord.deliveryDate"}],staticClass:"form-input",attrs:{placeholder:"交件日期",type:"date"},domProps:{value:t.editingRecord.deliveryDate},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"deliveryDate",e.target.value)}}})])]),t._v(" "),s("div",{staticClass:"edit-panel-row"},[s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("收件人：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.returnPerson,expression:"editingRecord.returnPerson"}],staticClass:"form-input",attrs:{placeholder:"收件人"},domProps:{value:t.editingRecord.returnPerson},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"returnPerson",e.target.value)}}})])]),t._v(" "),s("div",{staticClass:"edit-panel-row"},[s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("收件日期：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.returnDate,expression:"editingRecord.returnDate"}],staticClass:"form-input",attrs:{placeholder:"收件日期",type:"date"},domProps:{value:t.editingRecord.returnDate},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"returnDate",e.target.value)}}})])]),t._v(" "),s("div",{staticClass:"edit-panel-row"},[s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("已還：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.isReturn,expression:"editingRecord.isReturn"}],staticClass:"form-input",attrs:{placeholder:"已還",type:"checkbox"},domProps:{checked:Array.isArray(t.editingRecord.isReturn)?t._i(t.editingRecord.isReturn,null)>-1:t.editingRecord.isReturn},on:{change:function(e){var s=t.editingRecord.isReturn,i=e.target,a=!!i.checked;if(Array.isArray(s)){var r=t._i(s,null);i.checked?r<0&&t.$set(t.editingRecord,"isReturn",s.concat([null])):r>-1&&t.$set(t.editingRecord,"isReturn",s.slice(0,r).concat(s.slice(r+1)))}else t.$set(t.editingRecord,"isReturn",a)}}})])]),t._v(" "),s("div",{staticClass:"edit-panel-row"},[s("div",{staticClass:"row-item"},[s("div",{staticClass:"submit-btn update-btn group",on:{click:function(e){t.updateRecord()}}},[s("p",[t._v("更新")])]),t._v(" "),s("router-link",{staticClass:"submit-btn update-btn group",attrs:{to:{name:"printForm",params:{FormID:t.editingRecord.FormID}}}},[s("p",[t._v("列印")])])],1)])],2)]),t._v(" "),t._m(0),t._v(" "),s("div",{staticClass:"title"},[s("div",{staticClass:"edit-panel-row search-input"},[s("div",{staticClass:"row-item"},[s("p",{staticClass:"row-title"},[t._v("搜尋表單：")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.search,expression:"search"}],staticClass:"form-input",attrs:{placeholder:"請輸入搜尋條件"},domProps:{value:t.search},on:{input:function(e){e.target.composing||(t.search=e.target.value)}}})])])]),t._v(" "),s("div",{staticClass:"all-fat-card-container"},t._l(t.filteredRecords,function(e){return 1==e.isReturn?s("div",{key:e.key,staticClass:"fat-card-item"},[s("div",{staticClass:"fat-card-info"},[s("div",{staticClass:"fat-card-text-container"},[s("h2",[t._v("FMM"+t._s(e.FormID))]),t._v(" "),s("p",[t._v("領取人："+t._s(e.name))]),t._v(" "),s("p",[t._v("日期："+t._s(e.date))]),t._v(" "),s("p",[t._v("職員/學生證號碼："+t._s(e.staffNumber))]),t._v(" "),s("p",[t._v("電話："+t._s(e.userContact))]),t._v(" "),s("p",[t._v("是否已還：是")])]),t._v(" "),s("div",{staticClass:"fat-card-img-container"},[s("img",{attrs:{src:"./static/images/file.svg"}})])]),t._v(" "),s("button",{staticClass:"fat-card-edit-btn",on:{click:function(s){t.editRecord(e)}}},[t._v("查看更多")])]):s("div",{staticClass:"fat-card-item",staticStyle:{"background-color":"deepskyblue"}},[s("div",{staticClass:"fat-card-info"},[s("div",{staticClass:"fat-card-text-container"},[s("h2",[t._v("FMM"+t._s(e.FormID))]),t._v(" "),s("p",[t._v("領取人："+t._s(e.name))]),t._v(" "),s("p",[t._v("日期："+t._s(e.date))]),t._v(" "),s("p",[t._v("職員/學生證號碼："+t._s(e.staffNumber))]),t._v(" "),s("p",[t._v("電話："+t._s(e.userContact))]),t._v(" "),s("p",[t._v("是否已還：否")])]),t._v(" "),s("div",{staticClass:"fat-card-img-container"},[s("img",{attrs:{src:"./static/images/file.svg"}})])]),t._v(" "),s("button",{staticClass:"fat-card-edit-btn",on:{click:function(s){t.editRecord(e)}}},[t._v("查看更多")])])}))])},staticRenderFns:[function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"title"},[e("h1",[this._v("查找及更新外部記錄")])])}]};var c=s("VU/8")(n,d,!1,function(t){s("4HXX")},"data-v-7c1af168",null);e.default=c.exports}});
//# sourceMappingURL=6.dd4491558b538e87696f.js.map