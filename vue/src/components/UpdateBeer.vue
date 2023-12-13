<template>
    <div>
        <div class="updateBeer">
            <h1>Update Beer</h1>
            <form @submit.prevent="updateBeer">
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
    </div>
</template>

<script>
import BreweriesService from '../services/BreweriesService';
export default {
    data() {
        return {
            beer: {
                beer_Id: '',
                brewId: '',
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
    methods: {
        updateBeer() {
            BreweriesService
                .updateBeer(this.beer)
                .then(response => {
                    if (response.status === 201) {
                        // Handle successful creation (e.g., update this.beer)
                        this.beer.push(response.data); // Add the new ber to the local beers array
                        console.log('Beer updated successfully:', response.data);
                    }
                })
                .catch(error => {
                    console.error('Error updating beer:', error);
                });
        }
    }
}

</script>

<style scoped>
.updateBeer {

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
</style>