Feature: Amazon Search and Product Validation

Scenario: Search mobile and open first product
  Given I open the browser
  When I navigate to "https://www.amazon.in"
  And I wait for search box to be visible
  And I enter "mobile" in search box
  And I click on search button
  Then I wait for search results to load
  When I click on first product
  And I switch to new tab
  Then I wait for product title to be visible
  And I should see product title


Scenario: Search with empty input
Given I open the browser
When I navigate to "https://www.amazon.in"
And I wait for search box
And I search for ""
Then default suggestions or error should be displayed


Scenario: Search button not clickable
Given I open Amazon homepage
When I enter "mobile" in search box
Then I wait for search button to be clickable
And I should handle if button is not clickable


Scenario: Search results not loaded
Given I open Amazon homepage
When I search for "mobile"
Then I wait for results to appear
And I should handle no results scenario

Scenario: Product click does not open new tab
Given I search for "mobile"
When I click first product
Then I wait for new tab
And handle if tab not opened

Feature: Cart Page Wait Scenarios

Scenario: Wait for add to cart confirmation message
  Given I open Amazon homepage
  When I search for "mobile"
  And I click on a product
  And I click on "Add to Cart"
  Then I wait for confirmation message
  And I should see "Added to Cart" message
  
  Scenario: Wait for cart count to update
  Given I add a product to cart
  Then I wait for cart icon count to update
  And I should see updated cart count

Scenario: Wait for cart page to load
  Given I have items in cart
  When I click on cart icon
  Then I wait for cart page to load
  And I should see all added items
  
  Scenario: Wait for quantity update
  Given I have a product in cart
  When I increase quantity to 2
  Then I wait for quantity to update
  And total price should update correctly
  
  Scenario: Wait for item removal from cart
  Given I have a product in cart
  When I click on delete
  Then I wait for item to be removed
  And item should not be visible in cart
  
  Scenario: Add to cart confirmation not displayed
  Given I open Amazon homepage
  When I add product to cart
  Then I wait for confirmation message for 10 seconds
  And I should handle timeout if message not displayed











}