Feature: Characters

  Scenario: Create a new character
    Given a city exists with a name of "Darlington"
    And I am logged in as a "Player" with the email "test@email.com"
    When I openly go to the new character page
    And I fill in "name" with "Bob"
    And I select "Darlington" from "City"
    And I openly press "Create"
    Then I should see "Character was successfully created"
    And I should see "Bob"
    And I should see "Darlington"

    