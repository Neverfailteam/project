Feature: Login Cucumber
As a product manager
I want our users can login
So that they have a better experience

Scenario: User logged in
Given Sign up
Given Log in
When I log in
Then I should see homepage
