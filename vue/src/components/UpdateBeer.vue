<template>
    <div>
        <div class="makeBeer">
            <h1>Update Beer!</h1>
            <form @submit.prevent="updateBeer">
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

BreweriesService
export default {
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
        updateBeer() {
            this.beer.beer_Id = this.beers.beer_Id;
            BreweriesService
                .updateBeer(this.beer)
                .then(response => {
                    if (response.status === 201) {
                        this.beers.push(response.data);
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

<style scoped></style>