@tnr1

Feature: test Post

  Scenario: test POST
    Given url 'https://jsonplaceholder.typicode.com/todos/1'
    And request
    """
    {
    title: 'food',
    body: 'alcool',
    userId: 1,
    }
    """

    When method POST
    Then status 200
    And print response