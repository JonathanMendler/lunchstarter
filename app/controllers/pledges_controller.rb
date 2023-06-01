class PledgesController < ApplicationController
  def index
    @pledges = Pledge.all
    render :index
  end

  def show
    @pledge = Pledge.find_by(id: params[:id])
    render :show
  end
end
