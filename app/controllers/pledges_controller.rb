class PledgesController < ApplicationController
  def index
    @pledges = Pledge.all
    render :index
  end
end
