<template>
    <header-view />
    <div>
        <HeaderView />
        <AddBeer />
        <FooterView />
    </div>
    <footer-view />
</template>



<script>
import HeaderView from './HeaderView.vue';
import FooterView from './FooterView.vue';
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