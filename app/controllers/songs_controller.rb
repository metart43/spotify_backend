class SongsController < ApplicationController

  def create
    @song = Song.new(song_params)
    if @song.save
      render json: @song
    else
      render json: {errors: @song.errors.full_messages}
    end
  end

  private

  def song_params
    params.permit(:name)
end

# Song(id: integer, 
# name: string,
# created_at: datetime, updated_at: datetime,
# user_id: integer,
# hidden_gem_id: integer,
# artist: string,
# genre: string,
# album: string)
