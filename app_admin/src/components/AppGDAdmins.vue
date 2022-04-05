<template>
  <div>
    <main class="container">
      <h1>Mes Gestionnaires</h1>
      <aside class="mb-5">
        <button class="btn btn-success"><router-link class="nav-link active" aria-current="page" to="/" style="color:white">Ajouter un gestionnaire</router-link></button>
      </aside>
      <div class="row row-cols-1 row-cols-md-5 g-4">
        <div class="col" v-for='admin in admins' :key='admin.name'  >
          <div class="card h-100">
            <!--<img src="https://picsum.photos/200" class="card-img-top" alt="..." />-->
            <div class="card-body">
              <h5 class="card-title">{{ admin.name }}</h5>
              <br>
              <strong>dispositifs :</strong>
              <p v-for='device in devicesByAdmins[admin.name]' :key='device.uuid'   class="card-text">{{ device.name }}<input type="checkbox" checked disabled data-toggle="toggle"></p>
            </div>
            <div class="card-footer"></div>
          </div>
        </div>
      </div>
    </main>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "AppGDAdmins",
  data() {
    return {
      devicesByAdmins: [],
      admins: [],
      role: null,
      login: null,
      id: null
    };
  },
  beforeMount(){
    this.role = localStorage.role;
    this.login = localStorage.login;
    this.id = localStorage.id;

    // Vérifie si le rôle correspond bien
    if(this.role){
      // Récupère tous les admins non gestionnaire de domaine
      axios
        .get("http://docketu.iutnc.univ-lorraine.fr:62340/items/gestionnaire?filter[role][_eq]=false")
        .then((response) => {
          let data = response.data;

          data.forEach((admin) => {
            this.admins.push(admin);

            axios
                .get("http://docketu.iutnc.univ-lorraine.fr:62340/items/pool?filter[gestionnaire_id_gestionnaire][_eq]="+this.id)
                .then((response) => {
                  let data2 = response.data;
                  data2.forEach((pool) => {
                    axios
                        .get("http://docketu.iutnc.univ-lorraine.fr:62340/items/screen?filter[pool_id_pool][_eq]="+pool.id_pool)
                        .then((response) => {
                          let data3 = response.data;

                          data3.forEach((screen) => {
                            this.devicesByAdmins[admin.name].push(screen);
                          });

                        })
                        .catch((error) => {
                          console.log(error)
                          this.errored = true;
                        });
                  });
                })
                .catch((error) => {
                  console.log(error)
                  this.errored = true;
                });
          });
        })
        .catch((error) => {
          console.log(error)
          this.errored = true;
        });

    } else {
      this.$router.push({ name: 'Home'});
    }
  },
}
</script>

<style scoped>

</style>