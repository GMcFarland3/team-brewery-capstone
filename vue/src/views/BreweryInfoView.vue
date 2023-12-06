<template>
    <div>
        <HeaderView />
        <section class="Brewery-Info">

            <div v-if="brewery">
                <BreweryInfo :brewery="brewery" />
                <div class="picture">
                    <img :src="brewery.image" alt="Brewery Image"> <!-- Use the brewery's image source -->
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
            </div>
            <div v-else>
                <h1>Loading....</h1>
            </div>
        </section>
        <FooterView />
    </div>
</template>
  
<script>
import HeaderView from './HeaderView.vue';
import FooterView from './FooterView.vue';
import BreweryInfo from '../components/BreweryInfo.vue';

export default {
    data() {
        return {
            brewery: null, // Initialize as null to handle loading state
        }
    },

    created() {
        const brew_Id = this.$route.params.brew_Id;
        this.brewery = this.$store.state.breweries.find(b => b.brew_Id == brew_Id);
        console.log('Brewery Data:', this.brewery); // Debugging output
        console.log('Brewery ID:', brew_Id); // Debugging output
    },


    components: {
        HeaderView,
        BreweryInfo,
        FooterView
    },
};
</script>
  




<style scoped>
FooterView {
    position: fixed;
    bottom: 0;
}
</style>