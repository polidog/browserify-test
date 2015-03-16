gulp = require 'gulp'
browserify = require 'browserify'
source = require 'vinyl-source-stream'

gulp.task 'script', ->
  browserify
    entries: ['./src/coffee/main.coffee']
    extensions: ['.coffee']
    # standalone: 'Main'
  .bundle()
  .pipe source 'main.js'
  .pipe gulp.dest './dist/js/'
