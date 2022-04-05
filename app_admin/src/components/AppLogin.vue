<template>
<div>
  <form class="container w-50 my-5" @submit.prevent="handleSubmit">
    <h1 class="mb-5 border-bottom pb-2">Connexion</h1>
    <div class="mb-3">
      <label for="login" class="form-label">Username</label>
      <input
        v-model="login"
        type="text"
        class="form-control"
        id="login"
        aria-describedby="login"
      />
    </div>
    <div class="mb-3">
      <label for="pwd" class="form-label">Mot de passe</label>
      <input
        v-model="pwd"
        type="password"
        class="form-control"
        id="pwd"
      />
    </div>
    <div class="my-5">
      <button class="btn btn-primary me-2">Connexion</button>
    </div>
  </form>
</div>
</template>

<script>
import axios from "axios";
import bcryptjs from "bcryptjs";

export default {
  name: "AppLogin",
  data() {
    return {
      login: "",
      pwd: "",
    };
  },
  methods: {
  async handleSubmit() {
      axios
        .get("http://docketu.iutnc.univ-lorraine.fr:62340/items/gestionnaire?filter[name][_eq]="+this.login)
        .then((response) => {
          this.infos = response;

          // Vérifie si le mdp correspond et la réponse
          if(response && bcryptjs.compareSync(this.pwd, this.infos.data.password)){

            localStorage.role = this.infos.data.role;
            localStorage.login = this.infos.data.login;
            localStorage.id = this.infos.data.id_gestionnaire;

            if(localStorage.role === true)
              this.$router.push({ name: 'GD_Devices' })
            else
              this.$router.push({ name: 'GC_Devices' })

          }else{
            return null;
          }
        })
        .catch((error) => {
          console.log(error)
          this.errored = true;
        });
  },

  },
};
</script>
