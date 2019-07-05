class Api::V1::SongsController < ApplicationController
  def index
    parameters =  SongParams.new
    parameters.parse_query_string(params)
    render json: Song.get_all(parameters),
           status: :ok
  end

  def random_song
    render json: Song.by_genre_name_eq(params[:genre_name]).take,
           serializer: SongSerializer,
           status: :ok
  end
end