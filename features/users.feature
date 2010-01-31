Feature: Users management
  In order to communicate better with others
  As a guest
  I want to be able to register and login

  Scenario: User registration
    Given I am on the homepage
    When I fill in the following:
      | Name              | arzumy          |
      | Email             | hello@ar.zu.my  |
      | Password          | password        |
      | Confirm Password  | password        |
    And I press "Register"
    Then I should see "Welcome, arzumy"