const { defineConfig } = require("@vue/cli-service");
module.exports = defineConfig({
  lintOnSave: false,
  publicPath: '/findaheng.github.io/',
  transpileDependencies: ["vuetify"],
});
