Feature: Users authentication
  In order identify who am I talking to
  As a user
  I want to be able login

  Scenario: User Login
    Given a user exists
    And I am on the home page
    When I fill in the following within "form#login-form":
      | Email     | hello@ar.zu.my  |
      | Password  | password        |
    And I press "Login"
    Then I should see "Welcome back!"