var riot = require('riot')

require('./tags/rp-root.tag')
require('./tags/rm-header.tag')
require('./tags/rm-routeSelector.tag')
require('./tags/rm-stationSelector.tag')
require('./tags/rm-main.tag')

require('./tags/rc-panel.tag')
require('./tags/rc-panelItem.tag')
require('./tags/rc-spotCard.tag')

riot.mount('*')
