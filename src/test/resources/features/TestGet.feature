@tnr

Feature: Test api

  Scenario: test GET
    Given url urlServeur
    And path <string>
    And method GET
    Then status 200
    And print response

  Scenario: test GETEN
    Given url https://reqres.in/api/users?page=1
    And request
    """
    {
    first_name: 'Tracey',
    last_name: 'Ramos',
    Id: 6,
    email:'tracey.ramos@reqres.in',
    }
    """


    When method match
    Then status 200
    And print response
    And match response.data[0].email == <antracey.ramos@reqres.iny>