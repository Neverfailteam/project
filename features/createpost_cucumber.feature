Feature: Post 
As a logged in user
I want to post
So that I share my oppinion
  
    Scenario: User creates a post
    Given User was logged in
    When User clicks  'New post' button
    Then User should see a page with title 'Tilte', content 'Content', button 'Create Post' 
  