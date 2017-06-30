# README

# Mario's Specialty Foods

## Description

#### _**This site is designed for a food distributer, allowing them to display their products and have customers submit reviews on individual products**_

#### _**By Tyler Stephenson, June 30, 2017**_

### Setup/Installation Requirements
* clone <link to repo>
* cd <local repo>
* run this series of commands:
  * `$ bundle install`
  * `$ rails db:create`
  * `$ rails db:migrate db:test:prepare`
  * `$ rails db:seed`
  * `$ rails s`
* navigate to localhost:3000 in your prefered web browser.

## Planning

1. Specs
  * Use Bootstrap for base styling.
  * product model.
      * name - string
      * cost - number
      * origin - string
      * timestamps
  * product validations.
    * presence of name
    * presence of cost
    * presence of origin
  * product relationships
    * has many reviews

  * review model.
      * author - string
      * content_body - string
      * rating - integer
      * product_id - integer
      * timestamps
  * review validations.
    * presence of author
    * presence of content_body
      * min 50 characters
      * max 250 characters
    * presence of rating
      * min number 1
      * max number 5
  * review relationships
    * belongs to product

  * seeding using Faker
    * 50 products
    * 250 reviews

  * Scopes
    * The product with the most reviews.
    * The three most recently added products.
    * All products made in the USA for buyers that want to buy local products.

2. User Stories
  * Site admins should be able to add, update and delete new products. (Don't worry about user authentication; assume everyone who visits the site is an admin for now).
  * Users should be able to click an individual product to see its detail page. (You will not be expected to show the product's average rating; that's included in the further exploration section.)
  * Users should be able to add a review to a product.

4. UX/UI
  * Include and modify bootstrap/materialize/Sass etc.
  * Develop custom style

5. Polish
  * Refactor
  * Make README awesome

### Known Bugs
No known bugs at this time.

## Support and Contact details
* Tyler Stephenson
* ilduchea@gmail.com

### Technologies Used

* Ruby
* Rails
* HTML5
* CSS
* Bootstrap
* jQuery

### License

*This is web page is licensed under the MIT License.*

Copyright (c) 2017 **Tyler Stephenson**
