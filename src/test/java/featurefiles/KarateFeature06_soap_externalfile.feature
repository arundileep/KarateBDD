Feature: Karate Test Suite 6
  Reading payload data from external file

  Scenario: Karate Soap 1.1 externalFile Validation 1
    Soap validation 1

    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request read("tempConvert_input.xml")
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
    * print responseHeaders
    * match responseHeaders["Server"] == ["Microsoft-IIS/7.5"]
    * match responseHeaders["Server"][0] == "Microsoft-IIS/7.5"
    * match responseType == "xml"
    * print response
    * match response contains "102.2"
    * match response //CelsiusToFahrenheitResult == 102.2
    * assert responseTime <= 2000
    * print responseTime

