class FeaturesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @features = @project.features.order(:created_at)
  end

  def show
    @feature = Feature.find(params[:id])
    @message = Message.new
  end

  def edit
    @feature = Feature.find(params[:id])
  end

  def update
    @feature = Feature.find(params[:id])
    if @feature.update(feature_params)
      redirect_to project_features_path(@feature.project), notice: "Feature Completed!"
    else
      render :edit, status: unprocessable_entity
    end
  end

  private

  def feature_params
    params.require(:feature).permit(:name, :date_finished, :summary)
  end
end
