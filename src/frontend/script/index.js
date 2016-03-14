'use strict';

var riot = require('riot');

require('./components/rp-root.tag');
require('./components/rm-header.tag');
require('./components/rm-routeSelector.tag');
require('./components/rm-stationSelector.tag');
require('./components/rm-main.tag');

require('./components/rc-panel.tag');
require('./components/rc-panelItem.tag');
require('./components/rc-spotCard.tag');

riot.mount('*');
