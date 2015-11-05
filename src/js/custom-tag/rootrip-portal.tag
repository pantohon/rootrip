rootrip-portal(hide='{ this.spot }')
  article
    form
      input(type="search" name="search" placeholder="search")

    h2 Route

    h2 Popular

  style.
    rootrip-portal {
      flex: auto;
    }

  script.
    this.spot = {
      title: '遊山'
    };
