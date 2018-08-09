<template>
<div id="app">
  <navBar />
  <router-view />
  <footerBar />
</div>
</template>

<script>
import navBar from './components/NavigationBar.vue';
import footerBar from './components/Footer.vue';
export default {
  name: 'App',
  components: {
    navBar,
    footerBar
  }
}
</script>

<style src="./assets/css/main.css">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>
