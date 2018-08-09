<template>
<div class="left-bar-container">
  <div class="icon-container">
    <div class="icon" />
  </div>
  <div class="nav-item-container">
    <div class="nav-item-box" v-for="projectTitle in projectTitles" :key="projectTitle.key">
      <img class="nav-icon" :src="projectTitle.iconPath"/>
      <router-link class="nav-item font-size-18" :to="{ name: projectTitle.projectName}">{{ projectTitle.projectTitle }}</router-link>
    </div>
  </div>
</div>
</template>

<script>
import FMMproject from '../project.json';
export default {
  name: 'NavigationBar',
  data() {
    return {
      projectTitles: FMMproject.projectList
    }
  }
}
</script>

<style scoped>
.left-bar-container {
  position: fixed;
  height: 100vh;
  width: var(--leftBar);
  background-color: var(--turquoise);
}

.icon-container {
  padding: 60px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.icon {
  height: 100px;
  width: 100px;
  background-image: url('../../static/images/joker.svg');
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.nav-item-container {
  display: flex;
  flex-direction: column;
  height: auto;
  width: 100%;
  padding: 18px;
}

.nav-item-box {
  padding: 6px;
  display: flex;
  align-items: center;
  /* transform: translateX(0px); */
  border: 3px solid var(--transparent);
}

.nav-item-box:hover {
  border: 3px solid var(--transparent);
}

.nav-icon {
  height: 50px;
  width: 50px;;
  padding: 12px;
  background-color: var(--white);
  border-radius: var(--bigBorderRadius);
}

.nav-item {
  color: var(--white);
  padding-left: 12px;
  text-decoration: none;
  cursor: pointer;
}

.nav-item-box:hover .nav-item {
  animation: shakeOnce;
  animation-duration: 1s;
}

.nav-item-box::after {
  position: absolute;
  right: 24px;
  content: "❯";
  color: var(--white);
}

/* .nav-item-box > p {
  display: inline-block;
  margin: 0px;
  color: var(--white);
} */
</style>
