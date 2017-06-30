class Review < ApplicationRecord
  belongs_to :product

  validates :author, :content_body, :rating, :product, presence: true
  validates :content_body, length: { in: 50..250 }
  validates_numericality_of :rating, greater_than_or_equal_to: 1
  validates_numericality_of :rating, less_than_or_equal_to: 5
end
