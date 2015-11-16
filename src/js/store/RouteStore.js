import riot from 'riot'

import dispatcher from '../dispatcher/Dispatcher'

class RouteStore {

  constructor() {
    riot.observable(this);

    this.routes = [
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
    dispatcher.on("updateRoutes", this.updateData());
  }

  getData() {
    return this.routes;
  }

  updateData(routes) {
    if (routes) {
      this.routes = routes;
      this.trigger("updateRoutes");
    }
  }

}

export default new RouteStore();
