Feature: 

Scenario:
	When I request a number that is too low
	Then I receive the too low message 

Scenario: 
	When I request a number that is just right
	Then I receive the correct message

Scenario:
	When I request a number that is too high
	Then I receive the too high message 
