<rp-root>
  <rm-header></rm-header>

  <rm-routeSelector routes="{ routes.list }"></rm-routeSelector>

  <rm-stationSelector stations="{ stations }"></rm-stationSelector>

  <rm-main spots="{ spots }"></rm-main>

  <script>
    var self = this

    riot.route.base('#')
    riot.route.start(true)

    self.title = 'るーとりっぷ'
    self.routeId = ''
    self.stationId = ''
    self.spotId = ''

    self.routes = {
      list: [
        { id: '1', name: '江ノ島電鉄線', slug: 'enoden', image: 'https://goo.gl/DVMFCJ'}
      ]
    }

    // self.routes = [
    //   { id: 'enoden', name: '江ノ島電鉄線', data: ''}
    // ]

    self.stations = [
      { id: 'kamakura', name: '鎌倉'},
      { id: 'wadaduka', name: '和田塚'}
    ]

    self.spots = [
      { id: 'yuzan', name: '遊山'}
    ]

    var r = riot.route.create()
    r('#',                           home   )
    r('routes/*',                    route  )
    r('routes/*/stations/*',         station)
    r('routes/*/stations/*/spots/*', spot   )
    r('',                            home   )

    function home() {
      self.update({
        routeId: '',
        stationId: '',
        spotId: ''
      })
    }

    function route(routeId) {
      var selectedRoute = self.routes.filter(function(d) { return d.id == routeId })[0] || {}
      self.update({
        routeId: selectedRoute.id,
        stationId: '',
        spotId: ''
      })
    }

    function station(routeId, stationId) {
      var selectedStation = self.stations.filter(function(d) { return d.id == stationId })[0] || {}
      self.update({
        routeId: self.routeId,
        stationId: selectedStation.id,
        spotId: ''
      })
    }

    function spot(routeId, stationId, spotId) {
      var selectedSpot = self.spots.filter(function(d) { return d.id == spotId })[0] || {}
      self.update({
        routeId: self.routeId,
        stationId: self.stationId,
        spotId: selectedSpot.id
      })
    }

  </script>
</rp-root>
