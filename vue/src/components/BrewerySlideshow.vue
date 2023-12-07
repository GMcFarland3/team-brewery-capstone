<template>
    <div class="fadephoto">
      <transition name="fade" mode="out-in">
        <router-link :to="'/breweryInfo/' + currentBrewery.brew_Id">
          <img :key="currentBrewery.brew_Id" :src="currentBrewery.image" :alt="currentBrewery.name" class="fade-image" />
        </router-link>
      </transition>
    </div>
  </template>
  
  <script>
  export default {
    props: {
      breweries: Array, // Pass the breweries array as a prop
    },
    data() {
      return {
        currentBreweryIndex: 0,
        intervalId: null, // Store the interval ID
      };
    },
    computed: {
      currentBrewery() {
        return this.breweries[this.currentBreweryIndex];
      },
    },
    methods: {
      nextBrewery() {
        this.currentBreweryIndex = (this.currentBreweryIndex + 1) % this.breweries.length;
      },
      startSlideshow() {
        this.intervalId = setInterval(this.nextBrewery, 6000); // Automatically switch images every 6 seconds
      },
    },
    mounted() {
      this.startSlideshow();
    },
    beforeUnmount() {
      // Clear the interval when the component is unmounted to prevent memory leaks
      clearInterval(this.intervalId);
    },
  };
  </script>
  
  <style scoped>
  .fadephoto {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 40rem;
    overflow: hidden;
  }
  
  .fade-image {
    animation: 5s linear infinite;
    width: 800px; /* Set a larger fixed width */
    height: 600px; /* Set a larger fixed height */
    object-fit: contain; /* Maintain aspect ratio and fit the entire image within the fixed width and height */
  }
  </style>
  