Feature: Karate Test Suite 10
  Rest api validation

  @rest
  Scenario: Karate rest jsonOutput Validation 1
    Rest validation 1

    Given url "https://reqres.in/api/users?page=2"
    #And header Content-Type = "application/x-www-form-urlencoded"
    When method get
    Then status 200
    * print responseHeaders
    * match responseType == "json"
    * print response
    * match response.total == 12
    * match response.data[0].last_name == "Lawson"
    * match response.data[1].last_name == "Ferguson"
    * assert responseTime <= 1000
    * print responseTime

  @rest
  Scenario: Karate rest jsonOutput Validation 2
  Rest validation 2

    Given url "https://reqres.in"
    #And path "/api/users?page=2"
    And path "/api/users"
    And param page = 2
    #And header Content-Type = "application/x-www-form-urlencoded"
    When method get
    Then status 200
    * print responseHeaders
    * match responseType == "json"
    * print response
    * match response.total == 12
    * match response.data[0].last_name == "Lawson"
    * match response.data[1].last_name == "Ferguson"
    * assert responseTime <= 1000
    * print responseTime
