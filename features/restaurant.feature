Feature: 

Scenario Outline: 
	When I request a taco <index>
	Then I receive a taco <name>

Examples:
	| index	| name 		|
	| 1		| Soft Taco 	|
	| 2		| Crunchy Taco 	|
	| 3		| Super Taco 	| 

Scenario Outline: 
	When I request a burger <index>
	Then I receive a burger <name>

	Examples:
	| index	| name 					|
	| 1		| Hamburger 			|
	| 2		| Cheese Burger			|
	| 3		| Dble Cheese Burger	|
