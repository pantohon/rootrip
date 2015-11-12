var RootripDispatcher = require('../dispatcher/rootrip-dispacther.js');
var EventEmitter = require('events').EventEmitter;
var RootripConstants = require('../constants/rootrip-constants.js');
var assign = require('object-assign');

var CHANGE_EVENT = 'change';

var _selectedRouteId = null;
var _selectedStationId = null;
var _selectedSpotId = null;

var _routes = [
  {
    id: 1,
    name: '江ノ島電鉄',
    image: 'https://goo.gl/DVMFCJ',
    stations: [
      {
        id: 1,
        name: '鎌倉',
        nextId: 2,
        prevId: null,
        description: '鎌倉駅でーす。'
      },
      {
        id: 2,
        name: '和田倉',
        nextId: 3,
        prevId: 1,
        description: '和田塚でごわす... '
      },
      {
        id: 3,
        name: '由比ヶ浜',
        nextId: 4,
        prevId: 2,
        description: '由比ヶ浜なんですけどー！'
      }
    ]
  }
];

var _spots = [
  {
    id: 1,
    name: '遊山',
    genre: 'food',
    image: '',
    description: '鎌倉の歴史に比べれば僅かな時間ですが、遊山も鎌倉で７年の年月をかさねて参りました。歴史が不変である様に、変わらぬ味と香の珈琲をお届けしたいと考えております。鎌倉の常連様に愛され、初めてお目にかかる方に親しまれる様、勤めてまいります。鎌倉にお越しの際は、是非思い出の一つに遊山をお加え頂ければ幸いに存じます。お目にかかれる日を楽しみに致しております。',
    url: 'http://tabelog.com/kanagawa/A1404/A140402/14008019/',
    nearestStations: [
      {
        routeId: 1,
        stationId: 1,
        distance: 7
      }
    ]
  }
];

function updateSelectedRoute(routeId) {
  _selectedRouteId = routeId;
}

function updateSelectedStation(stationId) {
  _selectedStationId = stationId;
}

function updateSelectedSpot(spotId) {
  _selectedSpotId = spotId;
}

var RootripStore = assign({}, EventEmitter.prototype, {

  emitChange: function() {
    this.emit(CHANGE_EVENT);
  },

  addChangeListener: function(callback) {
    this.on(CHANGE_EVENT, callback);
  },

  removeChangeListener: function(callback) {
    this.removeListener(CHANGE_EVENT, callback);
  }
});

RootripDispatcher.register(function(action) {
  var routeId, stationId, spotId;

  switch(action.actionType) {
    case RootripConstants.SELECT_ROUTE:
      updateSelectedRoute(action.route.id);
      RootripStore.emitChange();
      break;

    case RootripConstants.SELECT_STATION:
      updateSelectedStation(action.station.id);
      RootripStore.emitChange();
      break;

    case RootripConstants.SELECT_SPOT:
      updateSelectedSpot(action.spot.id);
      RootripStore.emitChange();
      break;

    default:
      // no op
  }
});

module.exports = RootripStore;
