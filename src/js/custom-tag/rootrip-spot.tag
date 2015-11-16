rootrip-spot(class='{ selected: spot.id == parent.stateStore.selectedSpotId }' onClick='{ parent.changeSelected }')
  .spot_id { spot.id }
  .spot_name { spot.name }
  .spot_distance { getDistance() } min.

  style.
    rootrip-spot {
      display: flex;
      flex-direction: row;
      font-size: 14px;
      margin: 1px 4px;
      padding: 1px 4px;
      border-radius: 2px;
    }

    rootrip-spot:hover {
      margin: 1px 4px 1px 3px;
      font-weight: bold;
      box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);
    }

    .selected {
      color: #FFFFFF;
      background-color: #795548;
    }
    
    .spot_id {
      flex-basis: 20px;
    }
    
    .spot_name {
      flex-grow: 1;
    }
    
    .spot_distance {
      flex-basis: 50px;
      text-align: right;
    }

  script.
    this.nearby = this.spot.nearestStations;

    this.getDistance = () => {
      var stateStore = require('../store/StateStore');
      for (var i = 0; i < this.nearby.length; i++) {
        if (this.nearby[i].routeId == stateStore.selectedRouteId) {
          if (this.nearby[i].stationId == stateStore.selectedStationId) {
            return this.nearby[i].distance;
          }
        }
      }
      return null;
    };
