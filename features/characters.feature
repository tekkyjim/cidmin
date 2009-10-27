Feature: Characters

  Scenario: Create a new character
    Given I am on the new character page
    When I create a character named "A new character"
    Then I should see "A new character"
