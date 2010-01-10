Feature: Post message
  In order to communicate with others
  As a user
  I want to be able to post a message

  @
  Scenario: Post a message
    Given I am on the homepage
    When fill in the following:
      | Message | What are you guys up to tonight?  |
    And I press "Post"
    Then I should see the following:
      | Message                           | Posted              |
      | What are you guys up to tonight?  | less than a minute  |