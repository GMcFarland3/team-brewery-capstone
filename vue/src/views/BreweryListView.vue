<template>
  <div>
    <HeaderView />
    <h1>Breweries</h1>
    <div class="list">
      <section class="breweries-list">
        <!-- Using v-for directly on the BreweryList component -->
        <BreweryList 
          class="breweries" 
          :breweries="breweries" 
          :key="breweries.brew_Id" 
          v-for="breweries in breweries"
        />
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
  margin: 0;
  padding: 20px 0;
}

.list {
  display: flex;
  flex-direction: column;
  align-items: center;
  min-height: 100vh;
  background-color: #f5f5f5;
  padding: 20px;
}

/* Style for brewery cards */
.brewery-card {
  width: 300px; /* Set the width of each card */
  margin: 20px;
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  padding: 20px;
  display: flex;
  flex-direction: column;
}

.brewery-card img {
  width: 100%;
  height: auto;
  border-radius: 5px;
  margin-bottom: 10px;
}

.brewery-card h3 {
  font-size: 1.5rem;
  margin-bottom: 10px;
}

.brewery-card p {
  font-size: 1rem;
  color: #666;
}
</style>