autoprefixer        = require 'autoprefixer'
js_pipeline         = require 'js-pipeline'
css_pipeline        = require 'css-pipeline'

module.exports =
  ignores: [
    'readme.md',
    'assets/css/base/**/*',
    'assets/css/layout/**/*',
    'assets/css/mixins/**/*',
    '**/layout.*',
    '**/_*',
    '**/manifest.yml',
    '.gitignore',
    'ship.*conf'
  ]

  extensions: [
    js_pipeline(manifest: 'assets/js/manifest.yml'),
    css_pipeline(files: 'assets/css/*.scss')
  ]

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true

  postcss:
    use: [
      autoprefixer
    ]
