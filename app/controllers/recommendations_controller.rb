class RecommendationsController < ApplicationController

  def create
    @recommendation =Recommendation.create(recommendation_params)
    redirect_to search_recommendations_path
  end  
  
  def search
    @recommendation = Recommendation.new
    if params[:q]&.dig(:title)
      squished_keywords = params[:q][:title].squish
      params[:q][:title_cont_any] = squished_keywords.split(" ")
    end
    @q = Recommendation.ransack(params[:q])
    @recommendations = @q.result.order("created_at DESC").page(params[:page]).per(6)
  end

  def destroy
    @recommendation = Recommendation.find(params[:id])
    @recommendation.destroy
    redirect_to search_recommendations_path
  end



  private

  def recommendation_params
    params.require(:recommendation).permit(:title, :category_id, :memo, :image)
  end


end
