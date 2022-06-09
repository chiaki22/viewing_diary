class RecommendationsController < ApplicationController

  def index
    @recommendation = Recommendation.new
  end

  def create
    @recommendation =Recommendation.new(recommendation_params)
    if @recommendation.save
      redirect_to recommendations_path
    else
      render :new
    end
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:title, :category_id, :memo, :image)
  end


end
