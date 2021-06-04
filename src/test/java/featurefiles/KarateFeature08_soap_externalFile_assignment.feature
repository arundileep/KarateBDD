Feature: Karate Test Suite 8
  Soap api validation

  Scenario: Karate Soap 1.1 assign Validation 1
    Soap validation 1

    Given url "https://ecs.syr.edu/faculty/fawcett/Handouts/cse775/code/calcWebService/Calc.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request read("calci_input.xml")
    When soap action "http://tempuri.org/Add"
    Then status 200
    * print responseHeaders
    * match responseHeaders["Server"] == ["Microsoft-IIS/8.0"]
    * match responseHeaders["Server"][0] == "Microsoft-IIS/8.0"
    * match responseType == "xml"
    * print response
    * match response contains "55"
    * match response //AddResult == 55
    * assert responseTime <= 2000
    * print responseTime
