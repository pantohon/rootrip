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

gulp.task('images', function() {
  gulp
  .src('src/img/**/*')
  .pipe(gulp.dest('dist/images/'))
  ;
});

gulp.task('webserver', ['browserify', 'jade', 'images'], function() {
  gulp
  .src('dist')
  .pipe(
    webserver({
      port: 2222,
      livereload: true
    })
  )
  ;

  gulp.watch('src/index.jade', ['jade']);
  gulp.watch('src/js/custom-tag/*', ['browserify']);
});

gulp.task('default', ['webserver']);
