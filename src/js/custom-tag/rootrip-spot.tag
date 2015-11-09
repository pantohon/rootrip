rootrip-spot(class='{ selected: spot.id == selected_id }' onClick='{ parent.change_selected }')
  .spot_id { spot.id }
  .spot_name { spot.name }
  .spot_distance { spot.distance } min.

  style.
    rootrip-spot {
      display: flex;
      flex-direction: row;
      font-size: 14px;
      margin: 1px 4px;
      padding: 1px 4px;
      border-radius: 2px;
    }
    
    .selected {
      color: #FFFFFF;
      background-color: #795548;
    }
    
    .spot_id {
      flex-basis: 20px;
    }
    
    .spot_name {
      flex-grow: 1;
    }
    
    .spot_distance {
      flex-basis: 50px;
      text-align: right;
    }

  script.
    this.spot = opts.spot;
