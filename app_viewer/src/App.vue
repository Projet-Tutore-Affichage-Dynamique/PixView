<template>
  <div id="app">

    <connection v-if="verif===false"></connection>

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
      token: null,
      url: null,
      contenu: null,

      errored: false,
      loading: false,
    }
  },

  methods: {
    interval(){
      setInterval(() => {
        if(this.verif){
          this.getContenu();
          document.getElementById('screen').requestFullscreen();
        }
      }, 3000);
    },

    getContenu(){
      axios
        .get(this.url)
        .then(response => {
          console.log(response.data);
          this.contenu = response.data.contenu;

          if(response.data.type === 'md') this.markdownToHtml();
          else if(response.data.type === 'image') this.displayImage();
        })
        .catch(error => {
          console.log(error);
          this.errored = true;
        })
        .finally( () => { this.loading = false; } );
    },

    displayImage(){
      document.getElementById('screen').innerHTML = "<div id='image'><img id='img' src='https://www.freepsdbazaar.com/wp-content/uploads/2020/06/sky-replace/sky-sunset/sunset-049-freepsdbazaar.jpg' alt='image '/></div>";
      //document.getElementById('img').requestFullscreen();
    },

    markdownToHtml(){
      let converter = new showdown.Converter();
      document.getElementById('screen').innerHTML = converter.makeHtml(this.contenu);
    },

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
</style>
