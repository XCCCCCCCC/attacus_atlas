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
        target: 'http://10.8.29.10:5000/',
        ws: true,
        changeOrigin: true,
        pathRewrite: {
          '^/dev': '',
        },
      },
    },
  },
}
