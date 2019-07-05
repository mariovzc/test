Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :artists, only: [:index]
      get 'artists/:artist_id/albums', action: :index, controller: :albums
      get 'albums/:album_id/songs', action: :index, controller: :songs
      get 'genre/:genre_name/random_song', action: :random_song, controller: :songs
    end
  end
end
