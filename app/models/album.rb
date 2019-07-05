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

  scope :by_artist_id_eq, proc { |artist_id|
    if artist_id.present?
      where(artist_id: artist_id)
    end
  }

  def self.get_all(params)
    query = all
    query = params.apply_filters(query)
    PaginateList
      .get_all_paginate(
        query,
        params.pagination_limit,
        params.pagination_number,
        AlbumSerializer)
  end

end
