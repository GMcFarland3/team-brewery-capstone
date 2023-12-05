<template>
    <div>
        <HeaderView />
        <div></div>
        <div class="list">
            <h1>Breweries</h1>
            <section class="breweries-list">
                <BreweryList class="breweries" :breweries="breweries" v-for="breweries in breweries"
                    :key="breweries.brewId" />
            </section>


        </div>

        <FooterView />

    </div>
</template>

<script>
import HeaderView from './HeaderView.vue'
import BreweryList from '../components/BreweryList.vue';
import FooterView from './FooterView.vue';
import brewService from "../services/BreweriesService";

export default {
    data() {
        return {
            breweries: []
        }
    },
    created() {
        brewService
            .getBreweries()
            .then(response => {
                if (response.status == 200) {
                    this.breweries = response.data;
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
        toggleLike() {
            this.liked = !this.liked;
        },
    },

    components: {
        HeaderView,
        BreweryList,
        FooterView
    }
}

</script>

<style scoped>
.list {
    display: flex;
    flex-direction: column;
    height: auto;

    background-color: rgb(212, 211, 209);
}
</style>