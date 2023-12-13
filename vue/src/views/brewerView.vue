<template>
    <header-view />
    <div>
        <HeaderView />
        <UpdateBeer />
        <AddBeer />

        <FooterView />
    </div>
    <footer-view />
</template>



<script>
import HeaderView from './HeaderView.vue';
import FooterView from './FooterView.vue';
import AddBeer from '../components/AddBeer.vue';
import UpdateBeer from '../components/UpdateBeer.vue';
export default {
    components: {
        HeaderView,
        UpdateBeer,
        AddBeer,

        FooterView
    }
}
</script>

<style scoped></style>