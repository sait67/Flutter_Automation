Feature: Testind DDT Search Box
  Test add features

  Scenario Outline: Searching Item
    Given I test the initial state of the app with value as
    When I type <strings>
    Then I see if the text is contain <result>

    Examples:

      | strings                          | result |
      | Hello Word                       | Hello  |
      | Welcome to the awsome calculator | fun    |
      | Searching for somthing here      | for    |