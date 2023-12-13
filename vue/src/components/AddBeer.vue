<template>
    <div>
        <div class="makeBeer">
            <h1>Add Beer</h1>
            <form @submit.prevent="submitBeer">
                <label for="brewId">Brew id</label>
                <input type="number" id="brewId" v-model="beer.brewId" required>
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
                <button type="submit">Submit Add Beer</button>
            </form>
        </div>
        <div class="updateBrewery">
            <h1>updateBrewery</h1>
            <form @submit.prevent="updateBrewery">
                <div class="breweryId">
                    <label for="updateBreweryId">Brewery Id</label>
                    <input id="updateBreweryId" v-model="brewery.brew_id" type="number" required>
                </div>
                <div class="breweryName">
                    <label for="updateBreweryName">Brewery name</label>
                    <input id="updateBreweryName" v-model="brewery.name" type="text" required>
                </div>
                <div class="breweryaddress">
                    <label for="updateBreweryAddress">Brewery address</label>
                    <input id="updateBreweryAddress" v-model="brewery.address" type="text" required>
                </div>
                <div class="breweryaddress2">
                    <label for="updateBreweryAddress2">Brewery address2</label>
                    <input id="updateBreweryAddress2" v-model="brewery.address2" type="text" required>
                </div>
                <div class="brewerycity">
                    <label for="updateBreweryCity">Brewery city</label>
                    <input id="updateBreweryCity" v-model="brewery.city" type="text" required>
                </div>
                <div class="breweryStateAbbr">
                    <label for="updateBreweryStateAbbr">Brewery StateAbbr</label>
                    <input id="updateBreweryStateAbbr" v-model="brewery.state_abbr" type="text" required>
                </div>
                <div class="zipCode">
                    <label for="updateBreweryZipCode">Brewery zipCode</label>
                    <input id="updateBreweryZipCode" v-model="brewery.zip_code" type="text" required>
                </div>

                <div class="Phone">
                    <label for="updateBreweryPhone">Phone</label>
                    <input id="updateBreweryPhone" v-model="brewery.phone" type="text" required>
                </div>

                <div class="website">
                    <label for="updateBreweryWebsite">Website</label>
                    <input id="updateBreweryWebsite" v-model="brewery.website" type="text" required>
                </div>

                <div class="history">
                    <label for="updateBreweryHistory">History</label>
                    <input id="updateBreweryHistory" v-model="brewery.history" type="text" required>
                </div>

                <div class="operationhours">
                    <label for="updateBreweryOperationHours">Operation Hours</label>
                    <input id="updateBreweryOperationHours" v-model="brewery.operation_hours" type="text" required>
                </div>
                <div class="breweryImg">
                    <label for="updateBreweryImage">Brewery Image</label>
                    <input id="updateBreweryImage" v-model="brewery.image" type="url">
                </div>
                <button type="submit">Submit Brewery Update</button>
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
                brew_id: 0,
                user_id: 0,
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
                beer_Id: 0,
                brewId: 0,
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
            BreweriesService
                .updateBrewery(this.brewery)
                .then(response => {
                    if (response.status === 201) {
                        // Handle successful creation (e.g., update this.beer)
                        this.brewery.push(response.data); // Add the new ber to the local beers array
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
    background-color: rgb(149, 147, 147);
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
    text-align: center;
    font-size: 1.5rem;
    text-decoration: none;
    font-weight: bold;
    color: #050505;
    padding: 10px 20px;
    border-radius: 25px;
    transition: background-color 0.3s, color 0.3s;
    background-color: rgb(159, 159, 5);
}

button:hover {
    background-color: #333;
    transform: scale(1.1);
}

button:active {
    transform: scale(0.9);
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
    border: rgb(190, 197, 5) solid 1px;
    box-shadow: rgb(137, 147, 3) 5px 5px 5px 10px;
    background-color: rgb(201, 199, 186);
    padding: 20px;
    width: 90%;
}

.updateBrewery {
    font-family: Arial, Helvetica, sans-serif;
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    align-items: center;
    margin: 1rem 1rem 1rem 1rem;
    border-radius: 1rem;
    border: rgb(190, 197, 5) solid 1px;
    box-shadow: rgb(137, 147, 3) 5px 5px 5px 10px;
    background-color: rgb(201, 199, 186);
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