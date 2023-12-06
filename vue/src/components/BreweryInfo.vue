<template>
    <section>
        <div class="picture">
            <img :src="brewery.image" alt="image broken"> <!-- Use the brewery's image source -->
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

        <div class="history">
            <h2>{{ brewery.history }}</h2> <!-- Display the brewery's description -->
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
    flex-direction: row;
}

img {
    max-width: 400px;
    max-height: 400px;
}

.history {
    display: flex;
    flex-direction: column;
}
</style>