class FeaturesController < ApplicationController
  def index
    @features = Feature.all
  end

  def create
  end
  
end
