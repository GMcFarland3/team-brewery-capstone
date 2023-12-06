<template>
    <div>
<<<<<<< HEAD
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
=======

        <section class="beers-list" v-for="beer in beers" :key="beer.beer_id">
            <img :src="beer.image" alt="beer" />
            <ul>
                <li>{{ beer.name }}</li>
                <li>{{ beer.type }}</li>
                <li>{{ beer.abv }}</li>
                <li>{{ beer.description }}</li>
            </ul>
        </section>

>>>>>>> d9666e1050898b9fec3d3ead3dee172f7411c79d
    </div>
  </template>
  
  <script>
  export default {
    props: ['beers'],
<<<<<<< HEAD
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
  
=======
};
</script>

<style scoped>
.beers-list {
    display: flex;
    display: inline-block;
}

img {
    display: flex;
    max-width: 200px;
    max-height: 200px;

}
</style>
>>>>>>> d9666e1050898b9fec3d3ead3dee172f7411c79d
