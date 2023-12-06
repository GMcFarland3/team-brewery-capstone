<template>
    <div>
        <h1>Featured Breweries</h1>
        <div class="list">
            <section class="breweries-list">
                <!-- <BreweryList class="breweries" :breweries="breweries" v-for="breweries in breweries" :key="breweries.brew_Id" /> -->
                <BreweryList class="breweries" :breweries="breweries" v-for="breweries in sixRandom"
                    :key="breweries.brew_Id" />
            </section>
        </div>
    </div>
</template>

<script>

import BreweryList from '../components/BreweryList.vue';
import brewService from "../services/BreweriesService";

export default {
    data() {
        return {
            randomBreweries: [],
            sixRandom: []
        }
    },
    created() {
        brewService
            .getBreweries()
            .then(response => {
                if (response.status == 200) {
                    this.breweries = response.data;
                    this.randomBreweries = this.breweries.sort(this.getRandom)
                    this.sixRandom = this.randomBreweries.filter((_, index) => index < 6)
                    this.$store.commit('SET_BREWERIES', response.data);
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
        getRandom(a, b) {
            return 0.5 - Math.random()
        }
    },
    components: {
        BreweryList,
    }

}

</script>

<style scoped>
#beer {
    width: 55rem;
    height: 40rem;
    margin-top: auto;
}

#main {
    background-color: #5a5858;
    display: flex;
    justify-content: center;
    height: 667px;


}
</style>