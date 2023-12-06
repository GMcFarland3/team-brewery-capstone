<template>
    <HeaderView />
    <section class="Brewery-Info">
        <BreweryInfo :brewery="brewery" />
        <div class="picture">
            <img :src="brewery.imageSrc"> <!-- Use the brewery's image source -->
        </div>
        <div class="cardList">
            <div class="mainInfo">
                <h1>{{ brewery.name }}</h1> <!-- Display the brewery's name -->
                <h2>{{ brewery.description }}</h2> <!-- Display the brewery's description -->
            </div>
            <div class="details">
                <h3>Details</h3>
                <ul>
                    <li>{{ brewery.address }}</li>
                    <li>{{ brewery.location }}</li>
                    <li>{{ brewery.website }}</li>
                    <li>{{ brewery.phone }}</li>
                    <li>{{ brewery.hours }}</li>
                </ul>
            </div>
        </div>
    </section>


    <FooterView />
</template>
  


<script>
import HeaderView from './HeaderView.vue';
import FooterView from './FooterView.vue';
import BreweryInfo from '../components/BreweryInfo.vue';

export default {
    data() {
        return {
            brewery: {},
        }
    },

    created() {
        const brewId = this.$route.params.brewId;
        this.brewery = this.$store.state.breweries.find(b => b.brewId == brewId);
    },

    components: {
        HeaderView,
        BreweryInfo,
        FooterView
    },

    computed: {

    }

}

</script>




<style scoped>
FooterView {
    position: fixed;
    bottom: 0;
}
</style>