Feature: Game Play

Scenario: Ability to select options
	Given I am logged into the game
	Then I should see the inputs "Rock", "Paper", "Scissors"

Scenario: Ability to choose Rock
	Given I am on the game page
	When I select "Rock" and click Play
	Then I should see the words "You have chosen rock" on the result page

Scenario: Ability to choose Paper
	Given I am on the game page for the second time
	When I choose "Paper" and click Play
	Then I should see "You have chosen paper" on the result page

Scenario: Can choose Scissors
	Given I am on the game page for the third time
	When I pick "Rock" and click Play
	Then I should see the setence "You have chosen scissors" on the result page