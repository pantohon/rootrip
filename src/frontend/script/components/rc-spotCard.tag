<rc-spotCard>
  <div class="spotCard_wrapper">
    <h3>{ spot.name } ({ spot.genre })</h3>
    <img class="spotImg" riot-src="{ spot.image }">
    <p>{ spot.description }</p>
  </div>

  <style>
    .spotCard_wrapper {
      width: 700px;
      height: 350px;
    }
    .spotImg {
      width: 600px;
    }
  </style>
</rc-spotCard>
