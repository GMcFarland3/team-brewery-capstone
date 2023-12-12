<template>
    <div>
        <div class="makeBeer">
            <h1>Add Beer!</h1>
            <form @submit.prevent="submitBeer">
                <div class="name">
                    <label for="name">Beer name</label>
                    <textarea id="beerName" v-model="beer.name" required type="text"></textarea>
                </div>
                <div class="type">
                    <label for="type">Beer type</label>
                    <textarea id="beerType" v-model="beer.type" required type="text"></textarea>
                </div>
                <div class="Description">
                    <label for="Description">Description </label>
                    <textarea id="Description" v-model="beer.description" required></textarea>
                </div>
                <div class="image">
                    <label for="image">Beer image</label>
                    <textarea id="beerImage" v-model="beer.image" required type="url"></textarea>
                </div>
                <div class="ABV">
                    <label for="ABV">Beer abv</label>
                    <textarea id="beerAbv" v-model="beer.abv" required type="number"></textarea>
                </div>
                <div class="submit">
                    <button type="submit">Submit</button>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
import BreweriesService from '../services/BreweriesService';
export default {
    props: {

        brewery: {
            type: Object,
            required: true
        }
    },
    data() {
        return {
            // brewery: {},
            beer: {
                beer_Id: '',
                brew_id: '',
                name: '',
                type: '',
                abv: '',
                description: '',
                image: '',
                status: ''
            },
            beers: []
        }
    },

    created() {
        BreweriesService
            .getBeers()
            .then(response => {
                if (response.status == 200) {
                    this.reviews = response.data;
                    this.$store.commit('SET_BEERS', response.data);

                }
            })
            .catch(error => {
                const response = error.response;
                if (response.status === 401) {
                    this.invalidCredentials = true;
                }
            });

    },
    methods: {
        submitBeer() {
            this.beer.brewId = this.brewery.brew_id;
            BreweriesService
                .insertBeer(this.beer)
                .then(response => {
                    if (response.status === 201) {
                        // Handle successful creation (e.g., update this.beer)
                        this.beers.push(response.data); // Add the new ber to the local beers array
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
    font-family: Arial, Helvetica, sans-serif;
    display: flex;
    flex-direction: column;
    width: 200rem;
    padding-left: 1.5rem;
    flex-grow: 2;
    padding-right: 1.5rem;
}

.details>ul {
    font-family: Arial, Helvetica, sans-serif;
    list-style-type: none;
    font-size: 1.5rem;
    justify-content: center;
    margin-top: 1px;
}

ul li {
    font-family: Arial, Helvetica, sans-serif;
    margin-top: 10px;
    text-align: center;
}

.details {
    font-family: Arial, Helvetica, sans-serif;
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
    font-family: Arial, Helvetica, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: xx-large;
}

.details>h3 {
    font-family: Arial, Helvetica, sans-serif;
    font-size: xx-large;
    text-decoration: underline;
    justify-content: center;
    align-items: center;
    margin: 25px 0px 15px 15px;
}

.AddBeer {
    font-family: Arial, Helvetica, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 25%;
    text-align: center;
}

button {
    font-family: Arial, Helvetica, sans-serif;
    justify-content: center;
    align-items: center;



}

form {
    font-family: Arial, Helvetica, sans-serif;
    display: flex;


    margin: 1rem 0 2rem 0rem;
}


.submit {
    font-family: Arial, Helvetica, sans-serif;
    display: flex;
    text-align: center;






}

.makeBeer {
    font-family: Arial, Helvetica, sans-serif;
    display: flex;
    flex-direction: column;
    align-items: center;

    /* margin: 0 0 3rem 34rem; */
    border-radius: 1rem;
    border: black solid 1px;
    box-shadow: gray 5px 5px 5px 10px;
    padding: 20px;
    max-width: 1000px;
    margin: 2rem 0px 2rem 25rem;
}
</style>