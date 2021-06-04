Feature: Karate Test Suite 7
  Reading payload data from external file

  Scenario: Karate Soap 1.1 readFromFile Validation 1
    Soap validation 1

    * def xml = read("tempConvert_input.xml")
    * print xml
    * match xml contains 39
    * match xml //CelsiusToFahrenheit/Celsius == 39