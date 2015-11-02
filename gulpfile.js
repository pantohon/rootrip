var gulp = require('gulp');
var jade = require('gulp-jade');
var browserify = require('browserify');
var riotify = require('riotify');
var source = require('vinyl-source-stream');
var plumber = require('gulp-plumber');
var webserver = require('gulp-webserver');

gulp.task('browserify', function() {
  browserify({ entries: ['src/js/components.js'] })
  .transform(riotify, { templates: 'jade' })
  .bundle()
  .pipe(source('components.js'))
  .pipe(gulp.dest('dist/js/'))
  ;
});

gulp.task('scripts', function() {
  gulp
  .src([
    './src/js/main.js',
    './src/js/**/*.js'
  ])
  .pipe(plumber())
  .pipe(gulp.dest('dist/js/'))
  ;
});

gulp.task('jade', function() {
  gulp
  .src('./src/index.jade')
  .pipe(plumber())
  .pipe(jade())
  .pipe(gulp.dest('dist/'))
  ;
});

gulp.task('webserver', ['browserify', 'scripts', 'jade'], function() {
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
