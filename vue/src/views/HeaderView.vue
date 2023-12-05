<template>
    <section>
        <div class="logo">
            <img id="banner" src="../assets/img/BrewScout.png" alt="">
        </div>
        <div id="BrewScout">
            <h1>BrewScout</h1>
        </div>

        <div class="login">
            <router-link v-bind:to="{ name: 'home' }">Home</router-link>
            <router-link v-bind:to="{ name: 'breweryInfo' }">brewInfo</router-link>
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
  }

  .logo {
      display: flex;
      height: 1px;
  }

  section {
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      background-color: rgb(199, 170, 2);
  }

  .login {
      font-size: 2rem;
      display: flex;
      padding-left: 4rem;
      justify-content: space-evenly;
  }
</style>
  
  