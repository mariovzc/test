# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  name        :string
#  image       :string
#  popularity  :integer
#  spotify_url :string
#  genres      :text             default("--- []\n")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  spotify_id  :string
#

class Artist < ApplicationRecord
    has_many :albums

    validates :name, presence: true
    validates :spotify_url, presence: true
end
