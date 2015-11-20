rootrip-player
  .current_station { parent.selectedStation.name }
  .prev_station(onClick='{ gotoPrevStation }') { parent.getPrevStation().name }
  .next_station(onClick='{ gotoNextStation }') { parent.getNextStation().name }

  style.
    rootrip-player {
      flex-shrink: 0;
      flex-basis: 100px;
      text-align: center;
    }

    .current_station {
      margin: 10px 10px 0 10px;
      width: 210px;
      font-size: 24px;
      border-bottom: 4px solid #4CAF50;
    }

    .prev_station {
      width: 115px;
      height: 30px;
      padding: 5px 0 0 0;
      display: table-cell;
    }

    .prev_station:hover {
      width: 114px;
      font-weight: bold;
      box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);
    }

    .next_station {
      width: 115px;
      height: 30px;
      padding: 5px 0 0 0;
      display: table-cell;
    }

    .next_station:hover {
      width: 114px;
      font-weight: bold;
      box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);
    }

  script.
    this.stationStore = require('../store/StationStore');
    this.stateStore = require('../store/StateStore');
    var utility = require('../utility');

    this.station = utility.getSelectedStation(this.stationStore.stations, this.stateStore.selectedStationId);

    this.gotoNextStation = () => {
      var nextId = this.station.nextId;
      if(nextId) {
        this.stateStore.selectedStationId = nextId;
      }
    }

    this.gotoPrevStation = () => {
      var prevId = this.station.prevId;
      if(prevId) {
        this.stateStore.selectedStationId = prevId;
      }
    }
