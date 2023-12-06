<template>
    <div>
        <HeaderView />
        <section class="Brewery-Info">

            <div v-if="brewery">
                <BreweryInfo :brewery="brewery" />

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
            brewery: {},
        }
    },

    created() {
        const brew_Id = this.$route.params.brew_Id;
        this.brewery = this.$store.state.breweries.find(b => b.brew_id == brew_Id);
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