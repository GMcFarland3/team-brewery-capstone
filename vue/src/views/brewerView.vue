<template>
    <div>
        <HeaderView />
    </div>
    <div>
        <AddBeer :brewery="this.brewery" />
    </div>
    <div>
        <FooterView />
    </div>
</template>


<script>
import HeaderView from './HeaderView.vue';
import FooterView from './FooterView.vue';
import AddBeer from '../components/AddBeer.vue';

export default {
    created() {
        const brew_Id = this.$store.state.brewersID;
        this.brewery = this.$store.state.breweries.find(b => b.brew_id == brew_Id);
    },
    data() {
        return {
            brewery: {},
        }
    },

    components: {
        HeaderView,
        AddBeer,
        FooterView
    }
}
</script>

<style scoped></style>