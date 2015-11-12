var RootripDispatcher = require('../dispatcher/rootrip-dispatcher.js');
var RootripConstants = require('../constants/rootrip-constants.js');

var RootripActions = {

  /**
   * @param {object} route
   */
  selectRoute: function(route) {
    RootripDispatcher.dispatch({
      actionType: RootripConstants.SELECT_ROUTE,
      route: route
    });
  },

  /**
   * @param {object} station
   */
  selectStation: function(station) {
    RootripDispatcher.dispatch({
      actionType: RootripConstants.SELECT_STATION,
      station: station
    });
  },

  /**
   * @param {object} spot
   */
  selectSpot: function(spot) {
    RootripDispatcher.dispatch({
      actionType: RootripConstants.SELECT_SPOT,
      spot: spot
    });
  }
};

module.exports = RootripActions;
