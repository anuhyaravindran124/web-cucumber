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














}