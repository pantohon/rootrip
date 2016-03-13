<rm-routeSelector>
  <h2>Routes</h2>
  <rc-panel data="{ opts.routes }"></rc-panel>

  <script>
    function selectRoute(routeId) {
      opts.update({
        routeId: routeId
      })
    }
  </script>
</rm-routeSelector>
