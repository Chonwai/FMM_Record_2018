webpackJsonp([9],{WJFg:function(t,e){},"ZH/y":function(t,e,i){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var s=i("mvHQ"),a=i.n(s),r={data:function(){return{records:[],editingRecord:[],editingItems:[],getRecordApi:"http://localhost:8888/index.php/api/records",getOneRecordItemsApi:"http://localhost:8888/index.php/api/record/item",updateRecordApi:"http://localhost:8888/index.php/api/records"}},methods:{getAllRecords:function(){var t=this;this.$http.get(this.getRecordApi).then(function(e){t.records=e.data})},getOneRecordItems:function(){var t=this;this.$http.post(this.getOneRecordItemsApi,a()({formID:this.editingRecord.FormID})).then(function(e){t.editingItems=e.data})},editRecord:function(t){$(".edit-panel-container").css("display","flex"),this.editingRecord=[],this.editingRecord=JSON.parse(a()(t)),this.getOneRecordItems()},closePanel:function(){$(".edit-panel-container").hide()},updateRecord:function(){var t=this;this.$http.put(this.updateRecordApi,a()({editingRecord:this.editingRecord,editingItems:this.editingItems})).then(function(e){1==e.data.message?(swal("修改成功！",{icon:"success"}),$(".edit-panel-container").hide(),t.record=[],t.getAllRecords()):swal("修改失敗！",{icon:"error"})})},printForm:function(){this.$router.push({path:"printForm",props:{default:!0,FormID:this.editingRecord.FormID}})}},created:function(){this.getAllRecords(),swal("提提您~","您可以在「查看更多」中修改表單","info")}},o={render:function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",{staticClass:"search-record-container"},[i("div",{staticClass:"edit-panel-container"},[i("div",{staticClass:"close-btn-container"},[i("div",{staticClass:"close-btn",on:{click:function(e){t.closePanel()}}},[t._v("×")])]),t._v(" "),i("div",{staticClass:"edit-panel"},[i("h1",[t._v("FMM"+t._s(t.editingRecord.FormID)+" 表單記錄")]),t._v(" "),i("div",{staticClass:"edit-panel-row"},[i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("領取人：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.name,expression:"editingRecord.name"}],staticClass:"form-input",attrs:{placeholder:"領取人"},domProps:{value:t.editingRecord.name},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"name",e.target.value)}}})])]),t._v(" "),i("div",{staticClass:"edit-panel-row"},[i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("日期：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.date,expression:"editingRecord.date"}],staticClass:"form-input",attrs:{placeholder:"日期",type:"date"},domProps:{value:t.editingRecord.date},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"date",e.target.value)}}})])]),t._v(" "),i("div",{staticClass:"edit-panel-row"},[i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("職員/學生證號碼：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.staffNumber,expression:"editingRecord.staffNumber"}],staticClass:"form-input",attrs:{placeholder:"職員/學生證號碼"},domProps:{value:t.editingRecord.staffNumber},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"staffNumber",e.target.value)}}})])]),t._v(" "),i("div",{staticClass:"edit-panel-row"},[i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("部門：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.department,expression:"editingRecord.department"}],staticClass:"form-input",attrs:{placeholder:"部門"},domProps:{value:t.editingRecord.department},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"department",e.target.value)}}})])]),t._v(" "),i("div",{staticClass:"edit-panel-row"},[i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("預期歸還：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.dateOfReturn,expression:"editingRecord.dateOfReturn"}],staticClass:"form-input",attrs:{placeholder:"預期歸還",type:"date"},domProps:{value:t.editingRecord.dateOfReturn},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"dateOfReturn",e.target.value)}}})])]),t._v(" "),i("div",{staticClass:"edit-panel-row"},[i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("電話：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.userContact,expression:"editingRecord.userContact"}],staticClass:"form-input",attrs:{placeholder:"電話"},domProps:{value:t.editingRecord.userContact},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"userContact",e.target.value)}}})])]),t._v(" "),t._l(t.editingItems,function(e){return i("div",{key:e.key,staticClass:"form-input edit-panel-row"},[i("label",{staticClass:"item-title"},[t._v("項目："+t._s(e.item))]),t._v(" "),i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("器材名稱及型號：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:e.assetsModel,expression:"item.assetsModel"}],staticClass:"form-input",attrs:{placeholder:"器材名稱及型號"},domProps:{value:e.assetsModel},on:{input:function(i){i.target.composing||t.$set(e,"assetsModel",i.target.value)}}})]),t._v(" "),i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("器材財產編號：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:e.assetsNo,expression:"item.assetsNo"}],staticClass:"form-input",attrs:{placeholder:"器材財產編號"},domProps:{value:e.assetsNo},on:{input:function(i){i.target.composing||t.$set(e,"assetsNo",i.target.value)}}})]),t._v(" "),i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("用途及使用地點：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:e.useLoctaion,expression:"item.useLoctaion"}],staticClass:"form-input",attrs:{placeholder:"用途及使用地點"},domProps:{value:e.useLoctaion},on:{input:function(i){i.target.composing||t.$set(e,"useLoctaion",i.target.value)}}})]),t._v(" "),i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("還件人：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:e.returnName,expression:"item.returnName"}],staticClass:"form-input",attrs:{placeholder:"還件人"},domProps:{value:e.returnName},on:{input:function(i){i.target.composing||t.$set(e,"returnName",i.target.value)}}})]),t._v(" "),i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("還件日期：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:e.returnDate,expression:"item.returnDate"}],staticClass:"form-input",attrs:{placeholder:"還件日期",type:"date"},domProps:{value:e.returnDate},on:{input:function(i){i.target.composing||t.$set(e,"returnDate",i.target.value)}}})])])}),t._v(" "),i("div",{staticClass:"edit-panel-row"},[i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("備註：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.remark,expression:"editingRecord.remark"}],staticClass:"form-input",attrs:{placeholder:"備註"},domProps:{value:t.editingRecord.remark},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"remark",e.target.value)}}})])]),t._v(" "),i("div",{staticClass:"edit-panel-row"},[i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("交件人：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.deliveryPerson,expression:"editingRecord.deliveryPerson"}],staticClass:"form-input",attrs:{placeholder:"交件人"},domProps:{value:t.editingRecord.deliveryPerson},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"deliveryPerson",e.target.value)}}})])]),t._v(" "),i("div",{staticClass:"edit-panel-row"},[i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("交件日期：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.deliveryDate,expression:"editingRecord.deliveryDate"}],staticClass:"form-input",attrs:{placeholder:"交件日期",type:"date"},domProps:{value:t.editingRecord.deliveryDate},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"deliveryDate",e.target.value)}}})])]),t._v(" "),i("div",{staticClass:"edit-panel-row"},[i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("收件人：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.returnPerson,expression:"editingRecord.returnPerson"}],staticClass:"form-input",attrs:{placeholder:"收件人"},domProps:{value:t.editingRecord.returnPerson},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"returnPerson",e.target.value)}}})])]),t._v(" "),i("div",{staticClass:"edit-panel-row"},[i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("收件日期：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.returnDate,expression:"editingRecord.returnDate"}],staticClass:"form-input",attrs:{placeholder:"收件日期",type:"date"},domProps:{value:t.editingRecord.returnDate},on:{input:function(e){e.target.composing||t.$set(t.editingRecord,"returnDate",e.target.value)}}})])]),t._v(" "),i("div",{staticClass:"edit-panel-row"},[i("div",{staticClass:"row-item"},[i("p",{staticClass:"row-title"},[t._v("已還：")]),t._v(" "),i("input",{directives:[{name:"model",rawName:"v-model",value:t.editingRecord.isReturn,expression:"editingRecord.isReturn"}],staticClass:"form-input",attrs:{placeholder:"已還",type:"checkbox"},domProps:{checked:Array.isArray(t.editingRecord.isReturn)?t._i(t.editingRecord.isReturn,null)>-1:t.editingRecord.isReturn},on:{change:function(e){var i=t.editingRecord.isReturn,s=e.target,a=!!s.checked;if(Array.isArray(i)){var r=t._i(i,null);s.checked?r<0&&t.$set(t.editingRecord,"isReturn",i.concat([null])):r>-1&&t.$set(t.editingRecord,"isReturn",i.slice(0,r).concat(i.slice(r+1)))}else t.$set(t.editingRecord,"isReturn",a)}}})])]),t._v(" "),i("div",{staticClass:"edit-panel-row"},[i("div",{staticClass:"row-item"},[i("div",{staticClass:"submit-btn update-btn group",on:{click:function(e){t.updateRecord()}}},[i("p",[t._v("更新")])]),t._v(" "),i("router-link",{staticClass:"submit-btn update-btn group",attrs:{to:{name:"printForm",params:{FormID:t.editingRecord.FormID}}}},[i("p",[t._v("列印")])])],1)])],2)]),t._v(" "),t._m(0),t._v(" "),i("div",{staticClass:"all-fat-card-container"},t._l(t.records,function(e){return i("div",{key:e.key,staticClass:"fat-card-item"},[i("div",{staticClass:"fat-card-info"},[i("div",{staticClass:"fat-card-text-container"},[i("h2",[t._v("FMM"+t._s(e.FormID))]),t._v(" "),i("p",[t._v("領取人："+t._s(e.name))]),t._v(" "),i("p",[t._v("日期："+t._s(e.date))]),t._v(" "),i("p",[t._v("職員/學生證號碼："+t._s(e.staffNumber))]),t._v(" "),i("p",[t._v("電話："+t._s(e.userContact))])]),t._v(" "),i("div",{staticClass:"fat-card-img-container"},[i("img",{attrs:{src:"/static/images/file.svg"}})])]),t._v(" "),i("button",{staticClass:"fat-card-edit-btn",on:{click:function(i){t.editRecord(e)}}},[t._v("查看更多")])])}))])},staticRenderFns:[function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"title"},[e("h1",[this._v("查找及更新記錄")])])}]};var n=i("VU/8")(r,o,!1,function(t){i("WJFg")},"data-v-246b0f69",null);e.default=n.exports}});
//# sourceMappingURL=9.a4d72509d4f069e59218.js.map