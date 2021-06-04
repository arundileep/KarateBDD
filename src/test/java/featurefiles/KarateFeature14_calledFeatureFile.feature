Feature: Karate Test Suite 14
  called Feature File

  @called1
  Scenario: Karate calledFeatureFile 1
    calledFeatureFile validation 1

    # -------------- Creating resource
    Given url "https://jsonplaceholder.typicode.com/posts"
    And header Content-Type = "application/json; charset=UTF-8"
    And request
    """
    {
    title: 'karate',
    body: 'BDD',
    userId: 100,
  }
    """
    When method post
    Then status 201

  @called2
  Scenario: Karate calledFeatureFile 2
  calledFeatureFile validation 1

    # -------------- Creating resource
    Given url "https://jsonplaceholder.typicode.com/posts/1"
    When method get
    Then status 200