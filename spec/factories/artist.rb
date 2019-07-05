FactoryBot.define do

  factory :artist do
    name { Faker::Artist.name }
    image { Faker::CryptoCoin.url_logo }
    genres {["cumbia", "vallenato"]}
    popularity { Faker::Number.between(1, 100) }
    spotify_url { Faker::LoremFlickr.image }
    spotify_id { Faker::Blockchain::Bitcoin.address }
  end

end
