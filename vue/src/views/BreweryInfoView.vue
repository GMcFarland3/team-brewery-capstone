<template>
    <div>
        <HeaderView />
        <BreweryInfo />

        <FooterView />

    </div>
</template>

<script>
import HeaderView from './HeaderView.vue';
import FooterView from './FooterView.vue';
import BreweryInfo from '../components/BreweryInfo.vue';

export default {
    components: {
        HeaderView,
        BreweryInfo,
        FooterView
    },

    // computed: {
    //     brewery() {
    //         // get the ID from the URL
    //         // const id = this.$route.params.brewId;

    //         // get the product with that ID
    //         // return this.$store.state.breweries.find(b => b.brewId == id);
    //         return 1;
    //     }
    // }

}
</script>




<style scoped>
FooterView {
    position: fixed;
    bottom: 0;
}
</style>