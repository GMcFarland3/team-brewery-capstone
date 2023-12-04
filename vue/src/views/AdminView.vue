<template>
    <div>
        <header-view />
        <h3>Add brewery</h3>
        <div>
            <form @submit.prevent="addBrewery"> <!-- Call addBrewery on form submission -->
                <label for="breweryName">Brewery Name:</label>
                <input type="text" id="breweryName" v-model="breweryName" required>
                <button type="submit">Load Brewery</button>
            </form>
        </div>


        <div>
            <h3>all registered users</h3>
            <select v-model="selectedUserId">
                <option value="">Select a user</option>
                <option v-for="user in userList" :key="user.id" :value="user.id">{{ user.name }}</option>
            </select>
        </div>

        <div>
            <h2>Update Users</h2>
            <label for="userId">User ID:</label>
            <input type="text" id="userId" v-model="userId" required>

            <label for="role">Role:</label>
            <input type="text" id="role" v-model="role" required>

            <button @click="updateUser">Update User</button>
        </div>


        <h3>delete users</h3>
        <div>
            <label for="userId">User ID:</label>
            <input type="text" id="userId" v-model="userId" required>

            <button @click="deleteUser">Delete User</button>
        </div>

        <footer-view />
    </div>
</template>

<script>
import HeaderView from './HeaderView.vue';
import FooterView from './FooterView.vue';
import brewService from "../services/BreweriesService";
import userService from "../services/UserService";
export default {
    data() {
        return {
            breweryName: "",
            breweries: [],
            invalidCredentials: false,
            userList: [],
            selectedUserId: "",
        };
    },
    methods: {
        addBrewery() {
            brewService
                .addBrewery(this.breweryName)
                .then((response) => {
                    if (response.status == 201) {
                        this.breweries = response.data;
                    }
                })
                .catch((error) => {
                    const response = error.response;
                    if (response.status === 401) {
                        this.invalidCredentials = true;
                    }
                });
        },

        getAllUsers() {
            // Make an API request to get all users
            userService.getAllUsers()
                .then((response) => {
                    this.userList = response.data;
                })
                .catch((error) => {
                    console.error("Error fetching users:", error);
                });
        },

        updateUser() {
            // object with the updated user data
            const updatedUserData = {
                userId: this.userId,
                role: this.role,

            };

            // Make an API request to update the user
            userService.updateUser(updatedUserData)
                .then((response) => {
                    console.log("User updated successfully");
                })
                .catch((error) => {
                    console.error("Error updating user:", error);
                });
        },

        deleteUser() {
            // Make an API request to delete the user
            userService.deleteUser(this.userId)
                .then((response) => {
                    console.log("User deleted successfully");
                })
                .catch((error) => {
                    console.error("Error deleting user:", error);
                });
        },

    },
    mounted() {
        this.getAllUsers();
        // Code to be executed when the component is mounted
    },
    components: {
        HeaderView,
        FooterView,
    },
};



</script>

<style scoped></style>