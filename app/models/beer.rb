class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :ratings

  def average_rating
    sum = 0
    avg = 0
    nOfRatings = self.ratings.count
    if nOfRatings != 0
      self.ratings.each {|ratingElement| sum += ratingElement.score}
      avg = sum / (self.ratings.count.to_f)
    end
  end

  # @return [Float]
  def average_rating_with_map
    self.ratings.map {|ratingElement|
      ratingElement.score
      }.sum.to_f / self.ratings.count
  end

  def to_s
    self.name + " - " + self.brewery.name
  end
end