<template>
    <div>
        <header-view />
        <div class="addBrewery">
            <h3>Add Brewery</h3>
            <form @submit.prevent="addBrewery"> <!-- Call addBrewery on form submission -->
                <div>
                    <label for="breweryName">Brewery Name => </label>
                    <input type="text" id="breweryName" v-model="brewery.name" maxlength="60" required>
                </div>
                <div class="submit">
                    <button type="submit">Add Brewery</button>
                </div>
            </form>
            <div v-if="showMessage" class="completion-message">Brewery added successfully!</div>
        </div>
    </div>

    <div class="updateBrewer">
        <h3>Update Brewer</h3>
        <form @submit.prevent="updateBrewer">
            <div>
                <label for="userId">User Id = ></label>
                <input type="text" id="userId" required>
            </div>
        </form>
    </div>

    <div>
        <form @submit.prevent="deleteBrewer"></form>
        <div class="breweryName">
            <label for="breweryName">brewery Name</label>
            <input type="text" id="breweryName" maxlength="60" required>
        </div>
    </div>

    <div class="RegUsers">
        <h3>All Registered Users</h3>
        <ul>
            <li v-for="user in userList" :key="user.id" value="user">{{ user.username }}</li>
        </ul>
    </div>

    <div class="DelUsers">
        <h3>Delete users</h3>
        <label for="userId">User ID = > </label>
        <input type="text" id="userId" v-model="userId" required>

        <button @click="deleteUser">Delete User</button>
    </div>
    <footer-view />
</template>

<script>
import HeaderView from './HeaderView.vue';
import FooterView from './FooterView.vue';
import brewService from "../services/BreweriesService";
import UserService from "../services/UserService";

export default {
    data() {
        return {
            brewery: {
                brew_id: '',
                user_id: '',
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
            },
            // breweries: [],
            // invalidCredentials: false,
            userList: [],
            // role: "",  // Add role data property for updating users
            selectedUserId: "", // Add selectedUserId data property
            showMessage: false, // Add a data property to control the completion message
        };
    },

    methods: {
        addBrewery() {
            brewService
                .addBrewery(this.brewery)
                .then((response) => {
                    if (response.status == 201) {
                        // this.breweries = response.data;
                    }
                })
                .catch((error) => {
                    const response = error.response;
                    if (response.status === 401) {
                        this.invalidCredentials = true;
                    }
                });
        },

        deleteUser() {
            // Make an API request to delete the user
            UserService
                .deleteUser(this.userId)
                .then((response) => {
                    console.log("User deleted successfully");
                })
                .catch((error) => {
                    console.error("Error deleting user:", error);
                });
        },

        showCompletionMessage() {
            this.showMessage = true;
        },

    },
    components: {
        HeaderView,
        FooterView,
    },

    created() {
        UserService
            .getUsers()
            .then((response) => {
                console.log("API Response:", response.data); // Log the response data
                if (response.status == 200) {
                    this.userList = response.data;
                    console.log("User List:", this.userList); // Log the user list
                    this.$store.commit("SET_USERS", response.data);
                }
            })
            .catch((error) => {
                console.error("Error fetching users:", error);
            });
    },

};

</script>

<style scoped>
.completion-message {
    font-family: Arial, Helvetica, sans-serif;
    color: green;
    /* Change the color to your preference */
    margin-top: 10px;
    text-align: center;
    font-weight: bold;
    font-size: 1.2rem;
}


button:hover {
    background-color: rgb(137, 157, 4);
    color: rgb(238, 211, 4);

}

.addBrewery {
    border-style: groove;
    padding: 2px 2px 15px 2px;
    margin: 5px 0px 5px 0px;
}

.addBeer {
    border-style: groove;
    padding: 2px 2px 15px 2px;
    margin: 5px 0px 5px 0px;
}

.RegUsers {
    border-style: groove;
    padding: 2px 2px 15px 2px;
    margin: 5px 0px 5px 0px;
}

.UpdateUsers {
    border-style: groove;
    padding: 2px 2px 15px 2px;
    margin: 5px 0px 5px 0px;
}

.DelUsers {
    border-style: groove;
    padding: 2px 2px 15px 2px;
    margin: 5px 0px 5px 0px;
}

h3 {
    font-family: Arial, Helvetica, sans-serif;
    margin-left: 10px;
    padding-left: 10px;
}

label {
    font-family: Arial, Helvetica, sans-serif;
    display: inline-block;
    text-align: left;
    padding-left: 5px;
    width: 180px;
}

input {
    font-family: Arial, Helvetica, sans-serif;
    padding-left: 5px;
    width: 400px;
}

select {
    font-family: Arial, Helvetica, sans-serif;
    padding-left: 5px;
    width: 400px;
}

option {
    font-family: Arial, Helvetica, sans-serif;
    padding-left: 5px;
    width: 400px;
}

button {
    font-family: Arial, Helvetica, sans-serif;
    text-decoration: none;
    color: rgb(212, 216, 5);
    margin-right: 20px;
    transition: color 0.3s;
    border: 1px solid gray;
    padding: 8px 15px;
    border-radius: 5px;
    background-color: rgb(98, 98, 98);
}
</style>