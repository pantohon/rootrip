import dispatcher from '../dispatcher/Dispatcher.js'

class SpotAction {

  updateSpots(spots) {
    this.dispatcher.emit("updateSpots", data);
  }
}

export default new SpotAction();
