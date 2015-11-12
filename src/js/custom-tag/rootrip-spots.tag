var RootripActions = require('../action/rootrip-action.js');

rootrip-spots
  rootrip-spot( each='{ spot in opts.spots }')

  script.
    this.selected_id = opts.selected_id;
    
    change_selected(e) {
      //- this.selected_id = e.item.spot.id;
      RootripActions.selectSpot(e.item.spot);
    }
