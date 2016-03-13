<rm-main>
  <h2>Spots</h2>
  <ul>
    <li each="{ opts.spots }">
      <a href="{ "#routes/" + routeId + "/stations/" + stationId + "/spots/" + id }">{ name }</a>
    </li>
  </ul>
</rm-main>
