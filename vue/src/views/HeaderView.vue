<template>
    <section>
        <div class="logo">
            <img id="banner" src="../assets/img/BrewScout.png" alt="">
        </div>
        <div id="BrewScout">
            <h1>BrewScout</h1>
        </div>
        <div id="home">
            <router-link v-bind:to="{ name: 'home' }">Home</router-link>
        </div>
        <div class="login">
            <router-link v-bind:to="{ name: 'login' }" v-if="$store.state.token == ''">Login</router-link>&nbsp;|&nbsp;
            <router-link v-bind:to="{ name: 'register' }"
                v-if="$store.state.token == ''">Register</router-link>&nbsp;|&nbsp;
            <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
        </div>
    </section>
</template>
  
<script>
export default {
};
</script>
  
<style scoped>  #banner {
      text-align: left;
      height: 20rem;

  }

  #home {
      text-align: center;
      font-size: 2rem;
      padding-top: 1rem;
  }

  #BrewScout {
      text-align: center;
      font-size: 2rem;
  }

  .logo {
      display: flex;
      height: 85px;
      ;
  }

  section {
      display: flex;
      flex-direction: column;
      justify-content: space-between;

      width: 100%;
      background-color: rgb(199, 170, 2);
  }

  .login {
      font-size: 1.5rem;
      display: flex;
      justify-content: flex-end;
      font-size: 2rem;
      padding-right: 1rem;
      padding-top: 1rem;

  }
</style>
  
  