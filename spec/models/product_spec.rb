require 'rails_helper'
require 'faker'

RSpec.describe Product, type: :model do
  it { should have_many :reviews }

  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :origin }

  let(:product1) {
    Product.create(
      name: "Haggis",
      cost: 20,
      origin: "Scottland"
    )
  }

  let(:product2) {
    Product.create(
      name: "Prime Rib",
      cost: 25,
      origin: "USA"
    )
  }

  describe ".mostReviews" do
    it "displays the product with the most reviews" do
      product1
      4.times do |index|
        product2.reviews.create!(
          author: Faker::Book.author,
          content_body: Faker::Lorem.characters(50..250),
          rating: Faker::Number.between(1, 5),
        )
      end
      expect(Product.mostReviews.first.id).to eq(product2.id)
    end
  end

  describe ".recentProducts" do
    it "displays the recently created products" do
      product2
      product1
      expect(Product.recentProducts.first.id).to eq(product1.id)
    end
  end

  describe ".localProducts" do
    it "displays the products of a certain origin" do
      product2
      product1
      expect(Product.localProducts("USA").first.id).to eq(product2.id)
    end
  end
end
