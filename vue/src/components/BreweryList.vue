<template>
    <div class="brewery-card">
      <div class="image-box">
        <img :src="breweries.image" @click="toggleDropdown" />
      </div>
      <select v-if="showDropdown" class="brewery-info">
        <option value="name">{{ breweries.name }}</option>
        <option value="address">{{ breweries.address }}</option>
        <option value="city">{{ breweries.city }}</option>
        <option value="state_abbr">{{ breweries.state_abbr }}</option>
        <option value="zip">{{ breweries.zip }}</option>
        <option value="phone">{{ breweries.phone }}</option>
        <option value="website">{{ breweries.website }}</option>
        <option value="operation_hours">{{ breweries.operation_hours }}</option>
      </select>
    </div>
  </template>
  
  <script>
  export default {
    props: ['breweries'],
    data() {
      return {
        showDropdown: false,
      };
    },
    methods: {
      toggleDropdown() {
        this.showDropdown = !this.showDropdown;
      },
    },
  };
  </script>
  
  <style scoped>
  .brewery-card {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin: 10px;
    border: 1px solid rgb(199, 170, 2);
    padding: 10px;
  }
  
  .image-box {
    width: 150px; /* Adjust the width as needed */
    height: 150px; /* Adjust the height as needed */
    overflow: hidden;
  }
  
  img {
    max-width: 100%;
    max-height: 100%;
    object-fit: cover;
    cursor: pointer;
  }
  
  .brewery-info {
    display: none;
    text-align: left;
  }
  
  .show-dropdown .brewery-info {
    display: block;
  }
  </style>
  