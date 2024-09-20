resource "spotify_playlist" "Bollywood" {
  name = "Bollywood"
  tracks = ["0ByMNEPAPpOR5H69DVrTNy"]
}

data "spotify_search_track" "diljit" {
    artist = "Diljit Dosanjh"
}

resource "spotify_playlist" "punjabi" {
    name = "Diljit"
    tracks = [data.spotify_search_track.diljit.tracks[0].id,
    data.spotify_search_track.diljit.tracks[1].id,
    data.spotify_search_track.diljit.tracks[2].id,
    data.spotify_search_track.diljit.tracks[3].id
    ]
  
}