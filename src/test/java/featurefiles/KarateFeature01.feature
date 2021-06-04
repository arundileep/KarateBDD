Feature: Karate Test Suite 1
  This is the first test suite

  Scenario: Karate TestCase 1
    This is the first test case

    Given def a = 10
    And def b = 22
    When def c = a + b
    Then assert c == 32

  Scenario: Karate TestCase 2
    This is the second test case

    * def a = 10
    * def b = 22
    * def c = a + b
    * assert c == 32

  Scenario: Karate TestCase 3
    This is the third test case
    test

    * def a = 10
    * def b = 22
    * def c = a + b
    * assert c == 32
    * print "c = ",c
    * karate.log("value of c = " +c)