Feature: Characters

  Scenario: Create a new character
    Given a city exists with a name of "Darlington"
    And I am on the new character page
    When I fill in "name" with "Bob"
    And I select "Darlington" from "City"
    And I press "Create"
    Then I should see "Character was successfully created"
    And I should see "Bob"
    And I should see "Darlington"

    