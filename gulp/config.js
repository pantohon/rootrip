'use strict';

var destDir = 'dist';
var srcDir = 'src';

module.exports = {
    backend: {
        src: [
            srcDir + '/index.jade'
        ],
        dest: destDir
    },
    frontend: {
        script: {
            src: [
                srcDir + '/js/components.js'
            ],
            dest: destDir + '/js',
            bundleName: 'bundle.js'
        },
        styles: {
            src: [
                srcDir + '/style/**/*.css'
            ],
            dest: destDir + '/style'
        }
    },
    serve: {
        src: destDir,
    },
    clean: {
        dir: destDir
    }
};
