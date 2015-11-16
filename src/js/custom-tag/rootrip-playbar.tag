rootrip-playbar
  .route_image
    img( riot-src='images/route/{ opts.route.image }')
  rootrip-player

  h4 Spots
  rootrip-spots

  style.
    rootrip-playbar {
      display: flex;
      flex-direction: column;
      height: 100%;
    }

    .route_image {
      flex-basis: 100px;
      margin: 10px 0 0 0;
    }

    .route_image img {
      position: absolute;
      width: 230px;
      clip: rect(50px, 230px, 150px, 0px);
      margin: -50px 0 0 0;
    }

  script.
    this.stationAction = require('../action/StationAction');
    this.stationStore = require('../store/StationStore');
    this.dispatcher = require('../dispatcher/Dispatcher');
    this.stateStore = require('../store/StateStore');

    this.gotoNextStation = () => {
      var nextId = this.getSelectedStation().nextId;
      if(nextId) {
        this.stateStore.selectedStationId = nextId;
      }
    }

    this.gotoPrevStation = () => {
      var prevId = this.getSelectedStation().prevId;
      if(prevId) {
        this.stateStore.selectedStationId = prevId;
      }
    }

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

    this.getNextStation = () => {
      var stations = this.stationStore.stations;
      var nextId = this.getSelectedStation().nextId;
      if (nextId) {
        for (var i = 0; i < stations.length; i++) {
          if (stations[i].id == nextId) {
            return stations[i];
          }
        }
      } else {
        return { name: '−'};
      }
    }

    this.getPrevStation = () => {
      var stations = this.stationStore.stations;
      var prevId = this.getSelectedStation().prevId;
      if (prevId) {
        for (var i = 0; i < stations.length; i++) {
          if (stations[i].id == prevId) {
            return stations[i];
          }
        }
      } else {
        return { name: '−'};
      }
    }
