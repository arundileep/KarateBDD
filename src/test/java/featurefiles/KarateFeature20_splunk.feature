Feature: Karate Test Suite 20
  splunk validations

  Background: Init
    * def login =
    """
    function(uid, pwd) {
        var temp = uid + ':' + pwd;
        var Base64 = Java.type('java.util.Base64');
        var encoded = Base64.getEncoder().encodeToString(temp.bytes);
        return 'Basic ' + encoded;
    }
    """
    * def auth = login("palmetoadmin", "P@lmeto@123")
    * print auth
    * configure ssl = true

    Given url "https://10.0.0.60:8089"
    And header Authorization = auth

  Scenario: splunk test 1
    splunk validation 1

    Given path "/services/search/jobs"
    When method get
    Then status 200
    * print response
    * print responseType
    * match response /feed/author/name == "Splunk"

  Scenario: splunk test 2
  splunk validation 2

    Given path "/services/alerts/alert_actions"
    When method get
    Then status 200
    #* print response
    #* print responseType
    * match response /feed/entry[1]/title == "email"

  Scenario: splunk test 3
  splunk validation 3

    Given path "/services/alerts/fired_alerts"
    When method get
    Then status 200
    * def res = get response /feed/entry/content/dict/key/dict/key[@name='app']
    * print res