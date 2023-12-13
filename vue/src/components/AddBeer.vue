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

        <div class="updateBrewery">
            <h1>updateBrewery</h1>
            <form @submit.prevent="submitUpdated">
                <div class="breweryName">
                    <label for="updatebrewery">Brewery name</label>
                    <textarea id="updatebrewery" v-model="brewery.name" required type="text"></textarea>
                </div>
                <div class="breweryaddress">
                    <label for="updatebrewery">Brewery address</label>
                    <textarea id="updatebrewery" v-model="brewery.address" required type="text"></textarea>
                </div>
                <div class="breweryaddress2">
                    <label for="updatebrewery">Brewery address2</label>
                    <textarea id="updatebrewery" v-model="brewery.address2" required type="text"></textarea>
                </div>
                <div class="brewerycity">
                    <label for="updatebrewery">Brewery city</label>
                    <textarea id="updatebrewery" v-model="brewery.city" required type="text"></textarea>
                </div>
                <div class="breweryStateAbbr">
                    <label for="updatebrewery">Brewery StateAbbr</label>
                    <textarea id="updatebrewery" v-model="brewery.state_abbr" required type="text"></textarea>
                </div>
                <div class="zipCode">
                    <label for="updatebrewery">Brewery zipCode</label>
                    <textarea id="updatebrewery" v-model="brewery.zipCode" required type="text"></textarea>
                </div>

                <div class="Phone">
                    <label for="updatebrewery">Phone</label>
                    <textarea id="updatebrewery" v-model="brewery.phone" required type="text"></textarea>
                </div>

                <div class="website">
                    <label for="updatebrewery">Website</label>
                    <textarea id="updatebrewery" v-model="brewery.website" required type="text"></textarea>
                </div>

                <div class="history">
                    <label for="updatebrewery">History</label>
                    <textarea id="updatebrewery" v-model="brewery.history" required type="text"></textarea>
                </div>

                <div class="operationhours">
                    <label for="updatebrewery">Operation Hours</label>
                    <textarea id="updatebrewery" v-model="brewery.operationHours" required type="text"></textarea>
                </div>
                <div class="img">
                    <label for="updatebrewery">Image</label>
                    <src id="updatebrewery" v-model="brewery.image" required type="src"></src>
                </div>
                <button type="submit"> submit brewery update</button>

            </form>

        </div>
    </div>
</template>

<script>
import BreweriesService from '../services/BreweriesService';
export default {

    data() {
        return {
            brewery: {
                brew_id: '',
                user_id: '',
                name: '',
                address: '',
                address2: '',
                city: '',
                state_abbr: '',
                zip_code: '',
                phone: '',
                website: '',
                history: '',
                operation_hours: '',
                image: ''
            },


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
            this.brewery.brew_id;
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
        },

        updateBrewery() {
            this.brewery.brew_id;
            BreweriesService
                .updateBrewery(this.brewery)
                .then(response => {
                    if (response.status === 201) {
                        // Handle successful creation (e.g., update this.beer)
                        this.breweries.push(response.data); // Add the new ber to the local beers array
                        console.log('Brewery updated successfully:', response.data);
                    }
                })
                .catch(error => {
                    console.error('Error updating brewery:', error);
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