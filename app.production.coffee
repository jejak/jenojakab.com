autoprefixer        = require 'autoprefixer'
js_pipeline         = require 'js-pipeline'
css_pipeline        = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(manifest: 'assets/js/manifest.yml'),
    css_pipeline(files: 'assets/css/*.scss')
  ]

  'coffee-script':
    sourcemap: false

  jade:
    pretty: true
