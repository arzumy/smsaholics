Feature: Users management
  In order to communicate better with others
  As a guest
  I want to be able to register

  Scenario: User registration
    Given I am on the homepage
    When I fill in the following:
      | Name              | arzumy          |
      | Email             | hello@ar.zu.my  |
      | Password          | password        |
      | Confirm Password  | password        |
    And I press "Register"
    Then I should see "Welcome, arzumy"

  Scenario: User registration with incomplete inputs
    Given I am on the homepage
    When I fill in the following:
      | Name              | |
      | Email             | |
      | Password          | |
      | Confirm Password  | |
    And I press "Register"
    Then I should see error on these fields:
      | Name              | can't be blank  |
      | Email             | can't be blank  |
      | Password          | can't be blank  |