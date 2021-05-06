<script>
import TheHeader from '@/components/TheHeader'
export default {
  name: 'app',
  components: { TheHeader },
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
  <el-container id="app">
    <el-header>
      <the-header />
    </el-header>
    <el-container>
      <el-aside v-if="false" width="200px">Aside</el-aside>
      <el-container>
        <el-main>
          <router-view />
        </el-main>
        <el-footer v-if="false">Footer</el-footer>
      </el-container>
    </el-container>
  </el-container>
</template>

<style lang="scss">
html,
body,
#app {
  height: 100%;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  // text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
