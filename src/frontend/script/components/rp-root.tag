rp-root
  .root_wrapper
    rm-header

    rm-routeSelector(routes="{ routes.list }")

    rm-stationSelector(stations="{ stations.list }")

    rm-main(spots="{ spots.list }")

  style.
    .root_wrapper {
      width: 100%;
      height: 100%;
    }

  script.
    var self = this

    riot.route.base('#')
    riot.route.start(true)

    self.title = 'るーとりっぷ'
    self.routeId = ''
    self.stationId = ''

    self.routes = {
      list: [
        { id: 1, name: '江ノ島電鉄線', slug: 'enoden', image: 'https://goo.gl/DVMFCJ'}
      ]
    }

    self.stations = {
      list: [
        { id: 11, name: '鎌倉', slug: 'kamakura', nextId: 12, description: '鎌倉駅です。'},
        { id: 12, name: '和田塚', slug: 'wadaduka', prevId: 11, nextId: 13, description: '和田塚駅です。'}
      ]
    }

    self.spots = {
      list: [
        {
          id: 123,
          name: '遊山',
          genre: 'food',
          image: 'https://goo.gl/2jDzad',
          description: '鎌倉の歴史に比べれば僅かな時間ですが、遊山も鎌倉で７年の年月をかさねて参りました。歴史が不変である様に、変わらぬ味と香の珈琲をお届けしたいと考えております。鎌倉の常連様に愛され、初めてお目にかかる方に親しまれる様、勤めてまいります。鎌倉にお越しの際は、是非思い出の一つに遊山をお加え頂ければ幸いに存じます。お目にかかれる日を楽しみに致しております。',
          url: 'http://tabelog.com/kanagawa/A1404/A140402/14008019/',
          nearestStations: [
            {
              id: 11,
              name: '鎌倉',
              description: '鎌倉駅です。',
              distance: 60000
            },
            {
              id: 12,
              name: '和田塚',
              description: '和田塚駅です。',
              distance: 80000
            }
          ]
        }
      ]
    }

    var r = riot.route.create()
    r('#',                   home   )
    r('routes/*',            route  )
    r('routes/*/stations/*', station)
    r('spots/*',             spot   )
    r('',                    home   )

    function home() {
      self.update({
        routeId: '',
        stationId: '',
        spotId: ''
      })
    }

    function route(routeId) {
      var selectedRoute = self.routes.list.filter(function(d) { return d.slug == routeId })[0] || {}
      self.update({
        routeId: selectedRoute.slug,
        stationId: ''
      })
    }

    function station(routeId, stationId) {
      var selectedStation = self.stations.list.filter(function(d) { return d.slug == stationId })[0] || {}
      self.update({
        stationId: selectedStation.slug
      })
    }

    function spot(spotId) {
      var selectedSpot = self.spots.list.filter(function(d) { return d.id == spotId })[0] || {}
      self.update({
        spotId: selectedSpot.id
      })
    }
