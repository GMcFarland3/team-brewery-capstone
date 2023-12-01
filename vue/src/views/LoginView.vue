<template>
  <div id="login">
    <div id="home">
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>
    </div>
    <form v-on:submit.prevent="login">
      <h1>Please Sign In</h1>
      <div role="alert" v-if="invalidCredentials">
        Invalid username and password!
      </div>
      <div role="alert" v-if="this.$route.query.registration">
        Thank you for registering, please sign in.
      </div>
      <div class="form-input-group">
        <label for="username">Username</label>
        <input type="text" id="username" v-model="user.username" required autofocus />
      </div>
      <div class="form-input-group">
        <label for="password">Password</label>
        <input type="password" id="password" v-model="user.password" required />
      </div>
      <button type="submit">Sign in</button>
      <p>
        <router-link v-bind:to="{ name: 'register' }">Need an account? Sign up.</router-link>
      </p>
    </form>
    <img id="brewscout" src="../assets/img/BrewScout.png" alt="">

  </div>

  <div class="footer">
    <FooterView />
  </div>
</template>

<script>
import authService from "../services/AuthService";
import FooterView from "./FooterView.vue";

export default {
  components: {
    FooterView
  },
  data() {
    return {
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/");
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    }
  }
};
</script>

<style scoped>
.footer {
  height: 3rem;
}


#brewscout {
  width: 30%;
  height: 50%;
  margin-top: 2rem;
}

button {
  border-radius: 0.5rem;
  border: 0.4rem solid black;
  width: 10rem;
  height: 3rem;
  font-size: 2rem;
  margin-bottom: 1rem;
}


input {

  width: 30rem;
  height: 2rem;
  border-radius: 0.5rem;
  border: 0.4rem solid black;
  margin-bottom: 1rem;
  text-align: center;

}

h1 {
  font-size: 3rem;
}

.form-input-group {
  margin-bottom: 2rem;
  background-color: rgb(155, 132, 2);
  text-align: center;
}

label {
  margin-right: 0.5rem;
  text-align: center;

}

#login {
  background-color: grey;
  height: 119rem;
  text-align: center;
  font-size: 5rem;
}
</style>