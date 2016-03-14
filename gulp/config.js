'use strict';

var destDir = 'dist';
var srcDir = 'src';

module.exports = {
    backend: {
        src: [
            srcDir + '/backend/index.jade'
        ],
        dest: destDir
    },
    frontend: {
        script: {
            src: [
                srcDir + '/frontend/script/index.js'
            ],
            dest: destDir + '/js',
            bundleName: 'bundle.js'
        },
        styles: {
            src: [
                srcDir + '/frontend/style/**/*'
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
