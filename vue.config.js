module.exports = {
  css: {
    loaderOptions: {
      sass: {
        prependData: '@import "~@/styles/common.scss";',
      },
    },
  },
  devServer: {
    host: '0.0.0.0',
    sockHost: 'http://0.0.0.0:8080',
    proxy: {
      '/dev': {
        target: 'http://103.73.162.156:22/',
        ws: true,
        changeOrigin: true,
        pathRewrite: {
          '^/dev': '',
        },
      },
    },
  },
}
