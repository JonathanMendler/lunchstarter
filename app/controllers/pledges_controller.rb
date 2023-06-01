class PledgesController < ApplicationController
  def index
    @pledges = Pledge.all
    render :index
  end

  def show
    @pledge = Pledge.find_by(id: params[:id])
    render :show
  end

  def new
    @pledge = Pledge.new
    render :new
  end

  def create
    @pledge = Pledge.create(
      user_id: params[:pledge][:user_id],
      reward_id: params[:pledge][:reward_id],
    )
    redirect_to "/pledges"
  end
end
