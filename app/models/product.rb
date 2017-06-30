class Product < ApplicationRecord
  has_many :reviews

  validates :name, :cost, :origin, presence: true

  scope :mostReviews, -> {(
    select("products.id, products.name, count(reviews.id) as reviews_count")
      .joins(:reviews)
      .group("products.id")
      .order("reviews_count DESC")
      .limit(1)
    )}
end
