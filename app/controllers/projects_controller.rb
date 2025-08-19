class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = @projects.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
  end

  private

  def project_params
    params.require(:projects).permit(:name, :description)
  end
end
