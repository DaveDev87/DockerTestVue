<template>
  <form v-on:submit.prevent="onSubmit">
    <h1>Agregue un número</h1>
    <input type="text" placeholder="Type here..." />
    <button type="submit">Enviar</button>
  </form>
</template>

<script>
export default {
  name: "HelloWorld",
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
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
</style>
