let path = require("path");
module.exports = {
	//代理
	devServer: {
	  proxy: {
	    '/api': {
	      target: "http://8.142.30.192:8099",
	    //   target: "http://localhost:8099",
	      changeOrigin: true,
	      pathRewrite: {
	        '^/api': '/api'
	      }
	    }
	  },
	},
	configureWebpack: (config) => {
    	config.resolve = { 
      		extensions: ['.js', '.json', '.vue'],
      		alias: {
       	 		'@': path.resolve(__dirname, './src'),
      		}
    	}
  	},
	lintOnSave:false
}