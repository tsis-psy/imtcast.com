if(document.getElementById('youtube-player') != null){
  var tag = document.createElement('script');
  var playerTag = document.getElementById('youtube-player');
  var youtubeDataset = playerTag.dataset;

  tag.src = "https://www.youtube.com/iframe_api";
  var firstScriptTag = document.getElementsByTagName('script')[0];
  firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

  var player;
  function onYouTubeIframeAPIReady() {
    player = new YT.Player('youtube-player', {
      height: this.youtubeDataset.height,
      width: this.youtubeDataset.width,
      videoId: this.youtubeDataset.videoid,
      events: {
        'onReady': onPlayerReady
      }
    });
  }

  function onPlayerReady(event) {
    event.target.playVideo();
  }
}

if(document.getElementById('youtube-player-stop') != null){
  var tag = document.createElement('script');
  var playerTag = document.getElementById('youtube-player-stop');
  var youtubeDataset = playerTag.dataset;

  tag.src = "https://www.youtube.com/iframe_api";
  var firstScriptTag = document.getElementsByTagName('script')[0];
  firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

  var player;
  function onYouTubeIframeAPIReady() {
    player = new YT.Player('youtube-player-stop', {
      height: this.youtubeDataset.height,
      width: this.youtubeDataset.width,
      videoId: this.youtubeDataset.videoid,
    });
  }
}
