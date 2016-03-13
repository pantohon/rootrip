<rc-panelItem>
  <div class="panelItem_wrapper">
    <div class="itemImage">
      <img riot-src="{ item.image }">
    </div>
    <div class="itemName">{ item.id }: { item.name }</div>
  </div>

  <style>
    .panelItem_wrapper {
      position: relative;
      flex-direction: column;
      width: 150px;
      height: 150px;
      border: 1px solid black;
    }

    .itemName {
      position: absolute;
      top: 0;
      right: 0;
    }
  </style>

</rc-panelItem>
