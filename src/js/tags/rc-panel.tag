<rc-panel>
  <div class="panel_wrapper">
    <rc-panelItem each="{ item in opts.data }"></rc-panelItem>
  </div>

  <style>
    .panel_wrapper {
      display: flex;
      flex-direction: row;     
    }
  </style>
</rc-panel>
