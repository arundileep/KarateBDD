Feature: Karate Test Suite 13
  end to end rest API validation(API Chaining)

  @rest
  Scenario: Karate endToend API Validation 1
    e2e validation 1

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
    * def id = response.id
    * def id = 1
    * print id

    #---------------- fetching resorces
    Given url "https://jsonplaceholder.typicode.com/posts/" + id
    When method get
    Then status 200
    #* match response.title == "karate"

    #----------------- updating resource
    Given url "https://jsonplaceholder.typicode.com/posts/" + id
    And header Content-type = "application/json; charset=UTF-8"
    And request "{id: " + id + ", title: 'foo1', body: 'bar1', userId: 1}"
    When method put
    Then status 200


   #---------------- deleting resorces
    Given url "https://jsonplaceholder.typicode.com/posts/" + id
    When method delete
    Then status 200