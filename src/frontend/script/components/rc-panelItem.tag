rc-panelItem
  .panelItem_wrapper
    .itemImage(show="{ item.image }")
      img(riot-src="{ item.image }")
    .itemName { item.id }: { item.name }

  style.
    .panelItem_wrapper {
      position: relative;
      flex-direction: column;
      width: 250px;
      height: 100px;
      border: 1px solid black;
      overflow: hidden;
    }

    .panelImg {
      height: 100px;
    }

    .itemName {
      position: absolute;
      top: 0;
      right: 0;
      width: 150px;
      font-size: 18px;
      background-color: rgba(255, 167, 38, 0.5);;
    }
