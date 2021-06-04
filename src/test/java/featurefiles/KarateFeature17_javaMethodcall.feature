Feature: Karate Test Suite 17
  Java method call

  Scenario: Karate java static Method Call 1
    java static Method Call validation 1

   * def result1 =
    """
    function()
    {
    var a = Java.type('utils.javaUtil')
    return a.getStaticMethod();
    }
    """
    * print result1()
    * def res2 = Java.type('utils.javaUtil').getStaticMethod()
    * print res2


  Scenario: Karate non static java Method Call 2
    java Non static Method Call non static validation 2

    * def result1 =
    """
    function()
    {
    var a = Java.type('utils.javaUtil')
    var b = new a();
    return b.getNonStaticMethod();
    }
    """
    * print result1()