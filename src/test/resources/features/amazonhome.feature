Feature: Amazon Homepage Test

Scenario: Open Amazon homepage
Given I open the browser
When I navigate to "https://www.amazon.in"
Then I should see Amazon homepage


Feature: Amazon Homepage Test

Scenario: Open Amazon homepage
Given I open the browser
When I navigate to "https://www.amazon.in"
Then I should see Amazon homepage

Scenario: Verify page title contains Amazon
Given I open the browser
When I navigate to "https://www.amazon.in"
Then page title should contain "Amazon"

Scenario: Verify search box is visible
Given I open the browser
When I navigate to "https://www.amazon.in"
Then search box should be visible

Scenario: Search for a product
Given I open the browser
When I navigate to "https://www.amazon.in"
And I search for "mobile"
Then search results should be displayed
Feature: Product Details

Scenario: Open product details page
Given I search for "headphones"
When I click on first product
Then product details page should be displayed

Scenario: Verify product information
Given I open a product page
Then product title, price and rating should be visible

Feature: Amazon Search

Scenario: Search with valid keyword
Given I am on Amazon homepage
When I search for "laptop"
Then relevant search results should be displayed

Scenario: Search with special characters
Given I am on Amazon homepage
When I search for "@@@###"
Then no results message should be displayed

Scenario: Search with empty input
Given I am on Amazon homepage
When I click search without entering text
Then system should not perform search

Scenario: Verify URL contains amazon
Given I open the browser
When I navigate to "https://www.amazon.in"
Then URL should contain "amazon"

Scenario: Negative test - wrong title
Given I open the browser
When I navigate to "https://www.amazon.in"
Then page title should contain "Flipkart"

Feature: Cart

Scenario: Add product to cart
Given I am on product page
When I click on Add to Cart
Then product should be added to cart

Scenario: Remove product from cart
Given I have product in cart
When I remove the product
Then cart should be empty

Scenario: Add multiple quantities
Given I am on product page
When I add 3 quantities to cart
Then cart should show 3 items
