<template>
<div class="print-form-container">
  <div class="title">
    <h1>表單列印</h1>
  </div>
  <div class="form-container">

  </div>
</div>
</template>

<script>

</script>

<style scoped>
.print-form-container {
  min-height: calc(100vh - var(--footerHeight));
  width: auto;
  margin-left: var(--leftBar);
  padding: 36px;
  /* background-image: url("../../static/images/paper2.png"); */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.form-container {
  width: 210mm;
  height: 297mm;
  /* border: 1px solid red; */
}

h1 {
  margin: 0px;
}
</style>
