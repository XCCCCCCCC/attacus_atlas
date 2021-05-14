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
  <div id="the-header">
    <el-menu
      :default-active="$route.name"
      mode="horizontal"
      background-color="#545c64"
      text-color="#fff"
      active-text-color="#409EFF"
      router
    >
      <el-menu-item index="query">查询</el-menu-item>
      <el-menu-item index="storage">存储</el-menu-item>
    </el-menu>
  </div>
</template>

<style lang="scss">
#the-header {
  @include text-size(18px, 60px);
  text-align: left;
}
</style>
