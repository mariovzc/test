FactoryBot.define do

    factory :album do
      name { Faker::Music.album }
      image { Faker::LoremFlickr.image }
      spotify_url { "https://open.spotify.com/album/3oQYd91IYBHAdiidMFbsdW" }
      total_tracks { Faker::Number.between(1, 10) }
      spotify_id { Faker::Blockchain::Bitcoin.address }
      artist
    end
  
  end