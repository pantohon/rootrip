var gulp = require('gulp');
var jade = require('gulp-jade');
var browserify = require('browserify');
var riotify = require('riotify');
var source = require('vinyl-source-stream');
var plumber = require('gulp-plumber');
var webserver = require('gulp-webserver');

gulp.task('jade', function() {
  gulp
  .src('src/index.jade')
  .pipe(jade())
  .pipe(gulp.dest('dist/'))
  ;
});

gulp.task('browserify', function() {
  browserify({ entries: ['src/js/components.js'] })
  .transform(riotify, { 'template': 'jade' })
  .bundle()
  .pipe(source('components.js'))
  .pipe(gulp.dest('dist/js/'))
  ;
});

gulp.task('webserver', ['browserify', 'jade'], function() {
  gulp
  .src('dist')
  .pipe(
    webserver({
      port: 3333,
      livereload: true
    })
  )
  ;

});

gulp.task('default', ['webserver']);
