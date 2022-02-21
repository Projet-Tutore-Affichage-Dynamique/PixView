<template>
  <div id="main">
    <h1>Pix View</h1>

    <div id="form">
      <label for="url_input">URL :</label>
      <input v-model="url" id="url_input">

      <label for="token_input">Token</label>
      <input v-model="token" id="token_input">

      <button v-on:click="verifyConnection">Connection</button>

      <section v-if="errored">Erreur de connection</section>
      <section v-else>
        <spinner v-if="loading">Loading</spinner>

        <section v-else></section>
      </section>
    </div>
  </div>
</template>

<script>
import Spinner from "./spinner";
import axios from "axios";
export default {
  name: "Connection",

  components: {Spinner},

  data () {
    return {
      loading: false,
      errored: false,
      url: "",
      token: "",
    }
  },

  methods: {
    verifyConnection(){
      if(this.url !== "" && this.token !== ""){
        axios
          .get(this.url)
          .then(response => {
            let data = response.data.verif;
            if(data){
              console.log('coucou');
              this.$parent.verif = true;
              this.$parent.token = this.token;
              this.$parent.url = this.url + "/contenu";
            }
          })
          .catch(error => {
            console.log(error);
            this.errored = true;
          })
          .finally( () => this.loading = false );
      }

    }
  },
}
</script>

<style scoped>

</style>
