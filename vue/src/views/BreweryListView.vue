<template>
    <div>
        <HeaderView />
        <div class="list">
            <h1>Breweries</h1>
            <img id="madtree" src="../assets/img/madtree.jpg" alt="">
            <h2>MadTree Brewing</h2>
            <h3>3301 Madison Road
                Cincinnati, OH 45209</h3>
            <h4>T: 513.836.8733</h4>
            <p>List of beers goes here</p>
            <img id="madtreebeers" src="../assets/img/madtree brewing beers.webp" alt="">
            <img id="awards" src="../assets/img/OHIO+CRAFT+BREWERS+CUP+2020_MEDALS-01.png" alt="">

            <div>
                <button id="likeButtonmadtree" @click="toggleLike">{{ liked ? 'Unlike' : 'Like' }}</button>
            </div>

            <p>Hours of Operation
                Monday | Thursday
                11AM | 11PM
                Friday
                11AM | 12AM
                Saturday
                10AM | 12AM
                Sunday
                10AM | 11PM
            </p>

        </div>

        <FooterView />

    </div>
</template>


<script>
import HeaderView from './HeaderView.vue'
import FooterView from './FooterView.vue'
export default {

    data() {
        return {
            liked: false
        };
    },

    methods: {
        toggleLike() {
            this.liked = !this.liked;
        }
    },

    components: {
        HeaderView,
        FooterView
    }
}

</script>

<style scoped>
#awards {
    height: 150px;
    width: 200px;

    margin-top: 2rem;
}

#likeButtonmadtree {
    margin-top: 1rem;
    width: 100px;
    height: 20px;
}


.list {
    display: flex;
    flex-direction: column;
    height: auto;

    background-color: rgb(212, 211, 209);
}

#madtreebeers {
    height: 300px;
    width: 500px;

    margin-top: 2rem;
}

#madtree {
    height: 300px;
    width: 500px;

    margin-top: 2rem;
}
</style>