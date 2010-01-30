Feature: Post and read message
  In order to communicate with others
  As a user
  I want to be able to post and read message

  Scenario: Read a message
    Given a message exists
    And I am on the homepage
    Then I should see the following messages:
      | What are you guys up to tonight?  | posted less than a minute ago  |

  Scenario: Post a message
    Given I am on the homepage
    When I fill in the following:
      | Message | What are you guys up to tonight?  |
    And I press "Post"
    Then I should see the following messages:
      | What are you guys up to tonight?  | posted less than a minute ago  |