webpackJsonp([10],{"KZQ/":function(t,e){},Or5o:function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var s=a("mvHQ"),i=a.n(s),r=a("DEN3"),l=a.n(r),n={data:function(){return{Item:null,ID_Number:null,Description:null,Category:null,State:null,Acquired_Date:null,Purchase_Price:null,Current_Value:null,Location:null,Manufacturer:null,Model:null,Comments:null,Owner:null,Retired_Date:null,addNewAssetsApi:l.a.URL+l.a.addNewAssetsApi}},created:function(){swal("提提您~","記得填寫「財產名稱」及「財產編號」等資料。","info")},methods:{submit:function(){null!=this.Item&&null!=this.ID_Number?(null==this.Purchase_Price?this.Purchase_Price=0:this.Purchase_Price=this.Purchase_Price,null==this.Current_Value?this.Current_Value=1:this.Current_Value=this.Current_Value,this.$http.post(this.addNewAssetsApi,i()({Item:this.Item,ID_Number:this.ID_Number,Description:this.Description,Category:this.Category,State:this.State,Acquired_Date:this.Acquired_Date,Purchase_Price:this.Purchase_Price,Current_Value:this.Current_Value,Location:this.Location,Manufacturer:this.Manufacturer,Model:this.Model,Comments:this.Comments,Owner:this.Owner,Retired_Date:this.Retired_Date})).then(function(t){1==t.data.message?swal("新增成功！",{icon:"success"}):0==t.data.message&&swal("發生問題，請再試一次！",{icon:"error"})})):swal("請輸入「財產名稱」和「財產編號」",{icon:"error"})},resetInput:function(){this.Item=null,this.ID_Number=null,this.Description=null,this.Category=null,this.State=null,this.Acquired_Date=null,this.Purchase_Price=0,this.Current_Value=1,this.Location=null,this.Manufacturer=null,this.Model=null,this.Comments=null,this.Owner=null}}},o={render:function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"new-assets-container"},[t._m(0),t._v(" "),a("div",{staticClass:"new-assets-form-container"},[a("div",{staticClass:"edit-panel-row"},[a("div",{staticClass:"row-item"},[a("label",{staticClass:"row-title"},[t._v("財產名稱：")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.Item,expression:"Item"}],staticClass:"form-input",attrs:{placeholder:"財產名稱"},domProps:{value:t.Item},on:{input:function(e){e.target.composing||(t.Item=e.target.value)}}})])]),t._v(" "),a("div",{staticClass:"edit-panel-row"},[a("div",{staticClass:"row-item"},[a("label",{staticClass:"row-title"},[t._v("財產編號：")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.ID_Number,expression:"ID_Number"}],staticClass:"form-input",attrs:{placeholder:"財產編號"},domProps:{value:t.ID_Number},on:{input:function(e){e.target.composing||(t.ID_Number=e.target.value)}}})])]),t._v(" "),a("div",{staticClass:"edit-panel-row"},[a("div",{staticClass:"row-item"},[a("label",{staticClass:"row-title"},[t._v("財產描述：")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.Description,expression:"Description"}],staticClass:"form-input",attrs:{placeholder:"財產描述"},domProps:{value:t.Description},on:{input:function(e){e.target.composing||(t.Description=e.target.value)}}})])]),t._v(" "),a("div",{staticClass:"edit-panel-row"},[a("div",{staticClass:"row-item"},[a("label",{staticClass:"row-title"},[t._v("財產種類：")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.Category,expression:"Category"}],staticClass:"form-input",attrs:{placeholder:"財產種類"},domProps:{value:t.Category},on:{input:function(e){e.target.composing||(t.Category=e.target.value)}}})])]),t._v(" "),a("div",{staticClass:"edit-panel-row"},[a("div",{staticClass:"row-item"},[a("label",{staticClass:"row-title"},[t._v("財產狀態：")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.State,expression:"State"}],staticClass:"form-input",attrs:{placeholder:"財產狀態"},domProps:{value:t.State},on:{input:function(e){e.target.composing||(t.State=e.target.value)}}})])]),t._v(" "),a("div",{staticClass:"edit-panel-row"},[a("div",{staticClass:"row-item"},[a("label",{staticClass:"row-title"},[t._v("購買日期：")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.Acquired_Date,expression:"Acquired_Date"}],staticClass:"form-input",attrs:{placeholder:"購買日期",type:"date"},domProps:{value:t.Acquired_Date},on:{input:function(e){e.target.composing||(t.Acquired_Date=e.target.value)}}})])]),t._v(" "),a("div",{staticClass:"edit-panel-row"},[a("div",{staticClass:"row-item"},[a("label",{staticClass:"row-title"},[t._v("購買價格：")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.Purchase_Price,expression:"Purchase_Price"}],staticClass:"form-input",attrs:{placeholder:"購買價格"},domProps:{value:t.Purchase_Price},on:{input:function(e){e.target.composing||(t.Purchase_Price=e.target.value)}}})])]),t._v(" "),a("div",{staticClass:"edit-panel-row"},[a("div",{staticClass:"row-item"},[a("label",{staticClass:"row-title"},[t._v("當前數量：")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.Current_Value,expression:"Current_Value"}],staticClass:"form-input",attrs:{placeholder:"當前數量"},domProps:{value:t.Current_Value},on:{input:function(e){e.target.composing||(t.Current_Value=e.target.value)}}})])]),t._v(" "),a("div",{staticClass:"edit-panel-row"},[a("div",{staticClass:"row-item"},[a("label",{staticClass:"row-title"},[t._v("財產地點：")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.Location,expression:"Location"}],staticClass:"form-input",attrs:{placeholder:"財產地點"},domProps:{value:t.Location},on:{input:function(e){e.target.composing||(t.Location=e.target.value)}}})])]),t._v(" "),a("div",{staticClass:"edit-panel-row"},[a("div",{staticClass:"row-item"},[a("label",{staticClass:"row-title"},[t._v("生產廠商：")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.Manufacturer,expression:"Manufacturer"}],staticClass:"form-input",attrs:{placeholder:"生產廠商"},domProps:{value:t.Manufacturer},on:{input:function(e){e.target.composing||(t.Manufacturer=e.target.value)}}})])]),t._v(" "),a("div",{staticClass:"edit-panel-row"},[a("div",{staticClass:"row-item"},[a("label",{staticClass:"row-title"},[t._v("財產型號：")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.Model,expression:"Model"}],staticClass:"form-input",attrs:{placeholder:"財產型號"},domProps:{value:t.Model},on:{input:function(e){e.target.composing||(t.Model=e.target.value)}}})])]),t._v(" "),a("div",{staticClass:"edit-panel-row"},[a("div",{staticClass:"row-item"},[a("label",{staticClass:"row-title"},[t._v("財產信息：")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.Comments,expression:"Comments"}],staticClass:"form-input",attrs:{placeholder:"財產信息"},domProps:{value:t.Comments},on:{input:function(e){e.target.composing||(t.Comments=e.target.value)}}})])]),t._v(" "),a("div",{staticClass:"edit-panel-row"},[a("div",{staticClass:"row-item"},[a("label",{staticClass:"row-title"},[t._v("Owner：")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.Owner,expression:"Owner"}],staticClass:"form-input",attrs:{placeholder:"Owner"},domProps:{value:t.Owner},on:{input:function(e){e.target.composing||(t.Owner=e.target.value)}}})])]),t._v(" "),a("div",{staticClass:"edit-panel-row"},[a("div",{staticClass:"row-item"},[a("label",{staticClass:"row-title"},[t._v("退役日期：")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.Retired_Date,expression:"Retired_Date"}],staticClass:"form-input",attrs:{placeholder:"退役日期",type:"date"},domProps:{value:t.Retired_Date},on:{input:function(e){e.target.composing||(t.Retired_Date=e.target.value)}}})])]),t._v(" "),a("button",{staticClass:"form-input submit-btn",on:{click:function(e){t.submit()}}},[t._v("新增")])])])},staticRenderFns:[function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"title"},[e("h1",[this._v("新增設備資料")])])}]};var u=a("VU/8")(n,o,!1,function(t){a("KZQ/")},"data-v-317c853b",null);e.default=u.exports}});
//# sourceMappingURL=10.5e5109e496b986783731.js.map