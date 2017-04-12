class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }

  def average
    total_ratings = 0
    amount_of_ratings  = self.reviews.length
    self.reviews.each do |review|
      total_ratings += review.rating.to_i
    end
    average_rating = total_ratings/amount_of_ratings
    return average_rating
  end
end
