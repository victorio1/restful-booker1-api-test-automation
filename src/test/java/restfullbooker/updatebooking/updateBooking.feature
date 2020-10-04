Feature: Update Booking
  Este servicio es utilizado para poder
  actualizar las reservas del cliente

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'

    Scenario: Verificar petición correcta para actualizar una reserva reciba 200
      * def createTokenResponse = call read('classpath:common/createToken.feature')
      * def accessToken =  createTokenResponse.response.token
      Given path '/booking/' + 9
      And cookie token = accessToken
      And request
      """
        {
           "firstname" : "Eduardo",
           "lastname" : "Victorio",
           "totalprice" : 987,
           "depositpaid" : true,
           "bookingdates" : {
           "checkin" : "2021-05-05",
           "checkout" : "2025-01-06"
        },
          "additionalneeds" : "Dinner"
        }
      """
      When method PUT
      Then status 200