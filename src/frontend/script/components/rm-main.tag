rm-main
  .main_wrapper
    h2 Spots
    rc-spotCard(each="{ spot in opts.spots }")

  style.
    .main_wrapper {
      width: 100%;
    }
