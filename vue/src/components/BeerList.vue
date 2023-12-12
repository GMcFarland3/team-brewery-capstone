<template>
  <div>
    <section class="beers-list">
      <div v-for="beer in beers" :key="beer.beer_id" class="beer-card">
        <div class="beer-image-container">
          <img :src="beer.image" alt="beer" class="beer-image" />
        </div>
        <div class="beer-info">
          <h3>{{ beer.name }}</h3>
          <ul>
            <li>{{ beer.description }}</li>
            <li>Type: {{ beer.type }}</li>
            <li>ABV: {{ beer.abv }}</li>
            <li>Average Rating: {{ displayAverageRating(beer.beerId) }}</li>
            <li v-if="beer.status">** OUT OF STOCK **</li>
          </ul>
        </div>
      </div>
    </section>
  </div>
</template>

<script>

import brewService from '../services/BreweriesService'; // Import your API service

export default {
  props: ['beers'],

  data() {
    return {
      review: {
        user_id: '',      // You can set this later when you have user data
        brew_id: '',      // Will be populated with the brewery ID
        beer_id: '',      // Will be populated with the selected beer ID
        beerName: '',          // The user's name (if needed)
        rating: '',
        review: '',
        image: '',
      },
      reviews: [],
      filteredReviews: [],
    };
  },

  created() {
    brewService
      .getReviews()
      .then(response => {
        if (response.status == 200) {
          this.reviews = response.data;
          this.$store.commit('SET_REVIEWS', response.data);
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
    displayAverageRating(beerId) {
      this.filteredReviews = this.reviews.filter(review => review.beer_id == beerId);
      if (this.filteredReviews.length == 0) return 'No ratings yet';

      const totalRating = this.filteredReviews.reduce((acc, review) => acc + parseInt(review.rating), 0);
      const averageRating = totalRating / this.filteredReviews.length;
      return this.generateStarRating(averageRating);
    },

    generateStarRating(rating) {
      const maxStars = 5;
      const fullStars = Math.floor(rating);
      const halfStar = rating % 1 !== 0;
      const emptyStars = maxStars - fullStars - (halfStar ? 1 : 0);

      let stars = '⭐'.repeat(fullStars);
      if (halfStar) {
        stars += '½';
      }
      stars += '☆'.repeat(emptyStars);

      return stars;
    },
  },
};
</script>

<style scoped>
.beers-list {
  font-family: Arial, Helvetica, sans-serif;
  display: flex;
  flex-wrap: wrap;
  gap: 20px;
  /* Adjust the gap between beer cards */
  gap: 20px;

}

.beer-card {
  font-family: Arial, Helvetica, sans-serif;
  border: 1px solid #ccc;
  padding: 10px;
  width: 300px;
  /* Adjust the card width as needed */
  width: 300px;
  /* Adjust the card width as needed */
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  background-color: #f9f9f9;
  /* Add a background color */
  box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
  /* Add a box shadow for depth */
  background-color: #f9f9f9;
  /* Add a background color */
  box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
  /* Add a box shadow for depth */

}

.beer-image-container {
  font-family: Arial, Helvetica, sans-serif;
  margin-bottom: 10px;
  width: 100%;
  /* Ensure the image container takes full width */
}

.beer-image {
  font-family: Arial, Helvetica, sans-serif;
  max-width: 100%;
  /* Limit the size of the images */
  height: auto;
  width: 100%;
  /* Make all images the same width */
  width: 100%;
  /* Ensure the image container takes full width */
}

.beer-image {
  max-width: 100%;
  /* Limit the size of the images */
  height: auto;
  width: 100%;
  /* Make all images the same width */

}

.beer-info {
  font-family: Arial, Helvetica, sans-serif;
  display: flex;
  flex-direction: column;
}

/* Style the beer information */
h3 {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
  /* Remove margin for h3 element */
  padding: 5px 0;
  /* Add padding for spacing */
}

ul {
  list-style: none;
  /* Remove bullet points */
  padding: 0;
  /* Remove padding for ul element */
}

li {
  font-family: Arial, Helvetica, sans-serif;
  margin-bottom: 5px;
  /* Add margin for spacing between info */
}

.buttons {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
  /* Remove margin for h3 element */
  padding: 5px 0;
  /* Add padding for spacing */
}


/* Style the placeholder buttons */
.like-button,
.favorite-button,
.reviews-button {
  font-family: Arial, Helvetica, sans-serif;
  margin: 5px;
  padding: 8px 15px;
  background-color: #007bff;
  /* Add background color */
  color: #fff;
  /* Text color */
  border: none;
  border-radius: 5px;
  /* Add border radius for rounded buttons */
  cursor: pointer;
}

/* Hover effect for buttons */
.like-button:hover,
.favorite-button:hover,
.reviews-button:hover {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #0056b3;
  /* Darker color on hover */
}
</style>
  

