Feature: Karate Test Suite 3
  Xml validation

  Scenario: Karate Xml TestCase 1
    Xml validation 1

    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * print xml/info/id
    * print xml.info.id
    * print xml/info/tool/name
    #* assert xml/info/id == "101"
    * match xml/info/tool contains "<name>Karate</name><version>0.9.6</version>"

  Scenario: Karate Xml TestCase 2
  Xml validation 2

    Given def xml =
    """
    <info>
        <tool>
          <name>Karate</name>
          <version>0.9.6</version>
        </tool>
        <tool>
          <name>IntelliJ</name>
         <version>2020.2</version>
        </tool>
    </info>
    """
    * print xml
    * match xml/info/tool[1] contains "<name>Karate</name><version>0.9.6</version>"
    * match xml contains 'Karate'

