class FeaturesController < ApplicationController
  def show
    @feature = Feature.find(params[:id])
    @message = Message.new
  end

  def index
    @features = Feature.all
  end

  def edit
    @feature = Feature.find(params[:id])
  end

  def update
    @feature = Feature.find(params[:id])
    if @feature.update(feature_params)
      redirect_to @feature, notice: "Sorry, this feature cannot be displayed."
    else
      render :edit, status: unprocessable_entity
    end
  end

  private

  def feature_params
    params.require(:feature).permit(:name, :date_finished, :summary)
  end
end
