class HiddenGemsController < ApplicationController

  # before_action :find_gem, only: [:show, :update]

  def create
    render json: HiddenGem.create(gem_params)
  end

  # def show
  #   render: @hidden_gem
  # end


  private

  def gem_params
     params.require(:user).permit(:user_id)
  end

  def find_gem
    @hidden_gem = HiddenGem.find(params(:id))
  end

end
