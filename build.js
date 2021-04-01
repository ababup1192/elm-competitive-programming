const esbuild = require('esbuild')
const ElmPlugin = require('esbuild-plugin-elm')

esbuild.build({
    entryPoints: ['src/index.js'],
    bundle: true,
    outfile: 'dist/bundle.js',
    minify: true,
    platform: 'node',
    plugins: [
      ElmPlugin({debug: false, optimize: true, pathToElm: null}) // options are documented below
    ],
}).catch(e => (console.error(e), process.exit(1)))