<rm-stationSelector>
  <h2>Stations</h2>
  <ul>
    <li each="{ opts.stations }">
      <a href="{ "#routes/" + routeId + "/stations/" + id }">{ name }</a>
    </li>
  </ul>
</rm-stationSelector>