<template>
    <div>
      <section class="beers-list">
        <!-- Loop through the beers and display each one -->
        <div v-for="beer in beers" :key="beer.beer_id" class="beer-item">
          <img :src="beers.image" alt="Beer Image" />
          <h3>{{ beers.name }}</h3>
          <p>Type: {{ beers.type }}</p>
          <p>Description: {{ beers.description }}</p>
          <p>ABV: {{ beers.abv }}</p>
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
  /* Add your component-specific styles here */
  .beer-item {
    margin: 20px;
    border: 1px solid #ddd;
    padding: 10px;
    display: inline-block;
  }
  </style>
  