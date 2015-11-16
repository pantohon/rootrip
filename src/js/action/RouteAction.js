import dispatcher from '../dispatcher/Dispatcher'

class RouteAction {

  setRoute(data) {
    this.dispatcher.emit("updateRoutes", data);
  }
}

export default new RouteAction();
