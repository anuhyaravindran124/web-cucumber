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

Scenario: Verify URL contains amazon
Given I open the browser
When I navigate to "https://www.amazon.in"
Then URL should contain "amazon"

Scenario: Negative test - wrong title
Given I open the browser
When I navigate to "https://www.amazon.in"
Then page title should contain "Flipkart"
