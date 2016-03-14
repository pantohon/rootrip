rc-panel
  .panel_wrapper
    rc-panelItem(each="{ item in opts.data }")

  style.
    .panel_wrapper {
      display: flex;
      flex-direction: row;
    }
