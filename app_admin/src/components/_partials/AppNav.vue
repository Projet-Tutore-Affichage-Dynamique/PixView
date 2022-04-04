<template>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid d-flex justify-content-between">
      <a class="navbar-brand" href="/">
        🤝 PixView - BackOffice
      </a>    
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li v-if="this.id == null" class="nav-item">
            <a class="nav-link active" aria-current="page" href="/login">Me connecter</a>
          </li>
        </ul>
        <ul v-if="this.id != null" class="navbar-nav">
          <!-- Gestionnaires de domaines -->
          <li v-if="this.role" class="nav-item">
            <a class="nav-link active" aria-current="page" href="/gest_dom/devices">Mes dispositifs</a>
          </li>
          <li v-if="this.role" class="nav-item">
            <a class="nav-link active" aria-current="page" href="/gest_dom/admins">Mes gestionnaires</a>
          </li>
          <!-- Gestionnaires de contenues -->
          <li v-if="!this.role" class="nav-item">
            <a class="nav-link active" aria-current="page" href="/gest_cont/devices">Mes dispositifs</a>
          </li>
          <li v-if="!this.role" class="nav-item">
            <a class="nav-link active" aria-current="page" href="/gest_cont/sequences">Mes séquences</a>
          </li>
          <li v-if="!this.role" class="nav-item">
            <a class="nav-link active" aria-current="page" href="/gest_cont/planning">Mon planning</a>
          </li>

          <li v-if="this.id != null" class="nav-item">
            <a href="javascript:void(0)" @click="logout" class="nav-link" >Déconnexion ({{this.login}})</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</template>

<script>
export default {
    return: 'AppNav',
    data() {
      return {
        role: null,
        login: null,
        id: null
      };
    },
    beforeMount() {
      if(localStorage.role && localStorage.login && localStorage.id){
        this.login = localStorage.login;
        this.role = localStorage.role;
        this.id = localStorage.id;
      }
    },
    methods: {
      logout(){
        localStorage.removeItem('role');
        localStorage.removeItem('login');
        localStorage.removeItem('id'); 
        this.$router.push({ name: 'Home' })
      },

      handleClickEvent(){
          this.$router.push({ name: 'GD_Devices'});
      }
    }
}
</script>
