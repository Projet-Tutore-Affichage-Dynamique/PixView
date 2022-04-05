<template>
  <div>
    <main class="container">
      <!-- Sequences -->
      <div class="accordion accordion-flush" id="accordionFlushExample">
        <div v-for='seq in sequences' :key='seq.id_sequence' class="accordion-item">
          <h2 class="accordion-header" id="flush-headingOne">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
              {{ seq.title }}
            </button>
          </h2>
          <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
            <div class="accordion-body">
              <div class="row row-cols-1 row-cols-md-5 g-4">
                <div class="col" v-for='content in contentsBySeq[seq.id_sequence]' :key='content.id_contenu'  >
                  <div class="card h-100">
                    <img v-if="content.type=='img'" src={{ content.content }} class="card-img-top" alt="..." />
                    <div class="card-body">
                      <h5 class="card-title">{{ content.title }}</h5>
                      <br>
                      <p class="card-text"><strong>durée</strong> : {{ content.duration }}</p>
                      <p class="card-text"><strong>type</strong> : {{ content.type }}</p>
                    </div>
                    <div class="card-footer"></div>
                  </div>
                </div>
            </div>
          </div>
        </div>
      </div>
      </div>
      <!-- Contenues -->
      <div>

      </div>
    </main>
  </div>
</template>

<script>
export default {
  name: "AppGCSequences",
  data(){
    return {
      sequences: [],
      contentsBySeq: [],

      role: null,
      login: null,
      id: null
    };
  }
}
</script>

<style scoped>

</style>