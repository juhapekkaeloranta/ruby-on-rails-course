class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
  end

  def new
    @rating = Rating.new
  end

  def create
    #Rating.create beer_id: params[:rating][beer_id], score: params[:rating][:score]
    Rating.create params.require(:rating).permit(:score, :beer_id)
    redirect_to(ratings_path)
  end
end