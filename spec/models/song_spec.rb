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

require 'rails_helper'

RSpec.describe Song, type: :model do
  describe 'Validations' do
    it 'validate presence of required fields' do
      should validate_presence_of(:name)
      should validate_presence_of(:spotify_url)
    end

    it 'validate relations' do
      should belong_to(:album)
    end
  end
end
