class Api::V1::AlbumsController < ApplicationController
  def index
    parameters =  AlbumParams.new
    parameters.parse_query_string(params)

    render json: Album.get_all(parameters),
           status: :ok
  end
end
