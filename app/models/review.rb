class Review < ApplicationRecord
  belongs_to :product

  validates :author, :content_body, :rating, :product, presence: true
  validates :content_body, length: { in: 50..250 }
  validates :rating, length: { in: 1..5 }
end
