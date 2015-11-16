rootrip-app.wrapper
  header
    p るーとりっぷ

  rootrip-portal

  rootrip-container(spot='{ spot }')

  aside
    rootrip-playbar(route='{ selected_route }')

  style.
    rootrip-app {
      display: flex;
      height: 100%;
    }
    
    header {
      width: 50px;
      min-width: 50px;
      color: #3E2723;
      background-color: #E3F2FD;
    }
    
    aside {
      width: 250px;
      min-width: 250px;
      color: #3E2723;
      border-left: 10px solid #F5F5F5;
      border-right: 10px solid #F5F5F5;
      background-color: #D7CCC8;
    }
    
  script.
    import routeAction from '../action/RouteAction'
    import routeStore from '../store/RouteStore'
    import dispatcher from '../dispatcher/Dispatcher'
    import stateStore from '../store/StateStore'

    this.selected_route = {
      id: 'r1',
      name: '江ノ島電鉄',
      image: 'enoden.jpg'
    }

    this.spot = {
      genre: 'eat',
      title: '遊山',
      distance: '5',
      address: '神奈川県鎌倉市雪ノ下1-9-29 金子ビル2F',
      phone: '0467-25-2717',
      holiday: '木',
      buisiness_hour: '10:00〜18:30',
      thumbnail: 'yuzan.jpg'
    };
