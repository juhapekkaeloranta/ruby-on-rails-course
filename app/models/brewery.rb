class Brewery < ActiveRecord::Base
  has_many :beers
  has_many :ratings, through: :beers

  def print_report
    puts self.name
    puts "established at year #{self.year}"
    puts "number of beers #{self.beers.count}"
  end

  def restart
    self.year = 2017
    puts "changed year to #{year}"
  end

  def average_rating
    self.ratings.map {|ratingElement|
      ratingElement.score
    }.sum.to_f / self.ratings.count
  end

  '''
  DONT do this:
  def restart
    @year = 2017
    puts "changed year to #{@year}"
  end
  Use instancevariable only for controller-view communication
  '''
end
