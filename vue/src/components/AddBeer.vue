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
.form-container {
    display: flex;
    justify-content: space-between;
}

.makeBeer,
.updateBrewery {
    flex: 1;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    border: 1px solid black;
    border-radius: 10px;
    padding: 20px;
    background-color: #f2f2f2;
    margin: 0 10px;
}

h1 {
    font-size: 2rem;
    margin-bottom: 20px;
}

label {
    font-size: 1.5rem;
    margin-bottom: 10px;
}
</style>