Feature:  Subtract Feature Testing

  Scenario: Alpha Subtract feature of the app
    Given I test the initial state of the app with value as
    And I click the plus button
    And I click the plus
    And I click the plus button
    And I click the plus button
    And I click subtract button
    And I click subtract button
    Then I wait until the element of type "ProgressIndicator" is absent
    Then I see if the value is "2"

