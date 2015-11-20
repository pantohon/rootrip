var getSelectedRoute = () => {
  return 1;
}

var getSelectedStation = (stations, selectedId) => {
  for (var i = 0; i < stations.length; i++) {
    if (stations[i].id == selectedId) {
      return stations[i];
    }
  }
  return null;
}

var getSelectedSpot = (spots, selectedId) => {
  for (var i = 0; i < spots.length; i++) {
    if (spots[i].id == selectedId) {
      return spots[i];
    }
  }
  return null;
}

var getDistance = (nearby, routeId, stationId) => {
  for (var i = 0; i < nearby.length; i++) {
    if (nearby[i].routeId == routeId) {
      if (nearby[i].stationId == stationId) {
        return nearby[i].distance;
      }
    }
  }
  return null;
};

export { getSelectedRoute, getSelectedStation, getSelectedSpot, getDistance }
