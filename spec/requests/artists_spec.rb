require 'rails_helper'

RSpec.describe Api::V1::ArtistsController, type: :controller do
  describe 'GET /artists' do
    let!(:artists) { create_list(:artist, 10) }

    it 'should response with 200' do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end