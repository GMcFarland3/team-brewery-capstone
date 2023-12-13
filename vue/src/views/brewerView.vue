<template>
    <header-view />
    <div>
        <AddBeer />

    </div>
    <footer-view />
</template>



<script>

import HeaderView from '../views/HeaderView.vue';
import FooterView from '../views/FooterView.vue'
import AddBeer from '../components/AddBeer.vue';


export default {
    components: {
        HeaderView,
        AddBeer,
        FooterView
    }

}
</script>

<style scoped></style>