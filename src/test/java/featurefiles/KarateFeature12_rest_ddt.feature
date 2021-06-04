Feature: Karate Test Suite 12
  data driven testing validation

  @ddt
  Scenario Outline: Karate ddt Validation 1
    ddt validation 1

    Given url "https://www.w3schools.com//xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Celsius>"
    When method post
    Then status 200
    * print responseHeaders
    * match responseType == "<responseType>"
    * print response
    * match response //string == <res>

    Examples:
    |Celsius|responseType|res|
    |40     |xml         |104|
    |37     |xml         |98.6|
    |asd    |xml         |"Error"|

  @ddt
  Scenario Outline: Karate ddt Validation 2
  ddt validation 2 using external file

    Given url "https://www.w3schools.com//xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Celsius>"
    When method post
    Then status 200
    * print responseHeaders
    * print response
    * match response //string == "<res>"

    Examples:
      |read("ddt_input.csv")|