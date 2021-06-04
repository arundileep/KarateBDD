Feature: Karate Test Suite 11
  custom validation

  Scenario: Karate custom Validation 1
    custom validation 1

    * def a = 12
    * def b = 22
    * assert a == 12 && b == 22


  Scenario: Karate custom Validation 2
  custom validation 2

    * def a = 12
    * def b = 24
    * assert a == 12 || b > 25

  Scenario: Karate custom Validation 3
  custom validation 3

    * def a = 12
    * def b = 24
    * assert a != 11


  Scenario: Karate custom Validation 4
  custom validation 4 using matchers(data types)

    * def a = 12
    * def b = "test"
    * def c = true
    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"


  Scenario: Karate custom Validation 5
  custom validation 5 using matchers(Reg exp)

    * def a = "1222"
    * def b = "1000.2222"
    * def c = "test data from file"
    * def d = "KARATE"
    * def e = "karate"
    * def f = "Karate"
    * def g = "karate bdd"
    * def h = "cucumber bdd"

    * match a == "#regex \\d+"
    * match b == "#regex \\d+\\.\\d+"
    * match d == "#regex [A-Z]+"
    * match e == "#regex [a-z]+"
    * match f == "#regex [A-Z][a-z]+"
    * match g == "#regex (karate|cucumber) bdd"
    * match h == "#regex (karate|cucumber) bdd"
    * match c == "#regex (\\w+\\s?)+"
    * match c == "#regex ^test\.*"
    * match c == "#regex \.*file$"
