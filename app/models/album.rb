# == Schema Information
#
# Table name: albums
#
#  id           :integer          not null, primary key
#  name         :string
#  image        :string
#  spotify_url  :string
#  total_tracks :integer
#  spotify_id   :integer
#  artist_id    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs

  validates :name, presence: true
  validates :spotify_url, presence: true

end
