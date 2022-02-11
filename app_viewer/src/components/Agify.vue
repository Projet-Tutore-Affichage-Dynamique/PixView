<template>
  <div>

  </div>
</template>

<script>
import axios from "axios";
import Spinner from "./spinner";
export default {
  name: "Agify",

  methods: {
    searchAge(name){

    }
  },

  created () {
    axios
      .get('https://api.agify.io')
      .then(response => {
        this.infoBrute = response;
        this.info = this.infoBrute.data.bpi;
      })
      .catch(error => {
        console.log(error);
        this.errored = true;
      })
      .finally( () => this.loading = false );
    // méthode appelée quand le callback d'une promise est executé : resolve ou reject, cela évite de dupliquer le code dans .then & .catch
  },
}
</script>

<style scoped>

</style>
