module RatingAverage
  extend ActiveSupport::Concern

  def average_rating
    self.ratings.map {|ratingElement|
      ratingElement.score
    }.sum.to_f / self.ratings.count
  end
end