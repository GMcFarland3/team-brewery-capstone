<template>
    <div class="page">
    <header-view />
    <div>
        <AddBeer />
    </div>
    <footer-view />
</div>
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

<style scoped>
.page {
    font-family: Arial, Helvetica, sans-serif;
  background-image: url('../assets/img/homePage2.png');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center center;
  background-attachment: fixed;
  margin: 0; /* Remove margin */
  padding: 0; /* Remove padding */
}
</style>