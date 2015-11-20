rootrip-app.wrapper
  header

  rootrip-portal

  rootrip-container(spot='{ selectedSpot }')

  aside
    rootrip-playbar(route='{ selectedRoute }')

  style.
    rootrip-app {
      display: flex;
      height: 100%;
    }

    header {
      width: 30px;
      min-width: 30px;
      color: #3E2723;
      background-color: #FFFFFF;
    }

    aside {
      width: 250px;
      min-width: 250px;
      color: #3E2723;
      border-left: 10px solid #F5F5F5;
      border-right: 10px solid #F5F5F5;
      background-color: #D7CCC8;
    }
    
  script.
    this.routeAction = require('../action/RouteAction');
    this.routeStore = require('../store/RouteStore');
    this.stationStore = require('../store/StationStore');
    this.spotStore = require('../store/SpotStore');
    this.dispatcher = require('../dispatcher/Dispatcher');
    this.stateStore = require('../store/StateStore');
    var utility = require('../utility');

    this.selectedSpot = this.spotStore.spots[0];
    this.selectedRoute = this.routeStore.routes[0];

    this.getSelectedStation = () => {
      var stations = this.stationStore.stations;
      var selectedId = this.stateStore.selectedStationId;
      for (var i = 0; i < stations.length; i++) {
        if (stations[i].id == selectedId) {
          return stations[i];
        }
      }
      return null;
    }
