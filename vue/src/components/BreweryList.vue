<template>
    <div>
        <ul class="brewList">
            <li>{{ breweries.name }}</li>
            <li>{{ breweries.address }}</li>
            <li>{{ breweries.address2 }}</li>
            <li>{{ breweries.city }}</li>
            <li>{{ breweries.state_abbr }}</li>
            <li>{{ breweries.zip_code }}</li>
            <li>{{ breweries.operation_hours }}</li>
        </ul>
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

<style scoped>
.brewList {
    display: flex;
    flex-direction: row;
    justify-content: space-evenly;
    gap: 15px;
    text-align: left;
    border-color: rgb(199, 170, 2);
}


li {
    display: inline-flex;
    text-align: left;
    margin: 5px 5px 5px 5px;
    padding: 5px 5px 5px 5px;
    border-color: rgb(199, 170, 2);
    color: rgb(199, 170, 2);
}
</style>