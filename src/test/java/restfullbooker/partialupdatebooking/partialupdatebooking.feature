Feature: Partial Update Boooking
  Este servicio es utilizado para
  actualizar de manera parcial la reserva

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'

    Scenario: Verificar petición correcta para actualizar parcialmente una reserva reciba 200
      * def createTokenResponse = call read('classpath:common/createToken.feature')
      * def accessToken =  createTokenResponse.response.token
      Given path '/booking/' + 9
      And cookie token = accessToken
      And request
      """
        {
          "firstname" : "Eduardo",
          "lastname" : "Victorio"
        }
      """
      When method PATCH
      Then status 200