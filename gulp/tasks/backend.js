'use strict';

var gulp = require('gulp');
var jade = require('gulp-jade');
var config = require('../config.js').backend;

gulp.task('backend', ['template']);

gulp.task('template', function() {
    return gulp
        .src(config.src)
        .pipe(jade())
        .pipe(gulp.dest(config.dest))
});
