import axios from 'axios';

export default {

    getBreweries() {
        return axios.get('/breweries')
    },

    getBeers() {
        return axios.get('/breweries/beers')
    },

    insertReview(review) {
        return axios.post('/review/user/:id', review)
    },

    getReviews() {
        return axios.get('/reviews')
    }

}
