<template>
    <div>
        <h2>{{ breweries.name }}</h2>
    </div>
    <div>
        <h2>{{ breweries.image }}</h2>
    </div>
    <div>
        <h2>{{ breweries.address }}</h2>
    </div>
    <div>
        <h2>{{ breweries.city }}</h2>
    </div>
    <div>
        <h2>{{ breweries.state_abbr }}</h2>
    </div>
    <div>
        <h2>{{ breweries.zip }}</h2>
    </div>
    <div>
        <h2>{{ breweries.phone }}</h2>
    </div>
    <div>
        <h2>{{ breweries.website }}</h2>
    </div>
    <div>
        <h2>{{ breweries.operation_hours }}</h2>
    </div>
</template>

<script>


export default {
    props: ['breweries'],

}
</script>

<style scoped></style>