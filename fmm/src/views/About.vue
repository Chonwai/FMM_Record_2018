<template>
<div class="about-container">
  <div class="image-credit-container">
    <div>Icons made by <a href="http://www.freepik.com" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0"
        target="_blank">CC 3.0 BY</a></div>
  </div>
</div>
</template>

<script>
export default {
  name: 'About'
}
</script>

<style>
.about-container {
  min-height: calc(100vh - var(--footerHeight));
  width: auto;
  margin-left: var(--leftBar);
  padding: 36px;
  background-image: url("../../static/images/pexels-photo-1037995.jpeg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
