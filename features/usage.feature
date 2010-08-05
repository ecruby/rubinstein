Feature: Help
As a user of the Rubinstein gem
I want to view the usage information
So I can use the gem effectively

Scenario: Viewing the usage information implicitly
When I run "../../bin/rubinstein"
Then I should see "Rubinstein"
And I should see "USAGE: rubinstein my_game.rb"
