class Api::V1::ArtistsController < ApplicationController
  def index
    parameters =  AlbumParams.new
    parameters.parse_query_string(params)

    render json: Artist.get_all(parameters),
           status: :ok
  end
end