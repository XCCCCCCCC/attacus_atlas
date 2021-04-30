<script>
export default {
  name: 'the-header',
  components: {},
  props: {},
  data() {
    return {}
  },
  computed: {},
  watch: {},
  beforeCreate() {},
  created() {},
  beforeMount() {},
  mounted() {},
  beforeUpdate() {},
  updated() {},
  activated() {},
  deactivated() {},
  beforeDestroy() {},
  destroyed() {},
  methods: {},
}
</script>

<template>
  <div id="the-header">{{$route.meta.title}}</div>
</template>

<style lang="scss">
#the-header {
  @include text-size(18px, 60px);
  text-align: left;
}
</style>
