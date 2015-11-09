rootrip-container(show='{ spot }')
  article.container_wrapper
    .container_header
      .container_title
        img(class='genre_icon' src='images/util/{ spot.genre }.jpg' alt='')
        h2.main_title { spot.title }
        .distance_wrapper
          .distance { spot.distance }

      .container_summary チーズケーキが絶品のオシャレな隠れ家的喫茶店。
      
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
          .address { spot.address }
          .phone_number { spot.phone }
          .holiday { spot.holiday }曜日
          .buisiness_hour { spot.buisiness_hour }
          
        .container_thumbnail
          img(src='images/spot/{ spot.thumbnail }' alt='')

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
    this.spot = opts.spot;
    
    this.article = {
      date: '2015-10-23',
      title: 'hogehoge',
      url: '',
      image: ''
    };
