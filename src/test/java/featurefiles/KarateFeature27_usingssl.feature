Feature: Kafka Test Suite 27
  Reading global variables from Karate config file

  Background:
    # enable X509 certificate authentication with PKCS12 file 'certstore.pfx' and password 'certpassword'
    * configure ssl = { keyStore: 'classpath:certstore.pfx', keyStorePassword: 'certpassword', keyStoreType: 'pkcs12' }

# trust all server certificates, in the feature file
    * configure ssl = { trustAll: true }

# trust all server certificates, global configuration in 'karate-config.js'
  #karate.configure('ssl', { trustAll: true });


  Scenario: Karate Config TC
    Given url baseUrl
    And path listUsers
    When method get
    Then status 200
    * print response





