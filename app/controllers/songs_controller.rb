class SongsController < ApplicationController

  before_action :find_song, only: [:destroy]

  def create
    @song = Song.new(user_id: params['user']['user_id'],
                     hidden_gem_id: params['gem']['hidden_gem_id'],
                     artist: params['song']['artist'],
                     name: params['song']['name'],
                     song_uri: params['song']['song_uri'])
    if @song.save
      render json: @song
    else
      render json: {errors: @song.errors.full_messages}
    end
  end

  def destroy
    @song.destroy
    render json: @song
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end
end

# Song(id: integer,
# name: string,
# created_at: datetime, updated_at: datetime,
# user_id: integer,
# hidden_gem_id: integer,
# artist: string,
# genre: string,
# album: string)
