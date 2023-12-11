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
            <button class="AddBeer">Add Beer!</button>
            <form @submit,prevent="submitBeer">
                <div class="name">
                    <label for="name">Beer name</label>
                    <textarea id="beerName"></textarea>
                </div>
                <div class="type">
                    <label for="type">Beer type</label>
                    <textarea id="beerType"></textarea>
                </div>
                <div class="Description">
                    <label for="Description">Description </label>
                    <textarea id="Description"></textarea>
                </div>
                <div class="image">
                    <label for="image">Beer image</label>
                    <textarea id="beerImage"></textarea>
                </div>
                <div class="ABV">
                    <label for="ABV">Beer abv</label>
                    <textarea id="beerAbv"></textarea>
                </div>

            </form>

        </div>

        <div class="details">
            <h3>Details</h3>
            <ul>
                <li>Address: {{ brewery.address }}</li>
                <li>City: {{ brewery.city }}</li>
                <li>State: {{ brewery.state_abbr }}</li>
                <li>Zip Code: {{ brewery.zip_code }}</li>
                <li>Phone: {{ brewery.phone }}</li>
                <li>Hours: {{ brewery.operation_hours }}</li>
                <li>Website:<a v-bind:href="brewery.website" target="_blank"> {{ brewery.website }}</a></li>
            </ul>
        </div>
    </section>
</template>
  
<script>
import BreweriesService from '../services/BreweriesService';
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
    methods: {
        submitBeer() {
            this.beer.brew_id = this.brew_id;
            // this.beer.beer_id = this.beer_id;
            BreweriesService
                .insertBeer(this.beer)
                .then(response => {
                    if (response.status === 201) {
                        // Handle successful creation (e.g., update this.reviews)
                        this.beers.push(response.data); // Add the new review to the local reviews array
                        console.log('Beer submitted successfully:', response.data);
                    }
                })
                .catch(error => {
                    console.error('Error submitting beer:', error);
                });

        }
    }
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

.AddBeer {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 25%;
    text-align: center;

}

button {
    justify-content: center;
    align-items: center;
    width: 25%;
    text-align: center;
    margin-left: 18rem;
}

form {
    display: flex;
    justify-content: center;
    align-items: center;

    text-align: center;

}
</style>