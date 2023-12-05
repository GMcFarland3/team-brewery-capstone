<template>
    <div>
        <HeaderView />
        <h1>Breweries</h1>
        <div class="list">
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
#awards {
    height: 150px;
    width: 200px;
    margin-top: 2rem;
}

#likeButtonmadtree {
    margin-top: 1rem;
    width: 100px;
    height: 20px;
}

h1 {
    color: white;
    text-align: center;
    background-color: rgb(113, 112, 112);
    margin: 0px 0px 0px 0px;
}

.list {
    display: flex;
    flex-direction: column;
    height: auto;
}

#madtreebeers {
    height: 300px;
    width: 500px;

    margin-top: 2rem;
}

#madtree {
    height: 300px;
    width: 500px;
    margin-top: 2rem;
}
</style>