<template>
  <div id="login">
    <div id="home">
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>
    </div>
    <div id="register" class="text-center">
      <form v-on:submit.prevent="register">
        <h1>Create Account</h1>
        <div role="alert" v-if="registrationErrors">
          {{ registrationErrorMsg }}
        </div>
        <div class="form-input-group">
          <label for="username">Username</label>
          <input type="text" id="username" v-model="user.username" required autofocus />
        </div>
        <div class="form-input-group">
          <label for="password">Password</label>
          <input type="password" id="password" v-model="user.password" required />
        </div>
        <div class="form-input-group">
          <label for="confirmPassword">Confirm Password</label>
          <input type="password" id="confirmPassword" v-model="user.confirmPassword" required />
        </div>
        <button type="submit">Create Account</button>
        <p><router-link v-bind:to="{ name: 'login' }">Already have an account? Log in.</router-link></p>
      </form>
    </div>
    <img id="brewscout" src="../assets/img/giphy.gif" alt="">

  </div>
  <div class="footer">
    <FooterView />
  </div>
</template>

<script>
import authService from '../services/AuthService';
import FooterView from './FooterView.vue';

export default {
  components: {
    FooterView,
  },
  data() {
    return {
      user: {
        username: '',
        password: '',
        confirmPassword: '',
        role: 'user',
      },
      registrationErrors: false,
      registrationErrorMsg: 'There were problems registering this user.',
    };
  },
  methods: {
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = 'Password & Confirm Password do not match.';
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
              this.$router.push({
                path: '/login',
                query: { registration: 'success' },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = 'Bad Request: Validation Errors';
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = 'There were problems registering this user.';
    },
  },
};
</script>

<style scoped>
#brewscout {
  width: 20rem;
  height: 20rem;
  margin-top: 2rem;
}


#login {
  background-color: rgb(113, 112, 112);
  height: 52rem;
  text-align: center;
}

.form-input-group {
  text-align: center;
  margin-bottom: 1rem;
  color: gold;
  font-weight: bold;

}

label {
  margin-right: 0.5rem;
}

#home {
  text-align: center;
  font-size: 2rem;
  text-decoration: none;
}

p {
  font-size: 1.5rem;
  text-decoration: none;
}
</style>
