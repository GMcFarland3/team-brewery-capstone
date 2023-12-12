import { createStore as _createStore } from 'vuex';
import axios from 'axios';

export function createStore(currentToken, currentUser) {
  let store = _createStore({
    state: {
      token: currentToken || '',
      user: currentUser || {},
      breweries: [{
        brew_Id: '',
        userId: '',
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
      }],

      beers: [
        {
          beer_Id: '',
          brew_Id: '',
          name: '',
          type: '',
          abv: '',
          description: '',
          image: '',
          status: ''
        }
      ],

      reviews: [
        {
          user_id: '',
          brew_id: '',
          beer_id: '',
          beerName: '',
          review: '',
          rating: '',
          favorite: '',
          liked: '',
          image: '',
        }
      ]


    },
    mutations: {
      SET_AUTH_TOKEN(state, token) {
        state.token = token;
        localStorage.setItem('token', token);
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
      },
      SET_USER(state, user) {
        state.user = user;
        localStorage.setItem('user', JSON.stringify(user));
      },
      LOGOUT(state) {
        localStorage.removeItem('token');
        localStorage.removeItem('user');
        state.token = '';
        state.user = {};
        axios.defaults.headers.common = {};
      },
      SET_BREWERIES(state, breweries) {
        state.breweries = breweries;
      },
      SET_BEERS(state, beers) {
        state.beers = beers;
      },
      SET_REVIEWS(state, reviews) {
        state.reviews = reviews;
      }
    },


  });
  return store;
}
