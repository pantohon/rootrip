var gulp = require('gulp');
var jade = require('gulp-jade');
var browserify = require('browserify');
var riotify = require('riotify');
var babelify = require('babelify');
var source = require('vinyl-source-stream');
var plumber = require('gulp-plumber');
var webserver = require('gulp-webserver');

gulp.task('jade', function() {
  return gulp
  .src('src/index.jade')
  .pipe(jade())
  .pipe(gulp.dest('dist/'))
});

gulp.task('browserify', function() {
  return browserify({
    entries: 'src/js/components.js',
    debug: true
  })
  .transform(riotify, {
    'type': 'es6',
    'template': 'jade'
  })
  .transform(babelify)
  .bundle()
  .on("error", function(err) { console.log("Error: " + err.message); })
  .pipe(source('bundle.js'))
  .pipe(gulp.dest('dist/js/'))
});

gulp.task('images', function() {
  gulp
  .src('src/img/**/*')
  .pipe(gulp.dest('dist/images/'))
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

  gulp.watch('src/index.jade', ['jade']);
  gulp.watch('src/js/**/*', ['browserify']);
});

gulp.task('default', ['webserver']);
