FactoryBot.define do

    factory :song do
      name { Faker::Music::UmphreysMcgee.song }
      spotify_url { "https://open.spotify.com/album/3oQYd91IYBHAdiidMFbsdW" }
      preview_url { "https://p.scdn.co/mp3-preview/7a6005872c07aabb32621fde7e19e6f6dfbd0c7f?cid=becb34a224c541f9bcefe22025633984" }
      duration_ms { Faker::Number.between(1, 10000) }
      explicit {
        r = rand(0..1)
        r == 0
      }
      spotify_id { Faker::Blockchain::Bitcoin.address }
      album
    end
  
  end
  