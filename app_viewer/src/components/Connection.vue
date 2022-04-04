<template>
  <div id="main">
    <h1>Pix View</h1>
    <h2>Espace de connexion</h2>

    <div id="form">
      <div class="form-input">
        <input v-model="url" id="url_input" placeholder="Url"/>
      </div>
      <div class="form-input">
        <input v-model="token" id="token_input" placeholder="Token"/>
      </div>
      <div class="form-btn">
        <button class="btn btn-primary" v-on:click="verifyConnection">Connection</button>
      </div>
    </div>
    <aside class="errored" v-if="errored">
      {{ errored }}
    </aside>
    <aside v-else>
      <spinner v-if="loading">Loading</spinner>

      <aside v-else></aside>
    </aside>
  </div>
</template>

<script>
import Spinner from "./spinner";
import axios from "axios";
export default {
  name: "Connection",

  components: { Spinner },

  data() {
    return {
      loading: false,
      errored: null,
      url: "",
      token: "",
    };
  },

  methods: {
    verifyConnection() {
      if (this.url !== "" && this.token !== "") {
        axios
          .get(this.url + "/items/screen?filter[ip_address][_eq]=" + this.token)
          .then((response) => {
            let data = response.data.data[0];
            console.log(data);
            if (data) {
              this.$parent.token = this.token;
              this.$parent.url = this.url;
              this.$parent.idScreen = data.id_screen;
              this.$parent.verif = true;
            }
          })
          .catch((error) => {
            console.log(error);
            this.errored = error;
          })
          .finally(() => (this.loading = false));
      }
    },
  },
};
</script>

<style scoped>
body{
  width: 100vw;
  height: 100vh;
}
#main{
  width: 25%;
  /* height: 100%; */
  margin: auto;
  display: flex;
  flex-direction: column;
  justify-content: center;
}
.errored {
  position: relative;
  padding: 1rem 1rem;
  margin-bottom: 1rem;
  border: 1px solid transparent;
  border-radius: 0.25rem;
  color: #842029;
  background-color: #f8d7da;
  border-color: #f5c2c7;
}
h1{
  font-size: 4rem;
  color:#7d0dfd;
}
h2{
  color: #393434;
  font-weight: bold;
  opacity: .8;
}
#form {
  margin: 20px 0px;
}
.form-input {
  margin: 10px 0px;
}
.form-input input{
  margin: 10px 0px;
  font-size: 1.5rem;
  width: 90%;
  padding: 10px 20px;
}
.form-btn {
  margin-top: 40px;
}
.btn {
  display: inline-block;
  font-weight: 400;
  width: 100%;
  line-height: 1.5;
  color: #212529;
  text-align: center;
  text-decoration: none;
  vertical-align: middle;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  user-select: none;
  background-color: transparent;
  border: 1px solid transparent;
  padding: 0.375rem 0.75rem;
  font-size: 1.5rem;
  border-radius: 0.25rem;
}
.btn-primary {
  color: #fff;
  background-color: #7d0dfd;
  border-color: #7d0dfd;
}
.btn-primary:focus {
  color: #fff;
  background-color: #bc0bd7;
  border-color: #900aca;
  box-shadow: 0 0 0 0.25rem rgba(243, 49, 253, 0.5);
}
</style>
