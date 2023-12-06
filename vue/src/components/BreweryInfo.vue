<template>
    <section>
        <div class="picture">
            <img :src="brewery.imageSrc" alt="image broken"> <!-- Use the brewery's image source -->
        </div>
        <div class="cardList">
            <div class="mainInfo">
                <h1>{{ brewery.name }}</h1> <!-- Display the brewery's name -->
                <h2>{{ brewery.description }}</h2> <!-- Display the brewery's description -->
            </div>

            <div class="details">
                <h3>Details</h3>
                <ul>
                    <li>{{ brewery.address }}</li>
                    <li>{{ brewery.location }}</li>
                    <li>{{ brewery.website }}</li>
                    <li>{{ brewery.phone }}</li>
                    <li>{{ brewery.hours }}</li>
                </ul>
            </div>
        </div>
    </section>
</template>
  
<script>
export default {
    data() {
        return {
            brewery: {},
        }
    },

    created() {
        const brewId = this.$route.params.brewId;
        this.brewery = this.$store.state.breweries.find(b => b.brewId == brewId);
    },
}
</script>


<style scoped>
section {
    display: flex;
    flex-direction: row;
}

.mainInfo {
    display: flex;
    flex-direction: column;
}

h1 {
    font-size: 3rem;
    text-align: left;
    margin: 0px 0px 0px 0px;
}

h2 {
    margin: 0px 0px 0px 0px;
}

h3 {
    text-align: center;
    text-decoration: underline;
    font-size: 2rem;
    margin: 0px 0px 0px 0px;
}

ul {
    margin: 0px 0px 0px 0px;
    padding: 0px 0px 0px 0px;
}

li {
    list-style: none;
    margin: 5px 0px 5px 0px;
}

.details {
    display: flex;
    flex-direction: column;
    flex-grow: 1;
    text-align: center;
    justify-content: center;
}

.cardList {
    display: flex;
    flex-direction: row;
    font-size: 1rem;
    flex-grow: 1;

}
</style>