webpackJsonp([2],{DRxt:function(e,t){},fWoZ:function(e,t,s){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var i=s("mvHQ"),n=s.n(i),a=s("DEN3"),r=s.n(a),l={data:function(){return{users:[],editingUser:[],getAllInternalUserApi:r.a.URL+r.a.getAllInternalUserApi,updateInternalUserApi:r.a.URL+r.a.updateInternalUserApi}},methods:{getAllUser:function(){var e=this;this.$http.get(this.getAllInternalUserApi).then(function(t){e.users=t.data})},editUser:function(e){$(".edit-panel-container").css("display","flex"),this.editingUser=[],this.editingUser=JSON.parse(n()(e))},closePanel:function(){$(".edit-panel-container").hide()},updateUser:function(){var e=this;this.$http.post(this.updateInternalUserApi,n()(this.editingUser)).then(function(t){1==t.data.message?(swal("修改成功！",{icon:"success"}),$(".edit-panel-container").hide(),e.users=[],e.getAllUser()):swal("修改失敗！",{icon:"error"})})}},created:function(){this.getAllUser()}},o={render:function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"edit-user-container"},[s("div",{staticClass:"edit-panel-container"},[s("div",{staticClass:"close-btn-container"},[s("div",{staticClass:"close-btn",on:{click:function(t){e.closePanel()}}},[e._v("×")])]),e._v(" "),s("div",{staticClass:"edit-panel"},[s("h1",[e._v("修改內部用戶資料")]),e._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:e.editingUser.userName,expression:"editingUser.userName"}],staticClass:"form-input",attrs:{placeholder:"用戶名稱：",title:"用戶名稱"},domProps:{value:e.editingUser.userName},on:{input:function(t){t.target.composing||e.$set(e.editingUser,"userName",t.target.value)}}}),e._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:e.editingUser.userContact,expression:"editingUser.userContact"}],staticClass:"form-input",attrs:{placeholder:"聯絡電話：",title:"聯絡電話"},domProps:{value:e.editingUser.userContact},on:{input:function(t){t.target.composing||e.$set(e.editingUser,"userContact",t.target.value)}}}),e._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:e.editingUser.userEmail,expression:"editingUser.userEmail"}],staticClass:"form-input",attrs:{placeholder:"用戶電郵：",title:"用戶電郵"},domProps:{value:e.editingUser.userEmail},on:{input:function(t){t.target.composing||e.$set(e.editingUser,"userEmail",t.target.value)}}}),e._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:e.editingUser.department,expression:"editingUser.department"}],staticClass:"form-input",attrs:{placeholder:"用戶部門",title:"用戶部門"},domProps:{value:e.editingUser.department},on:{input:function(t){t.target.composing||e.$set(e.editingUser,"department",t.target.value)}}}),e._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:e.editingUser.sum,expression:"editingUser.sum"}],staticClass:"form-input",attrs:{placeholder:"用戶累計：",title:"用戶累計"},domProps:{value:e.editingUser.sum},on:{input:function(t){t.target.composing||e.$set(e.editingUser,"sum",t.target.value)}}}),e._v(" "),s("div",{staticClass:"form-input submit-btn update-btn",on:{click:function(t){e.updateUser()}}},[s("p",[e._v("更新")])])])]),e._v(" "),e._m(0),e._v(" "),s("div",{staticClass:"all-fat-card-container"},e._l(e.users,function(t){return s("div",{key:t.key,staticClass:"fat-card-item"},[s("div",{staticClass:"fat-card-info"},[s("div",{staticClass:"fat-card-text-container"},[s("h2",[e._v(e._s(t.userName))]),e._v(" "),s("p",[e._v("用戶編號："+e._s(t.staffNumber))]),e._v(" "),s("p",[e._v("聯絡電話："+e._s(t.userContact))]),e._v(" "),s("p",[e._v("用戶電郵："+e._s(t.userEmail))]),e._v(" "),s("p",[e._v("用戶累計："+e._s(t.sum))])]),e._v(" "),e._m(1,!0)]),e._v(" "),s("button",{staticClass:"fat-card-edit-btn",on:{click:function(s){e.editUser(t)}}},[e._v("修改")])])}))])},staticRenderFns:[function(){var e=this.$createElement,t=this._self._c||e;return t("div",{staticClass:"title"},[t("h1",[this._v("內部用戶資料")])])},function(){var e=this.$createElement,t=this._self._c||e;return t("div",{staticClass:"fat-card-img-container"},[t("img",{attrs:{src:s("pLQe")}})])}]};var c=s("VU/8")(l,o,!1,function(e){s("DRxt")},"data-v-eaf41dcc",null);t.default=c.exports},pLQe:function(e,t,s){e.exports=s.p+"static/img/healthy-boy.2b72b43.svg"}});
//# sourceMappingURL=2.10a3d75377fcc6720fb7.js.map