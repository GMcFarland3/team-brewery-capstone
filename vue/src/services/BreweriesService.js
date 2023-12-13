import axios from 'axios';

export default {

    // Open API calls for non-login users can view
    getBreweries() {
        return axios.get('/breweries')
    },
    getBeers() {
        return axios.get('/beers')
    },
    getReviews() {
        return axios.get('/reviews')
    },

    // Must be login and have permissions 
    insertReview(review) {
        return axios.post('/addReview', review)
    },
    insertBeer(beer) {
        return axios.post('/addBeer', beer)
    },
    addBrewery(brewery) {
        return axios.post('/addBrewery', brewery)
    },
    updateBeer(beer_id) {
        return axios.put('/beer/:id', beer_id)


    },
    updateBrewery(brewery, id) {
        return axios.put('/admin/brewery/update/${brewery.brew_id}', brewery, id)
    }
}
