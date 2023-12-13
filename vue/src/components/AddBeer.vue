<template>
    <div>
        <div class="makeBeer">
            <h1>Add Beer</h1>
            <form @submit.prevent="submitBeer">
                <label for="name">/ Beer name \</label>
                <input type="text" id="name" v-model="beer.name" maxlength="30" required>
                <label for="type">/ Beer type \</label>
                <input type="text" id="beerType" v-model="beer.type" maxlength="25" required>
                <label for="Description">/ Description \</label>
                <input type="text" id="Description" v-model="beer.description" maxlength="500" required>
                <label for="ABV">/ Beer abv \</label>
                <input type="text" id="beerAbv" v-model="beer.abv" maxlength="5" required>
                <label for="image">/ Beer image \</label>
                <input type="url" id="beerImage" v-model="beer.image" maxlength="500" required>
                <button type="submit">Submit</button>
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
    text-decoration: none;
    text-align: center;
    /* color: rgb(202, 200, 200); */
    font-size: 1.5rem;
    margin-right: 20px;
    border: 1px solid gray;
    padding: 8px 15px;
    border-radius: 5px;
}

form {
    font-family: Arial, Helvetica, sans-serif;
    display: flex;
    flex-direction: column;
    width: 80%;
    margin: 1rem 0 2rem 0rem;
}


.makeBeer {
    font-family: Arial, Helvetica, sans-serif;
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    align-items: center;
    margin: 1rem 1rem 1rem 1rem;
    border-radius: 1rem;
    border: black solid 1px;
    box-shadow: gray 5px 5px 5px 10px;
    padding: 20px;
    width: 90%;
}

label {
    font-family: Arial, Helvetica, sans-serif;
    display: inline-block;
    text-align: left;
    padding-left: 5px;
    width: 40%;
}

input {
    font-family: Arial, Helvetica, sans-serif;
    padding-left: 5px;
    width: 80%;
    height: 1.5rem;
    margin-bottom: 1.5rem;
}
</style>