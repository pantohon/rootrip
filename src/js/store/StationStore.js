import riot from 'riot'

import dispatcher from '../dispatcher/Dispatcher'

class StationStore {

  constructor() {
    riot.observable(this);

    this.stations = [
      {
        id: 1,
        name: '鎌倉',
        slug: 'kamakura',
        nextId: 2,
        prevId: null,
        description: '鎌倉駅でーす＼(^o^)／'
      },
      {
        id: 2,
        name: '和田倉',
        slug: 'wadakura',
        nextId: 3,
        prevId: 1,
        description: '和田倉を知っていますか？'
      },
      {
        id: 3,
        name: '由比ヶ浜',
        slug: 'yuigahama',
        nextId: null,
        prevId: 2,
        description: '由比ヶ浜って色々あるんですよー！'
      }
    ];
    dispatcher.on("updateStations", this.updateData());
  }

  getData() {
    return this.stations;
  }

  updateData(stations) {
    if (stations) {
      this.stations = stations;
      this.trigger("updateStations");
    }
  }
}

export default new StationStore();
