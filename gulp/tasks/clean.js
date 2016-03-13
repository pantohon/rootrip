'use strict';

var gulp = require('gulp');
var rimraf = require('rimraf');
var config = require('../config').clean;

// Delete build Directory
gulp.task('clean', function() {
    rimraf(config.dir, function(err) {
        if (err) {
            console.log(err);
        }
    });
});
