<template>
    <section>
        <div class="picture">
            <img :src="brewery.image" alt="image broken"> <!-- Use the brewery's image source -->
        </div>
        <div class="cardList">
            <div class="mainInfo">
                <h1>{{ brewery.name }}</h1> <!-- Display the brewery's name -->
                <h2>{{ brewery.history }}</h2> <!-- Display the brewery's description -->
            </div>

            <div class="details">
                <h3>Details</h3>
                <ul>
                    <li>{{ brewery.address }}</li>
                    <li>{{ brewery.city }}</li>
                    <li>{{ brewery.state_abbr }}</li>
                    <li>{{ brewery.zip_code }}</li>
                    <li>{{ brewery.website }}</li>
                    <li>{{ brewery.phone }}</li>
                    <li>{{ brewery.operation_hours }}</li>
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
        const brew_Id = this.$route.params.brew_Id;
        this.brewery = this.$store.state.breweries.find(b => b.brew_id == brew_Id);
        console.log('Brewery im wrong:', this.brewery); // Debugging output
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