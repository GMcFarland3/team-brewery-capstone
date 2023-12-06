<template>
  <div>
    <HeaderView />
    <h1>Breweries</h1>
    <div class="list">
      <section class="breweries-list">
        <BreweryList class="breweries" :breweries="breweries" v-for="breweries in breweries" :key="breweries.brewId" />
      </section>
    </div>
    <FooterView />
  </div>
</template>
  
<script>
import HeaderView from './HeaderView.vue'
import BreweryList from '../components/BreweryList.vue';
import FooterView from './FooterView.vue';
import brewService from "../services/BreweriesService";

export default {
  data() {
    return {
      breweries: []
    }
  },
  created() {
    brewService
      .getBreweries()
      .then(response => {
        if (response.status == 200) {
          this.breweries = response.data;
        }
      })
      .catch(error => {
        const response = error.response;
        if (response.status === 401) {
          this.invalidCredentials = true;
        }
      });
  },
  methods: {
    toggleLike() {
      this.liked = !this.liked;
    },
  },
  components: {
    HeaderView,
    BreweryList,
    FooterView
  }
}
</script>
  
<style scoped>
h1 {
  color: white;
  text-align: center;
  background-color: rgb(113, 112, 112);
  margin: 0px 0px 0px 0px;
}

.list {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  /* Make the content take up at least the full viewport height */
  margin-bottom: 60px;
  /* Adjust as needed to prevent the footer from overlapping content */
}

FooterView {
  position: fixed;
  bottom: 0;
  /* Position at the bottom of the viewport */
  width: 100%;
  /* Take up the full width of the viewport */
  background-color: rgb(113, 112, 112);
  color: white;
  text-align: center;
  padding: 10px;
}
</style>
  