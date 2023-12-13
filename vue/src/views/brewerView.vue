<template>
    <header-view />
    <div>
<<<<<<< HEAD
        <AddBeer />

=======
        <HeaderView />
        <AddBeer />
        <FooterView />
>>>>>>> griffin
    </div>
    <footer-view />
</template>



<script>
<<<<<<< HEAD

import HeaderView from '../views/HeaderView.vue';
import FooterView from '../views/FooterView.vue'
import AddBeer from '../components/AddBeer.vue';


=======
import HeaderView from './HeaderView.vue';
import FooterView from './FooterView.vue';
import AddBeer from '../components/AddBeer.vue';

>>>>>>> griffin
export default {
    components: {
        HeaderView,
        AddBeer,
        FooterView
    }


    components: {
        HeaderView,
        AddBeer,
        FooterView
    },
}
</script>

<style scoped></style>