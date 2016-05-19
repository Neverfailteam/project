Feature: Login Cucumber
As a product manager
I want our users can login
So that they have a better experience

Scenario: User logged in
Given Sign up
Given Log in
When I log in
Then I should see homepage
When I log out
Then The current user is empty
When I log in with wrong user
Then I should see 'Invalid email/password combination'
Given Log in
When I log in and I check remember_me
