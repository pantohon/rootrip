'use strict';

var riot = require('riot');
var request = require('superagent');

require('./components/rootrip-root/rootrip-root.tag.jade');
require('./components/rootrip-header/rootrip-header.tag.jade');
require('./components/rootrip-navbar/rootrip-navbar.tag.jade');
require('./components/rootrip-contents/rootrip-contents.tag.jade');

riot.mount('*');
