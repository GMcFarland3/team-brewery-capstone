import axios from 'axios';

export default {

    getBreweries() {
        return axios.get('/breweries')
    },

    getBeers() {
        return axios.get('/breweries/beers')
    }

}
