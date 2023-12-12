<template>
  <div>
    <HeaderView />
    <h1>Breweries</h1>
    <div class="list">
      <section class="breweries-list">
        <BreweryList class="breweries" :breweries="breweries" v-for="breweries in breweries" :key="breweries.brew_Id" />
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
          this.$store.commit('SET_BREWERIES', response.data);
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
  font-family: Arial, Helvetica, sans-serif;
  color: white;
  text-align: center;
  background-color: rgb(113, 112, 112);
  margin: 0px 0px 0px 0px;
}

.list {
  font-family: Arial, Helvetica, sans-serif;
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  /* Make the content take up at least the full viewport height */
  margin-bottom: 60px;
  /* Adjust as needed to prevent the footer from overlapping content */
}
</style>
  