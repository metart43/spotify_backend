class Api::V1::UsersController < ApplicationController

  def create
    body = {
      grant_type: "authorization_code",
      code: params[:code],
      redirect_uri: 'http://localhost:3000/api/v1/auth/spotify/callback',
      client_id: "45c333651e174ea38ee798fa10ff7bce",
      client_secret: "0699a26f38454946bfc924c6ce61bd1b"
    }
    auth_response = RestClient.post('https://accounts.spotify.com/api/token', body)

    auth_params = JSON.parse(auth_response.body)

    header = {
      Authorization: "Bearer #{auth_params["access_token"]}"
    }
    user_response = RestClient.get("https://api.spotify.com/v1/me", header)

    user_params = JSON.parse(user_response.body)

    byebug

    @user = User.find_or_create_by(id: user_params['id'])

    if @user.save
      @user.update(access_token:auth_params["access_token"], refreshed_token: auth_params["refresh_token"])
    end

    redirect_to "http://localhost:3001/#" + auth_params.to_query
  end

end
