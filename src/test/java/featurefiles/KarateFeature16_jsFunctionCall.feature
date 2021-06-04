Feature: Karate Test Suite 16
  Java script function call


  Scenario: Karate js FunctionCall 1
    js FunctionCall validation 1

    * def f1 = function(){ return 10;}
    * def f2 =
    """
    function(a) {
    karate.log(a);
    }
    """
    * print f1()
    * f2("Hi")