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
  padding: 48px;
}

.card:hover {
  /* border: 3px solid var(--turquoise); */
  transform: scale(1.3);
  /* box-shadow: 7px 7px 0px 0px grey; */
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
