<template>
    <div>
        <h1>Leave a Review</h1>
        <form @submit.prevent="submitReview">
            <div class="name">
                <label for="name">Name:</label>
                <input type="text" id="name" v-model="review.name" required>
            </div>
            <div class="rating">
                <label for="rating">Rating:</label>
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
                <label for="comment">Comment:</label>
                <textarea id="comment" v-model="review.comment" required></textarea>
            </div>
            <div class="submit">
                <button type="submit">Submit</button>
            </div>
        </form>
        <h2>Reviews</h2>
        <ul class="review">
            <li v-for="(review, index) in reviews" :key="index">
                <div>
                    <strong>{{ review.name }}</strong>
                    <div>
                        <span v-for="star in parseInt(review.rating)" :key="star">⭐</span>
                    </div>
                    <p>{{ review.comment }}</p>
                    <button @click="likeReview(index)">Like</button>
                    <span>{{ review.likes }} likes</span>
                </div>

            </li>
        </ul>
    </div>
</template>
<script>
export default {
    data() {
        return {
            review: {
                name: '',
                rating: '',
                comment: '',
                likes: 0
            },
            reviews: []
        };
    },
    methods: {
        submitReview() {
            this.reviews.push({ ...this.review });
            this.review.name = '';
            this.review.rating = '';
            this.review.comment = '';
        },
        likeReview(index) {
            this.reviews[index].likes++;
        }
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

.review {
    display: flex;
    flex-direction: column;
    align-items: center;
    max-width: 600px;
    margin: 0 0 3rem 34rem;
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