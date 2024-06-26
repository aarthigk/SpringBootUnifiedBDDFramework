Feature: Search on Different Search Engines and Rest api

  Scenario: Open test automation site
    Given the user opens a browser
    When the user navigates to "https://www.google.com"
    And the user clicks for "product"
    Then user should see an ""

#  Scenario: Open Google and Search
#    Given the user opens a browser
#    When the user navigates to "https://www.google.com"
#    And the user searches for "test"
#    Then search results are displayed on Google
#
#  Scenario: Open Yahoo and Search
#    Given the user opens a browser
#    When the user navigates to "https://www.yahoo.com"
#    And the user searches for "test"
#    Then search results are displayed on Yahoo
#
#
  Scenario: Retrieve pets with status "pending"
    Given the Petstore API is accessible
    When a request is made to the "findByStatus" endpoint with the status parameter set to "pending"
    Then the response status code should be 200
    And the response should contain a list of pets with status "pending"
    And each pet in the response should have the required fields such as id, name, and status