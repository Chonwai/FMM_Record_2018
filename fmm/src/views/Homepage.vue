<template>
<div class="homepage-container">
  <div class="main-grid-container">
    <router-link class="card" v-for="project in projects" :key="project.key" :to="{ name: project.projectName}">
      <div class="card-icon">
        <img :src="project.iconPath" />
      </div>
      <div class="card-title">
        <h1>{{ project.projectTitle }}</h1>
      </div>
    </router-link>
  </div>
</div>
</template>

<script>
import FMMproject from '../project.json';
export default {
  name: 'Homepage',
  data() {
    return {
      projects: FMMproject.projectList
    }
  }
}
</script>

<style scoped>
.homepage-container {
  min-height: calc(100vh - var(--footerHeight));
  width: auto;
  margin-left: var(--leftBar);
  background-image: url("../../static/images/pexels-photo-745364.jpeg");
  /* background-position: center; */
  background-repeat: no-repeat;
  background-size: cover;
}

.main-grid-container {
  display: flex;
  flex-wrap: wrap;
  height: 100%;
  width: 100%;
  padding: 24px;
}

.card {
  flex-grow: 0;
  flex-shrink: 0;
  width: 25%;
  height: auto;
  padding: 36px;
  border: 3px solid var(--transparent);
  border-radius: var(--bigBorderRadius);
  transition: 0.3s;
  transform: translateZ(0px);
  text-decoration: none;
}

.card:hover {
  border: 3px solid var(--turquoise);
  transform: scale(1.1);
  box-shadow: 7px 7px 0px 0px grey;
  transition: 0.3s;
  cursor: pointer;
}

.card-icon img {
  width: 100%;
  height: auto;
}

.card-title {
  display: flex;
  justify-content: center;
  align-items: center;
}

h1 {
  margin: 0px;
  color: var(--midnightblue);
  text-decoration: none;
}
</style>
