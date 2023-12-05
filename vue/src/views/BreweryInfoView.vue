<template>
    <div>
        <HeaderView />
        <div class="info">
            <h1>{{ breweries.name }}</h1>
        </div>


    </div>
</template>

<script>
import HeaderView from './HeaderView.vue';
import BreweriesService from '../services/BreweriesService';
import FooterView from './FooterView.vue';
import HeaderView from './HeaderView.vue';
export default {
    components: {
        HeaderView
    }

}
</script>

<style scoped></style>