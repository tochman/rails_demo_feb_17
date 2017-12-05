@javascript
Feature: Authentication: User can create and use an account
  As a user of the system
  In order to access restricted features
  I would like to be able to create and use an account

  Background:
    Given the following users exist
      | email             | password        |
      | random@random.com | random_password |


  Scenario: User creates an account
    Given I am on the landing page
    And I click on "Create an account"
    And I fill in "Email" with "new_user@random.com"
    And I fill in "Password" with "new_password"
    And I fill in "Password confirmation" with "new_password"
    And I click on "Sign up"
    Then I should see "Welcome! You have signed up successfully"


  Scenario: Existing user can log in
    Given I am on the landing page
    And I click on "Login"
    And I fill in "Email" with "random@random.com"
    And I fill in "Password" with "random_password"
    And I click on "Log in"
    Then I should see "Signed in successfully."