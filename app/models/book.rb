class Book < ApplicationRecord
  belongs_to :author
  has_many :ratings

  def average_rating
    rating_sum/ratings.size
  end

  def rating_sum
    self.ratings.map {|rating| rating.stars}.reduce(:+)
  end
end
