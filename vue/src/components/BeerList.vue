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
            <li>Type: {{ beer.type }}</li>
            <li>ABV: {{ beer.abv }}</li>
            <li>Description: {{ beer.description }}</li>
          </ul>
        </div>
      </div>
    </section>
  </div>
</template>
  
<script>
export default {
  props: ['beers'],
};
</script>
  
<style scoped>
.beers-list {
  display: flex;
  flex-wrap: wrap;
  gap: 20px;
  /* Adjust the gap between beer cards */
}

.beer-card {
  border: 1px solid #ccc;
  padding: 10px;
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
}

.beer-image-container {
  margin-bottom: 10px;
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
  display: flex;
  flex-direction: column;
}

/* Style the beer information */
h3 {
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
  margin-bottom: 5px;
  /* Add margin for spacing between info */
}

.buttons {
  margin-top: 10px;
}

/* Style the placeholder buttons */
.like-button,
.favorite-button,
.reviews-button {
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
  background-color: #0056b3;
  /* Darker color on hover */
}</style>
  