rc-spotCard
  .spotCard_wrapper
    h3 { spot.name } ({ spot.genre })
    img.spotImg(riot-src="{ spot.image }")
    p { spot.description }

  style.
    .spotCard_wrapper {
      width: 700px;
      height: 350px;
    }
    .spotImg {
      width: 600px;
    }
