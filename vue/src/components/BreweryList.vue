<template>
    <div class="brewList-container">
      <div class="brewery-card">
        <div class="image-box">
          <img :src="breweries.image" />
        </div>
        <div class="brewery-info">
          <h1>{{ breweries.name }}</h1>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    props: ['breweries'],
  };
  </script>
  
  <style scoped>
  .brewList-container {
    display: flex; /* Display cards in a row */
    flex-wrap: wrap; /* Allow cards to wrap to the next row when needed */
    justify-content: center; /* Center cards horizontally */
    gap: 20px; /* Adjust the gap between cards as needed */
  }
  
  .brewery-card {
    margin: 10px;
    border: 1px solid rgb(199, 170, 2);
    padding: 10px;
    width: 200px; /* Adjust the width as needed */
  }
  
  .image-box {
    width: 150px; /* Adjust the width as needed */
    height: 150px; /* Adjust the height as needed */
    overflow: hidden;
    margin: 0 auto; /* Center the image horizontally */
    display: flex; /* Center the image vertically */
    justify-content: center; /* Center the image vertically */
    align-items: center; /* Center the image vertically */
  }
  
  img {
    max-width: 100%;
    max-height: 100%;
    object-fit: cover;
    cursor: pointer;
    align-content: center;
  }
  
  .brewery-info {
    text-align: center;
  }
  </style>
  