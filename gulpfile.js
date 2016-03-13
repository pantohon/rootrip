var gulp = require('gulp')
var jade = require('gulp-jade')
var browserify = require('browserify')
var riotify = require('riotify')
var source = require('vinyl-source-stream')
var webserver = require('gulp-webserver')

gulp.task('jade', function() {
  return gulp
  .src('src/index.jade')
  .pipe(jade())
  .pipe(gulp.dest('dist/'))
})

gulp.task('css', function() {
  return gulp
  .src('src/style/*')
  .pipe(gulp.dest('dist/style/'))
})

gulp.task('browserify', function() {
  return browserify({
    entries: 'src/js/components.js',
    debug: true
  })
  .transform(riotify)
  .bundle()
  .on("error", function(err) { console.log("Error: " + err.message); })
  .pipe(source('bundle.js'))
  .pipe(gulp.dest('dist/js/'))
})

gulp.task('server', ['browserify', 'jade', 'css'], function() {
  gulp
  .src('dist')
  .pipe(webserver())
})

gulp.task('default', ['server'])
