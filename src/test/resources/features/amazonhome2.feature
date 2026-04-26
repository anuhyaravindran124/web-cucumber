Feature: Amazon Homepage Test

Scenario: Verify Amazon homepage and search functionality
Given I open the browser
When I navigate to "https://www.amazon.in"
Then Amazon logo should be visible
And search box should be visible
When I search for "mobile"
Then search results should be displayed