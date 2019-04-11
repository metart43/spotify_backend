class HiddenGemsController < ApplicationController

  before_action :find_gem, only: [:show]

  def create
    @hidden_gem = HiddenGem.create(gem_params)
    render json: @hidden_gem
  end

  def show
    render json: @hidden_gem
  end


  private

  def gem_params
     params.require(:user).permit(:user_id)
  end

  def find_gem
    @hidden_gem = HiddenGem.find(params(:id))
  end

end
