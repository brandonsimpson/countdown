<template>
  <div id="app">
    <countdown></countdown>
  </div>
</template>

<script>
import Countdown from './components/Countdown'

export default {
  components: {
    Countdown
  }
}
</script>

<style>
#app {
    align-items: center;
    bottom: 0;
    background-color: #fff;
    display: flex;
    justify-content: center;
    left: 0;
    position: absolute;
    right: 0;
    top:0;
}
</style>
