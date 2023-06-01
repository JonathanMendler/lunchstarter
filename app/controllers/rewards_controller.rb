class RewardsController < ApplicationController
  def index
    @rewards = Reward.all
    render :index
  end

  def show
    @reward = Reward.find_by(id: params[:id])
    render :show
  end

  def new
    @reward = Reward.new
    render :new
  end

  def create
    @reward = Reward.create(
      project_id: params[:reward][:project_id],
      description: params[:reward][:description],
      amount: params[:reward][:amount],
      limit: params[:reward][:limit],
      delivery_date: params[:reward][:delivery_date],
    )
    redirect_to "/rewards"
  end

  def edit
    @reward = Reward.find_by(id: params[:id])
    render :edit
  end

  def update
    @reward = Reward.find_by(id: params[:id])
    @reward.update(
      project_id: params[:reward][:project_id],
      description: params[:reward][:description],
      amount: params[:reward][:amount],
      limit: params[:reward][:limit],
      delivery_date: params[:reward][:delivery_date],
    )
    redirect_to "/rewards"
  end

  def destroy
    @reward = Reward.find_by(id: params[:id])
    @reward.destroy
    redirect_to "/rewards", status: :see_other
  end
end
