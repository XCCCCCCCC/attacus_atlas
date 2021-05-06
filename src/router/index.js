import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    meta: { title: '查询' },
    component: () => import(/* webpackChunkName: "about" */ '../views/Query.vue'),
  },
  {
    path: '/query',
    name: 'query',
    meta: { title: '查询' },
    component: () => import(/* webpackChunkName: "about" */ '../views/Query.vue'),
  },
  {
    path: '/result',
    name: 'result',
    meta: { title: '结果' },
    component: () => import(/* webpackChunkName: "result" */ '../views/Result.vue'),
  },
]

const router = new VueRouter({
  routes,
})
router.beforeEach((to, from, next) => {
  next()
})

router.afterEach((to) => {
  if (to.meta.title) {
    document.title = to.meta.title
  }
})
export default router
