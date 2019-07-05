require 'rspotify'
require 'yaml'

namespace :artists_seed do
  desc "TODO"
  task get_data: :environment do
    artist_list = YAML.load(
      File.read(
        File.expand_path('../artists.yml', __FILE__)
      )
    )["artists"]
    RSpotify.authenticate(ENV["SPOTIFY_CLIENT_ID"],
                          ENV["SPOTIFY_CLIENT_SECRET"])

    p "Task Init"
    artist_list.each do | name |
      p "feed data for #{name}"
      artist = RSpotify::Artist.search(name.to_s).first
      if artist
        _artist = Artist.create!(
          name: artist.name,
          image: artist.images.first["url"],
          popularity: artist.popularity,
          spotify_url: artist.external_urls["spotify"],
          genres: artist.genres,
          spotify_id: artist.id
        )
        artist.albums.each do | album |
          _album = _artist.albums.create!(
            name: album.name,
            image: album.images.first["url"],
            spotify_url: album.external_urls["spotify"],
            total_tracks: album.total_tracks,
            spotify_id: album.id
          )
          album.tracks.each do | track |
            _album.songs.create(
              name: track.name,
              spotify_url: track.external_urls["spotify"],
              preview_url: track.preview_url,
              duration_ms: track.duration_ms,
              explicit: track.explicit,
              spotify_id: track.id,
            )
          end
        end
      end
    end
    p "task end"
  end
end
