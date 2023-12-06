<template>
    <div>

        <section class="beers-list">
            <BeerList class="beers" :beers="beers" v-for="beers in beers" :key="beers.beer_id" />
            <img src="{{ beers.image }}" alt="beer" />
            <ul>
                <li>{{ beers.name }}</li>
            </ul>
        </section>

    </div>
</template>

<script>
export default {
    props: ['beers'],
};
</script>

<style scoped></style>