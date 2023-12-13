<template>
  <div class="home-container">
    <div class="featured-section">
      <h1>Featured Breweries</h1>
      <BrewerySlideshow :breweries="sixRandom" />
    </div>
    <div class="beer-section">
      <BeerSlideshow :beers="featuredBeers" />
    </div>
    <div class="about-box">
      <h2>About Us</h2>
      <p>
        Welcome to BrewScout, a one-stop destination for beer enthusiasts and connoisseurs alike! Our website curates an
        extensive list of diverse breweries, each offering a unique selection of flavorful beers. Discover a multitude of
        beer varieties, from hoppy ales to rich stouts, and explore comprehensive information about each brewery's
        history, beer types, ABV (Alcohol By Volume), descriptions, and captivating images.
        Immerse yourself in the world of craft beer by browsing through our collection of breweries and their signature
        beers. Not only can you delve into the detailed profiles of breweries and their delightful brews, but you can also
        engage with the community by leaving reviews based on your experiences. Share your thoughts, rate your favorite
        beers, and provide valuable insights for fellow beer aficionados to explore.
        What sets us apart is the ability to enhance your reviews with photos, allowing you to visually capture the
        essence of your beer-tasting adventures. Share snapshots of your favorite brews, ambiance of the breweries, or
        moments of enjoyment with friends, adding a personal touch to your reviews.
        Join us on this immersive journey into the world of beers, where exploration, appreciation, and community
        intertwine to celebrate the artistry and flavors of craft brewing.
      </p>
    </div>
  </div>
</template>

<script>
import BrewerySlideshow from '../components/BrewerySlideshow.vue';
import BeerSlideshow from '../components/BeerSlideshow.vue';
import brewService from "../services/BreweriesService";


export default {
  data() {
    return {
      sixRandom: [],
      featuredBeers: [],
    };
  },
  created() {
    brewService
      .getBreweries()
      .then(response => {
        if (response.status == 200) {
          this.sixRandom = response.data.sort(() => Math.random() - 0.5).slice(0, 6);
          this.$store.commit('SET_BREWERIES', response.data);
        }
      })
      .catch(error => {
        const response = error.response;
        if (response.status === 401) {
          this.invalidCredentials = true;
        }
      });

    brewService
      .getBeers()
      .then(response => {
        if (response.status == 200) {
          this.featuredBeers = response.data;
        }
      })
      .catch(error => {
        console.error('Error fetching featured beers:', error);
      });
  },
  components: {
    BrewerySlideshow,
    BeerSlideshow,
  },
};
</script>


<style scoped>
.home-container {
  padding: 20px;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.featured-section {
  font-family: Arial, Helvetica, sans-serif;
  text-align: center;
  margin-bottom: 30px;
  position: relative;
  /* Ensure positioning context for z-index */
  z-index: 2;
  /* Set z-index to appear above other elements */
}

h1 {
  font-family: Arial, Helvetica, sans-serif;
  font-size: 2.5rem;
  margin-bottom: 20px;
}

.beer-section {
  margin-bottom: 20px;
  /* Add margin to separate sections */
}

.about-box {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #F5F5F5;
  padding: 20px;
  border: 1px solid #ddd;
  border-radius: 5px;
  line-height: 1.6;
  position: relative;
  /* Ensure positioning context for z-index */
  z-index: 1;
  /* Set z-index to appear below featured-section */
}
</style>