class FeaturesController < ApplicationController
  def show
    @feature = Feature.find(params[:id])
    @message = Message.new
  end



end
