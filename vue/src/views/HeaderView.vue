<template>
    <section>
        <div class="logo">
            <img id="banner" src="../assets/img/BrewScout.png" alt="">
        </div>
        <div id="BrewScout">
            <h1>BrewScout</h1>
            <p>The best place to find your local breweries, beers, rate and review them!!</p>
        </div>

        <div class="nav">
            <router-link v-bind:to="{ name: 'home' }">Home</router-link>
            <!-- <router-link v-bind:to="{ name: 'breweryInfo', params: { brew_Id: 1 } }">brewInfo</router-link> -->
            <router-link v-bind:to="{ name: 'breweries' }">Breweries</router-link>
            <router-link v-bind:to="{ name: 'login' }" v-if="$store.state.token == ''">Login</router-link>
            <router-link v-bind:to="{ name: 'register' }" v-if="$store.state.token == ''">Register</router-link>
            <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
            <router-link v-bind:to="{ name: 'admin' }">admin</router-link>
        </div>
    </section>
</template>
  
<script>
export default {
};
</script>
  
<style scoped>  #banner {
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

  a {
      text-decoration: none;
      text-align: right;

  }
</style>
  
  