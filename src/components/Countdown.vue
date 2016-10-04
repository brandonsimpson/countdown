<template>
    <div class="block">
      <span v-countdown="timestamp" class="digit"></span>
    </div>
</template>

<script>
import countdown from 'countdown'

export default {
  data () {
    return {
      timestamp: '2017-02-27'
    }
  },
  directives: {
    countdown: {
      bind: function (el, binding, vnode, oldVnode) {
        var eventTime = new Date(binding.value)
        var interval = 1000
        el.innerHTML = countdown(eventTime).toString()
        setInterval(() => {
          el.innerHTML = countdown(eventTime).toString()
        }, interval)
      }
    }
  }
}
</script>

<style>
@import url(https://fonts.googleapis.com/css?family=Roboto+Condensed:400|Roboto:100);

.block {
    display: flex;
    flex-direction: column;
    margin: 20px;
}

.text {
    color: #1abc9c;
    font-size: 46px;
    font-family: 'Roboto Condensed', serif;
    font-weight: 40;
    margin-top:10px;
    margin-bottom: 10px;
    text-align: center;
}

.digit {
    color: #bcecff;
    font-size: 150px;
    font-weight: 100;
    font-family: 'Roboto Condensed', serif;
    margin: 10px;
    text-align: center;
}
</style>
