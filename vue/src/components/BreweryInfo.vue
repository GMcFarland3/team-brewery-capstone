<template>
    <section>

        <div class="picture">
            <img src="../assets/img/madtree.jpg">
        </div>
        <div class="cardList">
            <div class="mainInfo">
                <h1>MadTree</h1>
                <h2>The history of the brewery as we know it.</h2>
                <p>hi</p>
            </div>

            <div class="details">
                <h3>Details</h3>
                <ul>
                    <li>123 Main Street</li>
                    <li>Hamilton, OH 45011</li>
                    <li>www.municipal.com</li>
                    <li>513-555-5555</li>
                    <li>Mon-Fri (2pm-11pm)</li>
                </ul>
            </div>
        </div>
    </section>
</template>

<script>


export default {
    //props: ['breweries']
}
</script>

<style scoped>
section {
    display: flex;
    flex-direction: row;
}

.mainInfo {
    display: flex;
    flex-direction: column;
}

h1 {
    font-size: 3rem;
    text-align: left;
    margin: 0px 0px 0px 0px;
}

h2 {
    margin: 0px 0px 0px 0px;
}

h3 {
    text-align: center;
    text-decoration: underline;
    font-size: 2rem;
    margin: 0px 0px 0px 0px;
}

ul {
    margin: 0px 0px 0px 0px;
    padding: 0px 0px 0px 0px;
}

li {
    list-style: none;
    margin: 5px 0px 5px 0px;
}

.details {
    display: flex;
    flex-direction: column;
    flex-grow: 1;
    text-align: center;
    justify-content: center;
}

.cardList {
    display: flex;
    flex-direction: row;
    font-size: 1rem;
    flex-grow: 1;

}
</style>