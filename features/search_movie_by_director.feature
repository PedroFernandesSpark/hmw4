Feature: User can search movies by the same director

Scenario: Add a director to a movie
	Given I am on a movie page
	When I click on "Add director"
	And the movie exists
	Then I should be able to write a directors name
	And I should be able to save

Scenario: Search a movie by same director (happy)
	Given I am on RottenPotatoes home page
	When I click on a movie
    And I click on "Search movies by same director"
	And I should see all movies that share that same director

Scenario: Search a movie by same director (sad)
	Given I am on RottenPotatoes home page
	When I click on a movie
    And I click on "Search movies by same director"
    And that movie has no director
	And I should see a error message saying "movie has no director"
