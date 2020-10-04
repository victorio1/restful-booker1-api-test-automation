Feature: Create Booking
  Este servicio es utilizado para la generacion del token
  donde el usuario se logueara al servicio realizando un SignIn

  Background:
    * url baseUrl
    * header Accept = 'application/json'

    @HappyPath
    Scenario: Verificar que al enviar la peticion con username y password correctos reciba cod 200
      * string schema = read('classpath:restfullbooker/createtoken/jsonschema/scenario1-schema.json')
      * def SchemaUtils = Java.type('com.intuit.karate.restfullbooker.util.SchemaUtils')
      Given path '/auth'
      And request
      """
        {
          "username" : "admin",
          "password" : "password123"
        }
      """
      When method POST
      Then status 200
      And assert SchemaUtils.isValid(response, schema)

  @HappyPath
  Scenario: Verificar que al enviar la peticion con username y password correctos reciba cod 200
    Given path '/auth'
    And request
      """
        {
          "username" : "admin",
          "password" : "password123"
        }
      """
    When method POST
    Then status 200
    And match response.token == "#string"

