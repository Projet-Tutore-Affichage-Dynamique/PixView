<template>
  <div>
    <main class="container">
      <h1>Mes Dispositifs</h1>   <p>{{ devices.length }} dispositifs actifs</p>
      <aside class="mb-5">
        <button class="btn btn-success"><router-link class="nav-link active" aria-current="page" to="/" style="color:white">Créer un nouveau dispositif</router-link></button>
      </aside>
      <div class="row row-cols-1 row-cols-md-5 g-4">
        <div class="col" v-for='device in devices' :key='device.id_screen'  >
          <div class="card h-100">
            <!--<img src="https://picsum.photos/200" class="card-img-top" alt="..." />-->
            <div class="card-body">
              <h5 class="card-title">{{ device.name }}</h5>
              <br>
              <p class="card-text"><strong>ip address</strong> : {{ device.ip_address }}</p>
              <p class="card-text"><strong>sequences</strong> : {{ device.sequence_has_screen }}</p>
            </div>
            <div class="card-footer">
              <input type="checkbox" checked disabled data-toggle="toggle">
            </div>
          </div>
        </div>
      </div>
    </main>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "AppGDDevices",
  data() {
    return {
      pools: [],
      devices: [],
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
      axios
          .get("http://docketu.iutnc.univ-lorraine.fr:62340/items/pool?filter[gestionnaire_id_gestionnaire][_eq]="+this.id)
          .then((response) => {
            let data = response.data;

            data.forEach((pool) => {
              this.pools.push(pool);

              axios
                  .get("http://docketu.iutnc.univ-lorraine.fr:62340/items/screen?filter[pool_id_pool][_eq]="+pool.id_pool)
                  .then((response) => {
                    let data2 = response.data;

                    data2.forEach((screen) => {
                      this.devices.push(screen);
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
      this.$router.push({ name: 'GC_Devices'});
    }
  },
}
</script>

<style scoped>

</style>