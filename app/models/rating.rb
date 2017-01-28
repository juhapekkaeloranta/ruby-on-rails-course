class Rating < ApplicationRecord
  belongs_to :beer

  def to_s
    Beer.find(self.beer_id.to_s).name + " " + self.score.to_s
  end
end
