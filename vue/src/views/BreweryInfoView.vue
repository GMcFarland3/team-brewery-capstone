<template>
    <div>
        <HeaderView />
        <div class="info">

            <h1>{{ breweries.name }}</h1>
        </div>
        <FooterView />

    </div>
</template>

<script>
import HeaderView from './HeaderView.vue';
import FooterView from './FooterView.vue';

export default {
    components: {
        HeaderView,
        FooterView
    }

}
</script>

<style scoped></style>