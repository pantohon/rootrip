var riot = require('riot');

require('./custom-tag/rootrip-app.tag');
require('./custom-tag/rootrip-portal.tag');
require('./custom-tag/rootrip-container.tag');
require('./custom-tag/rootrip-playbar.tag');

require('./custom-tag/rootrip-spots.tag');
require('./custom-tag/rootrip-spot.tag');

require('./custom-tag/p2h-table.tag');

riot.mount('*');
