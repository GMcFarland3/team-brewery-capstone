<template>
    <section>
        <div class="leaveReview">
            <h1>Leave a Review</h1>
            <form @submit.prevent="submitReview">
                <div class="beers">
                    <label for="beerList">Beers => </label>
                    <select id="beerList" v-model="beerList.beerId">
                        <option v-for="beerList in filteredBeers" :key="beerList.beerId" value="beerList.beerId">{{
                            beerList.name }}</option>
                    </select>
                </div>
                <div class="rating">
                    <label for="rating">Rating => </label>
                    <select id="rating" v-model="review.rating" required>
                        <option value="">Select a rating</option>
                        <option value="1">1 star</option>
                        <option value="2">2 stars</option>
                        <option value="3">3 stars</option>
                        <option value="4">4 stars</option>
                        <option value="5">5 stars</option>
                    </select>
                </div>
                <div class="comment">
                    <label for="comment">Comment => </label>
                    <textarea id="comment" v-model="review.review" required></textarea>
                </div>
                <div class="submit">git pull
                    <button type="submit">Submit</button>
                </div>
            </form>
        </div>
        <div class="allReviews">
            <h2>Reviews</h2>
            <ul class="review">
                <li v-for="(review, index) in filteredReviews" :key="index">
                    <div>
                        <strong>{{ $store.state.user.username }}</strong>
                        <div>
                            <span v-for="star in parseInt(review.rating)" :key="star">⭐</span>
                        </div>
                        <p>{{ review.review }}</p>
                    </div>
                </li>
            </ul>
        </div>
    </section>
</template>
  
<script>
import brewService from '../services/BreweriesService'; // Import your API service

export default {
    data() {
        return {
            review: {
                user_id: '',      // You can set this later when you have user data
                brew_id: '',      // Will be populated with the brewery ID
                beer_id: '',      // Will be populated with the selected beer ID
                name: '',          // The user's name (if needed)
                rating: '',
                review: '',
            },
            reviews: [],
            beerList: {
                beerId: '',
                brewId: '',
                name: '',
                type: '',
                abv: '',
                description: '',
                image: ''
            },
            beersList: []
        };
    },
    props: {
        user_id: {
            type: Number,
            required: true
        },
        brew_id: {
            type: Number,
            required: false
        },
        beer_id: {
            type: String,
            required: false
        },
    },


    computed: {
        filteredReviews() {
            return this.reviews.filter(review => review.brew_id == this.brew_id);
        },
        filteredBeers() {
            return this.beersList.filter(beerList => beerList.brewId == this.brew_id);
        }

    },

    created() {
        brewService
            .getReviews()
            .then(response => {
                if (response.status == 200) {
                    this.reviews = response.data;
                    this.$store.commit('SET_REVIEWS', response.data);

                }
            })
            .catch(error => {
                const response = error.response;
                if (response.status === 401) {
                    this.invalidCredentials = true;
                }
            });
        this.beersList = this.$store.state.beers;
    },

    methods: {
        submitReview() {
            this.review.user_id = this.user_id; // Set the user ID
            this.review.brew_id = this.brew_id; // Set the brewery ID
            this.review.beer_id = this.beer_id; // Set the beer ID
            brewService
                .insertReview(this.review)
                .then(response => {
                    if (response.status === 201) {
                        // Handle successful creation (e.g., update this.reviews)
                        this.reviews.push(response.data); // Add the new review to the local reviews array
                        console.log('Review submitted successfully:', response.data);
                    }
                })
                .catch(error => {
                    console.error('Error submitting review:', error);
                });
        },
    }
};
</script>
  



<style scoped>
form {
    display: flex;
    flex-direction: column;
    align-items: center;
    max-width: 600px;
    margin: auto;
    border-radius: 1rem;
    border: black solid 1px;
    box-shadow: gray 5px 5px 5px 10px;
    padding: 20px;
}

h1 {
    font-size: 3rem;
    text-align: center;
}

.leaveReview {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.allReviews {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.beers {
    margin-bottom: 20px;
}

.review {
    display: flex;
    flex-direction: column;
    align-items: center;
    max-width: 600px;
    /* margin: 0 0 3rem 34rem; */
    border-radius: 1rem;
    border: black solid 1px;
    box-shadow: gray 5px 5px 5px 10px;
    padding: 20px;
}

li {
    margin-bottom: 20px;
    width: 32rem;
    /* Add space between each review */
    padding: 2px;
    /* Add padding to create individual areas for comments */
    border: 2px solid #0A0A0A;
    text-align: center;
    background-color: rgb(214, 213, 213);
    /* Add a border to separate each comment area */
}

ul {
    list-style-type: none;
    /* Remove the bullets */
}

.name {
    margin-bottom: 20px;
    text-align: center;
}

.rating {
    margin-bottom: 20px;
    text-align: center;
}

.comment {
    margin-bottom: 20px;
    text-align: center;
}

.submit {
    text-align: center;
}

button {
    background-color: rgba(199, 170, 3, 0.836);
    border: 1 solid black;
    color: white;
    padding: 9px 12px;
    display: inline-block;
    font-size: 12px;
    border-radius: 2rem;
}

h2 {
    font-size: 2rem;
    text-align: center;
}
</style>