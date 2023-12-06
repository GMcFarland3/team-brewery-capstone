<template>
    <div>

        <section class="beers-list" v-for="beer in beers" :key="beer.beer_id">
            <img :src="beer.image" alt="beer" />
            <ul>
                <li>{{ beer.name }}</li>
                <li>{{ beer.type }}</li>
                <li>{{ beer.abv }}</li>
                <li>{{ beer.description }}</li>
            </ul>
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
    display: inline-block;
}

img {
    display: flex;
    max-width: 200px;
    max-height: 200px;

}
</style>
