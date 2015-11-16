class Dispatcher {

  constructor() {
    this._handlers = {};
  }

  on(type, handler) {
    if (typeof this._handlers[type] == 'undefined') {
      this._handlers[type] = [];
    }
    this._handlers[type].push(handler);
  }

}

export default new Dispatcher();
