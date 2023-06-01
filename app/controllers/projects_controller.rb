class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render :index
  end

  def show
    @project = Project.find_by(id: params[:id])
    render :show
  end

  def new
    @project = Project.new
    render :new
  end

  def create
    @project = Project.create(
      category_id: params[:project][:category_id],
      title: params[:project][:title],
      description: params[:project][:description],
      goal_amount: params[:project][:goal_amount],
      start_date: params[:project][:start_date],
      end_date: params[:project][:end_date],
    )
    redirect_to "/projects"
  end
end
