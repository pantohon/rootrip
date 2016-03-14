'use strict';

var gulp = require('gulp');
var jade = require('gulp-jade');

var browserify = require('browserify');
var riotify = require('riotify');
var watchify = require('watchify');
var assign = require('lodash.assign');

var config = require('../config.js').frontend;

var source = require('vinyl-source-stream');

gulp.task('frontend', ['style', 'script']);

gulp.task('style', function() {
    return gulp
        .src(config.styles.src)
        .pipe(gulp.dest(config.styles.dest))
});

gulp.task('script', function() {
    return browserify({
        entries: config.script.src,
        debug: false
    })
        .transform(riotify, { template: 'jade' })
        .bundle()
        .on("error", function(err) { console.log("Error: " + err.message); })
        .pipe(source(config.script.bundleName))
        .pipe(gulp.dest(config.script.dest))
});
