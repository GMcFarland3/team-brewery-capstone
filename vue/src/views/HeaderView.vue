<template>
    <section>
        <div class="logo">
            <img id="banner" src="../assets/img/BrewScout.png" alt="">
        </div>
        <div id="BrewScout">
            <h1>BrewScout</h1>
            <p> Your go-to companion for exploring and enjoying local breweries and their delightful array of beers. With
                BrewScout, you can seamlessly navigate the world of craft brewing, uncover hidden gems in your area, and
                connect with fellow enthusiasts.</p>
        </div>
        <div class="nav">
            <router-link v-bind:to="{ name: 'home' }" class="nav-link">Home</router-link>
            <!-- Add the same class and hover effect for other links -->
            <router-link v-bind:to="{ name: 'breweries' }" class="nav-link">Breweries</router-link>
            <router-link v-bind:to="{ name: 'login' }" v-if="$store.state.token == ''" class="nav-link">Login</router-link>
            <router-link v-bind:to="{ name: 'register' }" v-if="$store.state.token == ''"
                class="nav-link">Register</router-link>
            <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''"
                class="nav-link">Logout</router-link>
            <router-link v-bind:to="{ name: 'admin' }" class="nav-link">Admin</router-link>
        </div>
    </section>
</template>
<style scoped>
#banner {
    height: 11rem;
    width: 12rem;
}

#home {
    text-align: center;
    font-size: 2rem;
    text-decoration: none;
}

#BrewScout {
    text-align: center;
    font-size: 2rem;
    justify-content: top;
    padding: 0px 0px 0px 0px;
    margin: 0px 0px 0px 0px;
}

h1 {
    padding: 5px 0px 0px 0px;
    margin: 5px 0px 0px 0px;
}

p {
    padding: 0px 0px 0px 40px;
    margin: 0px 0px 0px 0px;
    max-width: 95%;

}

.logo {
    display: flex;
    height: 1px;
}

section {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    background-color: rgb(199, 170, 2);
    height: 11rem;
}

.nav {
    display: flex;
    font-size: 2rem;
    padding-left: 4rem;
    justify-content: flex-end;
    flex-direction: column;
    text-decoration: none;
    margin: 0px 0px 0px 0px;
    padding: 0px 0px 0px 0px;
}

/* Improved button styles and hover effect */
.nav-link {
    text-decoration: none;
    text-align: center;
    color: rgb(202, 200, 200);
    margin-right: 20px;
    transition: color 0.3s;
    border: 1px solid gray;
    padding: 8px 15px;
    max-height: 25px;
    border-radius: 5px;
    background-color: rgb(59, 59, 59);
}

/* Hover effect */
.nav-link:hover {
    color: #FFCC00;
    background-color: gray;
    /* Change text color on hover */
    /* Add additional styling for the hover effect, e.g., background color change */
}
</style>