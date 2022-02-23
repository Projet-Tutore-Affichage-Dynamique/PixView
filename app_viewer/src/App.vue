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
      /** Styles **/
      idStyles: [],
      /** Contenus **/
      idContenus: [],
      iC: -1,


      /** URL **/
      urlSequencesByScreenId: '/items/screen_sequence?filter[screen_id_screen][_eq]=',
      urlIdContenusBySequenceId: '/items/contenu_sequence?fields=contenu_id_contenu&filter[sequence_id_sequence][_eq]=',
      urlContentById: '/items/contenu?filter[id_contenu][_eq]=',

      urlIdStyleBySequence: '/items/sequence?filter[id_sequence][_eq]=',
      urlStyleById: '/items/theme?filter[id_theme][_eq]='
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

          // Integrate in HTML, balise 'style'
          let style = document.createElement('style');
          style.id = 'style_sequence';
          document.getElementById('app').appendChild(style);

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

      this.integrateStyle();

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
      //document.getElementById('screen').innerHTML = "<div id='image'><img id='img' src='"+ this.contenu +"' alt='image '/></div>";
      document.getElementById('screen').innerHTML = "<embed type='application/pdf' src='"+ this.contenu +"' width='800px' height='2100px'/>";

      //document.getElementById('screen').innerHTML = "<canvas id='canvas'></canvas>";
      //this.downloadPDF(this.contenu);
    },

    displayVideo(){
      // A compléter
    },

    

    integrateStyle(){
      document.getElementById('style_sequence').innerText = '';

      if(this.idSequences[this.iS] !== null){

        axios
          .get(this.url + this.urlIdStyleBySequence + this.idSequences[this.iS])
          .then(response => {
            let idStyle = response.data.data[0].theme_id_theme;

            axios
              .get(this.url + this.urlStyleById + idStyle)
              .then(response => {
                let data = response.data.data[0];

                let style = data.style;

                document.getElementById('style_sequence').innerText = style;

              })
              .catch(error => {
                throw error;
              })

          })
          .catch(error => {
            console.log(error);
            this.errored = true;
          })
          .finally( () => { this.loading = false; } );

      }

    },


    /*downloadPDF(url){

      // Asynchronous download of PDF
      let loadingTask = pdfjsLib.getDocument(url);
      loadingTask.promise.then(function(pdf) {
        console.log('PDF loaded');

        // Fetch the first page
        var pageNumber = 1;
        pdf.getPage(pageNumber).then(function(page) {
          console.log('Page loaded');

          var scale = 1.5;
          var viewport = page.getViewport({scale: scale});

          // Prepare canvas using PDF page dimensions
          var canvas = document.getElementById('canvas');
          var context = canvas.getContext('2d');
          canvas.height = viewport.height;
          canvas.width = viewport.width;

          // Render PDF page into canvas context
          var renderContext = {
            canvasContext: context,
            viewport: viewport
          };
          var renderTask = page.render(renderContext);
          renderTask.promise.then(function () {
            console.log('Page rendered');
          });
        });
      }, function (reason) {
        // PDF loading error
        console.error(reason);
      });
    }*/


  },

  created() {
    this.interval();
  }
}
</script>






<style>

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

#screen:fullscreen {
  background-color: white;
  width: 100vw;
  height: 100vh;
}

#screen:-webkit-full-screen {
  background-color: white;
  width: 100vw;
  height: 100vh;
}

#screen:-moz-full-screen {
  background-color: white;
  width: 100vw;
  height: 100vh;
}

#screen:-ms-fullscreen {
  background-color: white;
  width: 100vw;
  height: 100vh;
}

</style>
