class FeaturesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @features = @project.features
  end

  def show
    @feature = Feature.find(params[:id])
    @message = Message.new
  end

  def create
  end
end
