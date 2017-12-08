Feature: User can log in using his/hers facebook credentials
  As a user of the system
  In order to simplify the sign up/login process
  I would like to be able to login using Facebook


  Scenario: Visitor clicks on 'Login with Facebook' and creates an account
    Given I am on the landing page
    And I click on "Login with Facebook"
    Then I should be on the "landing" page
    Then show me the page
    And I should see "Successfully authenticated from Facebook account"