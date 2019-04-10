class HiddenGemsController < ApplicationController

  before_action :hidden_gem, only: [:show, :update]

  def create
    @hidden_gem.new(gem_params)
  end

  def show
    redner: @hidden_gem
  end


  private

  def gem_params
    params.permit(:user, :song)
  end

  def find_gem
    @hidden_gem = HiddenGem.find(params(:id))
  end
end
