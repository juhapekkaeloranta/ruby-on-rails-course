class Beer < ActiveRecord::Base
  include RatingAverage

  belongs_to :brewery
  has_many :ratings

  #{# @return [Float]
  #def average_rating_with_map
  #  self.ratings.map {|ratingElement|
  #    ratingElement.score
  #    }.sum.to_f / self.ratings.count
  #end}

  def to_s
    self.name + " - " + self.brewery.name
  end
end