Feature: Karate Test Suite 15
  calling Feature File

  @rest
  Scenario: Karate callingFeatureFile 1
    callingFeatureFile validation 1

    * def result = call read("KarateFeature14_calledFeatureFile.feature@called1")
    * print result
    * print result.response
    * match result.response.title == "karate"
    * def result1 = call read("KarateFeature14_calledFeatureFile.feature@called2")
    * print result1
    * print result1.response
    * match result1.response.title == "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"
