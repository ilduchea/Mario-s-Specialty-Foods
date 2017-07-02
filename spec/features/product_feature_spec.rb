require 'rails_helper'
require 'faker'

describe "the product crud process" do
  let(:product) {
    Product.create(
      name: "Steak",
      cost: 25,
      origin: "USA"
    )
  }

  it "allows a user to create a new product" do
    visit root_path
    click_link "New Product"
    fill_in "Product's Name", with: "Steak"
    fill_in "Product's Cost", with: "18"
    fill_in "Product's Country of Origin", with: "USA"
    click_button "Create Product"
    expect(page).to have_content "Steak"
  end

  it "allows a user to edit a product" do
    visit product_path(product)
    click_link "Edit"
    fill_in "Product's Name", with: "Prime Rib"
    click_button "Update Product"
    expect(page).to have_content "Prime Rib"
  end

  it "allows a user to add a review to a product" do
    visit product_path(product)
    fill_in "Rating", with: 4
    fill_in "Your Name", with: "qwerty"
    fill_in "Your Review", with: Faker::Lorem.characters(50..250)
    click_button "Create Review"
    expect(page).to have_content "qwerty"
  end

  it "allows the user to delete a product" do
    visit product_path(product)
    click_link "Delete"
    expect(page).to have_no_content "Steak"
  end


end
