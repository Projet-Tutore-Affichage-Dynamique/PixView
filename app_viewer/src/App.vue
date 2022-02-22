<template>
  <div id="app">

    <connection v-if="verif===false && start===false"></connection>

    <section v-if="errored">Pas de contenu wsh</section>
    <section v-else>
      <spinner v-if="loading">Loading</spinner>

      <section id="screen" v-else></section>
    </section>

  </div>
</template>




<script>
import Connection from "./components/Connection";
import Spinner from "./components/spinner";
import axios from "axios";
import showdown from "showdown";
export default {
  name: 'app',

  components: {Spinner, Connection},

  data () {
    return {
      verif: false,
      start: false,
      token: null,
      url: null,
      contenu: null,

      errored: false,
      loading: false,

      /** IdScreen **/
      idScreen: null,
      /** Sequences **/
      idSequences: [],
      iS: -1, // Increment sequences
      /** Contenus **/
      idContenus: [],
      iC: -1,


      /** URL **/
      urlSequencesByScreenId: '/items/screen_sequence?filter[screen_id_screen][_eq]=',
      urlIdContenusBySequenceId: '/items/contenu_sequence?fields=contenu_id_contenu&filter[sequence_id_sequence][_eq]=',
      urlContentById: '/items/contenu?filter[id_contenu][_eq]=',
    }
  },

  methods: {
    interval(){
      setInterval(() => {
        if(this.verif && !this.start){
          this.start = true;
          this.launch();

          document.getElementById('screen').requestFullscreen();
        }
      }, 500);

    },

    launch(){
      // Récupère les id de séquences
      axios
        .get(this.url + this.urlSequencesByScreenId + this.idScreen)
        .then(response => {
          let data = response.data.data;
          let sqs = [];

          data.forEach((dts) => {
            sqs.push(dts.sequence_id_sequence);
          });
          this.idSequences = sqs;
          //console.log(this.idSequences);

          // Démare l'app en récupèrant les contenus de la séquences courante
          this.nextSequence(0.001);

        })
        .catch(error => {
          console.log(error);
          this.errored = true;
        })
        .finally( () => { this.loading = false; } );
    },

    getContenu(){

      axios
        .get(this.url + this.urlContentById + this.idContenus[this.iC])
        .then(response => {
          console.log(response.data.data[0]);
          if(response.data.data.length > 0){
            let data = response.data.data[0];
            this.contenu = data.content;

            if(data.type === 'md' || data.type === 'txt') this.markdownToHtml();
            else if(data.type === 'image' || data.type === 'img') this.displayImage();
            else if(data.type === 'pdf' || data.type === 'PDF') this.displayPDF();

            this.nextContenu(data.duration);
          } else {
            this.nextContenu(0.001);
          }

        })
        .catch(error => {
          console.log(error);
          this.errored = true;
        })
        .finally( () => { this.loading = false; } );
    },

    nextContenu(stand){
      console.log('nextContenu   ' + this.idContenus);
      setTimeout(() => {
        if((this.iC+1) < this.idContenus.length){
          this.iC++;

          this.getContenu();
        } else {

          this.nextSequence();

        }
      }, stand*1000);

    },

    nextSequence(stand){
      console.log('nextSequence   ' + this.idSequences);
      if((this.iS+1) < this.idSequences.length){
        this.iS++;
      } else {
        this.iS = 0;
      }


      setTimeout(() => {
        axios
          .get(this.url + this.urlIdContenusBySequenceId + this.idSequences[this.iS])
          .then(response => {
            let data = response.data.data;
            let cts = [];

            data.forEach((dts) => {
              cts.push(dts.contenu_id_contenu);
            });
            this.idContenus = cts;
            console.log(this.idContenus);

            // Démare l'app en récupèrant les contenus de la séquences courante
            this.iC = -1;
            this.nextContenu(0.001);

          })
          .catch(error => {
            console.log(error);
            this.errored = true;
          })
          .finally( () => { this.loading = false; } );


      }, stand*1000);


    },

    displayImage(){
      document.getElementById('screen').innerHTML = "<div id='image'><img id='img' src='"+ this.contenu +"' alt='image '/></div>";
      //document.getElementById('img').requestFullscreen();
    },

    markdownToHtml(){
      let converter = new showdown.Converter();
      document.getElementById('screen').innerHTML = converter.makeHtml(this.contenu);
    },

    displayPDF(){
      //document.getElementById('screen').innerHTML = "<iframe src='"+ this.contenu +"' height='100%' width='100%'></iframe>";
      document.getElementById('screen').innerHTML = "<div id='image'><img id='img' src='"+ this.contenu +"' alt='image '/></div>";
    },

    displayVideo(){
      // A compléter
    },

  },

  created() {
    this.interval();
  }
}
</script>






<style>

html{
  max-width: 100vw;
  max-height: 100vh;
}

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;


}

h1, h2 {
  font-weight: normal;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
  margin: 0 10px;
}

a {
  color: #42b983;
}

#image{
  width: 100vw;
  height: 100vh;
}
#img{
  width: 100%;
  height: 100%;
}
img{
  width: 100%;
  height: auto;
}
</style>
