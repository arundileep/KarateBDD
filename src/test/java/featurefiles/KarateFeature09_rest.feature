Feature: Karate Test Suite 9
  Rest api validation

  @rest
  Scenario: Karate rest Validation 1
    Rest validation 1

    Given url "https://www.w3schools.com//xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=40"
    When method post
    Then status 200
    * print responseHeaders
    * match responseHeaders["Server"] == ["Microsoft-IIS/7.5"]
    * match responseHeaders["Server"][0] == "Microsoft-IIS/7.5"
    * match responseType == "xml"
    * print response
    * match response contains "104"
    * match response //string == 104
    * assert responseTime <= 1000
    * print responseTime
