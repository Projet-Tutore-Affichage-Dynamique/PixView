<template>
  <section class="h-100">
    <div class="container d-flex flex-column justify-content-around h-100 py-5">
      <div class="d-flex justify-content-center align-items-center mb-3">
        <div class="col-sm-8 text-center">
          <h1 class="display-5 font-weight-bold">
            Une phrase de Merde.
          </h1>
        </div>
      </div>
      <div class="d-flex justify-content-center align-items-center mb-3">
        <div class="col-sm-8 text-center">
          <h5 class="text-muted font-weight-normal">
            PixView - Backoffice est la plateforme pour les admins afin de gérer tous vos gestionnaires et vos écrans.
          </h5>
        </div>
      </div>
    </div>
    <div class="text-center mb-5">
     <router-link class="btn btn-lg btn-outline-primary mx-2" aria-current="page" to="/login">Me connecter</router-link>
    </div>
  </section>
</template>

<script>
export default {
  name: "AppHome",
};
</script>
