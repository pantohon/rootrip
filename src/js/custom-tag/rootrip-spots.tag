rootrip-spots
  rootrip-spot( each='{ spot in spotStore.spots }')

  script.
    this.spotAction = require('../action/SpotAction');
    this.spotStore = require('../store/SpotStore');
    this.dispatcher = require('../dispatcher/Dispatcher');
    this.stateStore = require('../store/StateStore');

    this.changeSelected = event => {
      this.stateStore.selectedSpotId = event.item.spot.id;
    }
