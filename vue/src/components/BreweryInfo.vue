<template>
    <section>
        <div class="picture">
            <img :src="brewery.image" alt="image broken"> <!-- Use the brewery's image source -->

        </div>

        <div class="history">
            <div class="info">
                <h1>{{ brewery.name }}</h1>
            </div>
            <h2>{{ brewery.history }}</h2> <!-- Display the brewery's description -->
        </div>


        <div class="details">
            <h3>Details</h3>
            <ul>
                <li>{{ brewery.address }}</li>
                <li>{{ brewery.city }}</li>
                <li>{{ brewery.state_abbr }}</li>
                <li>{{ brewery.zip_code }}</li>
                <li>{{ brewery.phone }}</li>
                <li>{{ brewery.operation_hours }}</li>
                <li><a v-bind:href="brewery.website" target="_blank">{{ brewery.website }}</a></li>
            </ul>
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

    },
}
</script>


<style scoped>
section {
    display: flex;


}

img {
    max-width: 400px;
    max-height: 400px;
    margin: 15px 0px 15px 0px;
}

.history {
    display: flex;
    flex-direction: column;
    width: 200rem;
    padding-left: 1.5rem;
    flex-grow: 2;
    padding-right: 1.5rem;

}

.details>ul {
    list-style-type: none;
    font-size: 1.5rem;
    justify-content: center;
    margin-top: 1px;

}

ul li {
    margin-top: 10px;
    text-align: center;
}

.details {
    font-size: 1.5rem;
    display: flex;
    flex-direction: column;
    align-items: center;
    align-content: flex-end;
    background-color: whitesmoke;
    padding-right: 2rem;
    border: 2.5px solid rgb(199, 170, 2);
    margin: 15px 0px 15px 0px;


}

section.details {
    display: flex;

}

.info {
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: xx-large;

}

.details>h3 {
    font-size: xx-large;
    text-decoration: underline;
    justify-content: center;
    align-items: center;
    margin: 25px 0px 15px 15px;

}
</style>