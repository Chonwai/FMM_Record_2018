<template>
<footer>FMM 2018</footer>
</template>

<script>
export default {
  name: 'Footer'
}
</script>

<style>
footer {
  display: flex;
  justify-content: center;
  align-items: center;
  height: var(--footerHeight);
  width: calc(100% - 300px);
  float: right;
  background-color: var(--midnightblue);
  color: var(--white);
  font-size: 24px;
}
</style>
