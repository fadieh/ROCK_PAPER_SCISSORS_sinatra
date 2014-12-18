Feature: Playing

Scenario: Visiting the Home Page
	Given I am the home page
	Then I should see "Rock, Paper, Scissors"

Scenario: Visiting the Home Page
	Given I am on the home page
	When I enter my name and press play
	Then I should see the words "Hello Fadie"