'use strict';

var gulp = require('gulp');
var webserver = require('gulp-webserver');
var config = require('../config').serve;

gulp.task('serve', ['frontend', 'backend'], function() {
    gulp
        .src('dist')
        .pipe(webserver({
            livereload: true
        }));

    gulp.start(['watch']);
});

gulp.task('watch', function() {
    // frontend
    gulp.watch('src/frontend/script/**/*', function(ev) {
        gulp.start('frontend');
    });
});
