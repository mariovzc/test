# == Schema Information
#
# Table name: songs
#
#  id          :integer          not null, primary key
#  name        :string
#  spotify_url :string
#  preview_url :string
#  duration_ms :integer
#  explicit    :boolean
#  spotify_id  :integer
#  album_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Song < ApplicationRecord
  belongs_to :album

  validates :name, presence: true
  validates :spotify_url, presence: true

end
