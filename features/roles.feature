Feature: Roles
  In order to manage permissions of actions
  As a admin
  I want to assign roles

  Scenario: check current role
    Given I am logged in as a Player with the email "test@email.com"
    When I openly go to the "test@email.com" user page
    Then I should see "Role:"
	And I should see "Player"