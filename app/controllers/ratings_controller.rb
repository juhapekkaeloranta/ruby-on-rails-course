class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
  end

  def new
    @rating = Rating.new
    @beers = Beer.all
  end

  def create
    #Rating.create beer_id: params[:rating][beer_id], score: params[:rating][:score]
    Rating.create params.require(:rating).permit(:score, :beer_id)
    redirect_to(ratings_path)
  end

  def destroy
    rating = Rating.find(params[:id])
    rating.delete
    redirect_to ratings_path
  end
end
