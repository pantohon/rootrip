rootrip-playbar
  .player
    .spot_map { spot }
    .current_station { this.selected_station.name }
    .current_station_english { this.selected_station.english }
    .prev_station { get_station_name(selected_station.prev_id) }
    .station_partition |
    .next_station { get_station_name(selected_station.next_id) }

  h4 Spots
  rootrip-spots( spots='{ spots }' selected_id='{ selected_spot_id }' )

  style.
    rootrip-playbar {
      display: flex;
      flex-direction: column;
      height: 100%;
    }
    
    .player {
      flex-shrink: 0;
      flex-basis: 140px;
      text-align: center;
    }
    
    .current_station {
      margin: 10px 10px 0 10px;
      width: 210px;
      font-size: 24px;
      border-bottom: 4px solid #4CAF50;
    }

    .current_station_english {
      width: 210px;
      font-weight: bold;
      margin: 0 10px 0 10px;
    }
    
    .station_partition {
      width: 20px;
      display: table-cell;
      font-weight: bold;
      color: #4CAF50;
    }
    
    .prev_station {
      width: 115px;
      display: table-cell;
    }
    
    .next_station {
      width: 115px;
      display: table-cell;
    }

  script.
    console.log(this.root);
    function get_station(id) {
      for(var i = 0; i < opts.stations.length; i++) {
        if (opts.stations[i].id == id) {
          return this.station[i];
        }
      }
    }
    
    function get_selected_station() {
      return get_station(this.selected_station_id);
    }
        
    function get_station_name(id) {
      for(var i = 0; i < opts.stations.length; i++) {
        if (opts.stations[i].id == id) {
          return this.stations[id].name;
        }
      }
      return '';
    }
    
    this.selected_station = get_selected_station();

    this.selected_spot_id = 1;
    
    this.spots = [
      {
        id: 1,
        name: '鶴ケ丘八幡宮',
        distance: 5,
        map: ''
      },
      {
        id: 2,
        name: '遊山',
        distance: 7,
        map: ''
      },
      {
        id: 3,
        name: 'hogehoge',
        distance: 10,
        map: ''
      },
      {
        id: 4,
        name: 'foooo',
        distance: 12,
        map: ''
      }
    ];
