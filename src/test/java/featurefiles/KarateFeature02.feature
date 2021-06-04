Feature: Karate Test Suite 2
  Json validation

  Scenario: Karate Json TestCase 1
    Json validation 1

    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    * print json.id
    * print json.tool.name
    * assert json.id == "101"
    * assert json.tool.name == "Karate"

  Scenario: Karate Json TestCase 2
  Json validation 2

    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
    """
    * print json
    * print json.id
    * print json.tool.name
    * assert json.id == "101"
    * assert json.tool.name == "Karate"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}