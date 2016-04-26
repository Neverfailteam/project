Feature: Comment 
  As a user
  I want to comment a post
  So i can share my opinion
 
Scenario: Comment a post
  Given Signup
  Given Login
  When I comment
  Then I should see my comment