'use strict';

var riot = require('riot');

require('./components/rootrip-root/rootrip-root.tag.jade');
require('./components/rootrip-header/rootrip-header.tag.jade');
require('./components/rootrip-navbar/rootrip-navbar.tag.jade');
require('./components/rootrip-spot-viewer/rootrip-spot-viewer.tag.jade');

riot.mount('*');
