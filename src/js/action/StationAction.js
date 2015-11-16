import dispatcher from '../dispatcher/Dispatcher'

class StationAction {

  setData(data) {
    this.dispatcher.emit("updateStations", data);
  }
}

export default new StationAction();
