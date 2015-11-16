import riot from 'riot'

import dispatcher from '../dispatcher/Dispatcher.js'

class SpotStore {

  constructor() {
    this.spots = [
      {
        id: 1,
        name: '遊山',
        slug: 'yuzan',
        genre: 'food',
        image: '',
        description: '鎌倉の歴史に比べれば僅かな時間ですが、遊山も鎌倉で７年の年月をかさねて参りました。歴史が不変である様に、変わらぬ味と香の珈琲をお届けしたいと考えております。鎌倉の常連様に愛され、初めてお目にかかる方に親しまれる様、勤めてまいります。鎌倉にお越しの際は、是非思い出の一つに遊山をお加え頂ければ幸いに存じます。お目にかかれる日を楽しみに致しております。',
        url: 'http://tabelog.com/kanagawa/A1404/A140402/14008019/',
        nearestStations: [
          {
            routeId: 1,
            stationId: 1,
            distance: 7
          }
        ]
      },
      {
        id: 2,
        name: '遊山2',
        slug: 'yuzan2',
        genre: 'food',
        image: '',
        description: '鎌倉の歴史に比べれば僅かな時間ですが、遊山も鎌倉で７年の年月をかさねて参りました。歴史が不変である様に、変わらぬ味と香の珈琲をお届けしたいと考えております。鎌倉の常連様に愛され、初めてお目にかかる方に親しまれる様、勤めてまいります。鎌倉にお越しの際は、是非思い出の一つに遊山をお加え頂ければ幸いに存じます。お目にかかれる日を楽しみに致しております。',
        url: 'http://tabelog.com/kanagawa/A1404/A140402/14008019/',
        nearestStations: [
          {
            routeId: 1,
            stationId: 1,
            distance: 10
          }
        ]
      },
      {
        id: 3,
        name: '遊山3',
        slug: 'yuzan3',
        genre: 'food',
        image: '',
        description: '鎌倉の歴史に比べれば僅かな時間ですが、遊山も鎌倉で７年の年月をかさねて参りました。歴史が不変である様に、変わらぬ味と香の珈琲をお届けしたいと考えております。鎌倉の常連様に愛され、初めてお目にかかる方に親しまれる様、勤めてまいります。鎌倉にお越しの際は、是非思い出の一つに遊山をお加え頂ければ幸いに存じます。お目にかかれる日を楽しみに致しております。',
        url: 'http://tabelog.com/kanagawa/A1404/A140402/14008019/',
        nearestStations: [
          {
            routeId: 1,
            stationId: 1,
            distance: 14
          }
        ]
      }
    ];

    riot.observable(this);

    dispatcher.on("updateSpots", this.updateData());
  }

  getData() {
    return this.spots;
  }

  updateData(spots) {
    if (spots) {
      this.spots = spots;
      this.trigger("updateSpots");
    }
  }
}

export default new SpotStore();
