rootrip-container(show='{ parent.selectedSpot }')
  article.container_wrapper
    .container_header
      .container_title
        img(class='genre_icon' src='images/util/{ spot.genre }.jpg' alt='')
        h2.main_title { spot.name }
        .distance_wrapper
          .distance { distance }

      .container_summary { spot.description }
      
    .container_content
      .container_user_content
        .container_articles

          h3 Article
          .container_article
            .article_date { article.date }
            .article_title { article.title }

          .container_article
            .article_date { article.date }
            .article_title { article.title }

          .container_article
            .article_date { article.date }
            .article_title { article.title }

      .container_master_content

        .container_info
          .address じゅうしょ
          .phone_number でんわばんごう
          .holiday きゅうぎょうび
          .buisiness_hour えいぎょうじかん
          
        .container_thumbnail
          img(src='images/spot/{ spot.image }' alt='')

  style.
    rootrip-container {
      flex: auto;
      width: auto;
      min-width: 500px;
      height: 100%;
      color: #757575;
      background-color: #FFFFFF;
    }

    .container_wrapper {
      display: flex;
      flex-direction: column;
      height: 100%;
      overflow-y: scroll;
    }
    
    .container_title {
      display: flex;
      flex-direciton: row;  
      align-items: center;
      padding: 3px;
      width: 100%;
      background-color: #E3F2FD;
    }
    
    h2.main_title {
      flex-basis: auto;
      flex-grow: 1;
      margin: 0 0 0 10px;
    }
    
    .distance_wrapper {
      flex-basis: 34px;
      height: 34px;
      margin: 0 10px 0 0;
      text-align: center;
      border: solid 2px;
      border-radius: 5px;
      background-color: #E3F2FD;
    }
    
    .distance {
      font-weight: bold;
      font-size: 1.5em;
    }
    
    .genre_icon {
      flex-basis: 50px;
      width: 50px;
      height: 50px;
      border: solid 2px;
    }
    
    .container_content {
      overflow-y: scroll;
    }

    .container_summary {
      background-color: #E3F2FD;
    }

    .container_articles {
      padding: 5px;
    }

    .container_article {
      margin: 3px 0 5px 2px;
      padding: 2px 3px;
      box-shadow: 1px 1px 1px rgba(0,0,0,0.4);
      background-color: #E3F2FD;
    }

    .container_info {
      display: flex;
      flex-direction: row;
      align-items: center;
    }

    .container_thumbnail {
      text-align: center;
    }

    .container_thumbnail img {
      width: 80%;
    }

  script.
    this.spotAction = require('../action/SpotAction');
    this.spotStore = require('../store/SpotStore');
    this.dispatcher = require('../dispatcher/Dispatcher');
    this.stateStore = require('../store/StateStore');
    var utility = require('../utility');

    this.spot = utility.getSelectedSpot(
      this.spotStore.spots, 
      this.stateStore.selectedSpotId
      );

    this.distance = utility.getDistance(
      this.spot.nearestStations, 
      this.stateStore.selectedRouteId, 
      this.stateStore.selectedStationId
      );

    this.article = {
      date: '2015-10-23',
      title: 'hogehoge',
      url: '',
      image: ''
    };
