<template>
    <div class="info">
        <h1>{{ breweries.name }} </h1>
        <h3>{{ breweries.address }} </h3>
        <h3>{{ breweries.name }} </h3>
        <h3>{{ breweries.name }} </h3>
        <h3>{{ breweries.name }} </h3>
        <h3>{{ breweries.name }} </h3>

    </div>
</template>

<script>

export default {
    props: ['breweries']
}
</script>

<style scoped></style>