class Api::V1::LoginController < ApplicationController
  def create
    query_params = {
      client_id: '45c333651e174ea38ee798fa10ff7bce',
      response_type: 'code',
      redirect_uri: 'http://localhost:3000/api/v1/auth/spotify/callback',
      scope: 'user-read-recently-played user-read-playback-state user-library-read user-library-modify user-modify-playback-state playlist-modify-public',
      show_dialog: true
    }
    url = 'https://accounts.spotify.com/authorize'
    redirect_to "#{url}?#{query_params.to_query}"
  end

end
