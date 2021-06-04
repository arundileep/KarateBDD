Feature: Karate Test Suite 19
  writing response to file

  @file
  Scenario: writing to external file test 1
    writing to file validation 1

    * def util = Java.type("utils.javaUtil")
    Given url "https://jsonplaceholder.typicode.com/posts/1"
    When method get
    Then status 200
    * def res = response
    * util.writeToFile("testkarate.json",res)

  @file
  Scenario: reading response from file test 1
    reading to file validation 1

    * def resp = read("classpath:testkarate.json")
    * print resp


