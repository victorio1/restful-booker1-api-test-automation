Feature: Create Booking
  Este servicio es utilizado para poder
  crear reservas

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'

    @HappyPath
    Scenario: Verificar petición correcta para crear una reserva reciba 200
      Given path '/booking'
      And request
      """
       {
          "firstname" : "Eduardo",
          "lastname" : "Victorio",
          "totalprice" : 123,
          "depositpaid" : true,
          "bookingdates" : {
          "checkin" : "2020-03-22",
          "checkout" : "2019-01-01"
        },
          "additionalneeds" : "Lunch"
        }
      """
      When method POST
      Then status 200

