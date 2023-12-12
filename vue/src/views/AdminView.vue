<template>
    <div>
        <header-view />
        <div class="addBrewery">
            <h3>Add Brewery</h3>
            <form @submit.prevent="addBrewery"> <!-- Call addBrewery on form submission -->
                <div>
                    <label for="userId">User Id = > </label>
                    <input type="text" id="userId" required>
                </div>
                <div>
                    <label for="breweryName">Brewery Name = > </label>
                    <input type="text" id="breweryName" maxlength="60" required>
                </div>
                <div>
                    <label for="address">Address = > </label>
                    <input type="text" id="address" maxlength="120" required>
                </div>
                <div>
                    <label for="address2">Address 2 = > </label>
                    <input type="text" id="address2" maxlength="60" required>
                </div>
                <div>
                    <label for="city">City = > </label>
                    <input type="text" id="city" maxlength="50" required>
                </div>
                <div>
                    <label for="state">State Abbr = > </label>
                    <input type="text" id="state" maxlength="2" required>
                </div>
                <div>
                    <label for="zip">Zip Code = > </label>
                    <input type="text" id="zip" maxlength="10" required>
                </div>
                <div>
                    <label for="phone">Phone = > </label>
                    <input type="text" id="phone" maxlength="20" required>
                </div>
                <div>
                    <label for="website">Website = > </label>
                    <input type="text" id="website" maxlength="190" required>
                </div>
                <div>
                    <label for="hours">Hours = > </label>
                    <input type="text" id="hours" maxlength="100" required>
                </div>
                <div>
                    <label for="history">History = > </label>
                    <input type="text" id="history" maxlength="1000" required>
                </div>
                <div>
                    <label for="image">Image URL = > </label>
                    <input type="text" id="image" maxlength="500" required>
                    <button type="submit">Load Brewery</button>
                </div>

            </form>
        </div>
        <div class="addBeer">
            <h3>Add Beer</h3>
            <form @submit.prevent="submitBeer">
                <div class="name">
                    <label for="name">Beer Name = > </label>
                    <!-- <textarea id="beerName" v-model="beer.name" required type="text"></textarea> -->
                    <input type="text" id="beerName" maxlength="30" required>
                </div>
                <div class="type">
                    <label for="type">Beer Type = > </label>
                    <!-- <textarea id="beerType" v-model="beer.type" required type="text"></textarea> -->
                    <input type="text" id="beerType" maxlength="25" required>
                </div>
                <div class="Description">
                    <label for="Description">Description = > </label>
                    <!-- <textarea id="Description" v-model="beer.description" required></textarea> -->
                    <input type="text" id="Description" maxlength="500" required>
                </div>
                <div class="ABV">
                    <label for="ABV">Beer ABV = > </label>
                    <!-- <textarea id="beerAbv" v-model="beer.abv" required type="number"></textarea> -->
                    <input type="text" id="beerAbv" maxlength="5" required>
                </div>
                <div class="image">
                    <label for="image">Beer Image = > </label>
                    <!-- <textarea id="beerImage" v-model="beer.image" required type="url"></textarea> -->
                    <input type="text" id="beerImage" maxlength="500" required>
                </div>
                <div class="status">
                    <label for="status">Out of Stock = > </label>
                    <select id="status" required>
                        <option value="">Select option</option>
                        <option value="True">True</option>
                        <option value="False">False</option>
                    </select>
                    <button type="submit">Add Beer</button>
                </div>
            </form>
        </div>
        <div class="RegUsers">
            <h3>All Registered Users</h3>
            <ul>
                <li v-for="user in userList" :key="user.id">{{ user.name }}</li>
            </ul>
        </div>
        <div class="UpdateUsers">
            <h3>Update Users</h3>
            <div>
                <label for="userId">User ID = > </label>
                <input type="text" id="userId" v-model="userId" required>
            </div>
            <div>
                <label for="role">Role = > </label>
                <select id="Role" required>
                    <option value="">Select a role</option>
                    <option value="1">USER</option>
                    <option value="2">ADMIN</option>
                    <option value="3">BREWER</option>
                    <option value="4">LOVER</option>
                </select>
                <button @click="updateUser">Update User</button>
            </div>
        </div>
        <div class="DelUsers">
            <h3>Delete users</h3>
            <label for="userId">User ID = > </label>
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
            userId: "", // Add userId data property for updating/deleting users
            role: "",  // Add role data property for updating users
            selectedUserId: "", // Add selectedUserId data property
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
            userService.getUsers()
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
        submitBeer() {
            this.beer.brewId = this.brewery.brew_id;
            brewService
                .insertBeer(this.beer)
                .then(response => {
                    if (response.status === 201) {
                        // Handle successful creation (e.g., update this.beer)
                        this.beers.push(response.data); // Add the new ber to the local beers array
                        console.log('Beer submitted successfully:', response.data);
                    }
                })
                .catch(error => {
                    console.error('Error submitting beer:', error);
                });
        }

    },
    mounted() {
        this.getAllUsers(); // Call getAllUsers when the component is mounted
    },
    components: {
        HeaderView,
        FooterView,
    },
};

</script>

<style scoped>
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
    color: white;
    margin-right: 20px;
    transition: color 0.3s;
    border: 1px solid gray;
    padding: 8px 15px;
    border-radius: 5px;
    background-color: rgb(202, 200, 200);
}
</style>