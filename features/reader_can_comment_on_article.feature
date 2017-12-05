@javascript
Feature: User can comment on an article
  As a user of the news service
  In order to express my opinions
  I would like to be able to comment on any given news article

  Background:

    Given the following users exist
      | email             | password        |subscriber|
      | random@random.com | random_password |true      |

    Given the following articles exists in the system
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |

    Given I am logged in as "random@random.com"
    Given I am on the landing page


  Scenario: User can successfully leave a comment
    And I click on "Learn Rails 5"
    When I fill in "Email" with "random@email.com"
    And I fill in "Comment" with "Star Trek Discovery"
    And I click on "Create Comment"
    Then I should be on the "Learn Rails 5" article page
    And I should see "Your comment was added successfully"
    And I should see "Star Trek Discovery"
    And I should see "Commented by: random@email.com"

  Scenario: User fails to submit content of comment
    And I click on "Learn Rails 5"
    When I fill in "Email" with "random@email.com"
    And I fill in "Comment" with ""
    And I click on "Create Comment"
    Then I should be on the "Learn Rails 5" article page
    And I should see "Content can't be blank"

  Scenario: User fails to provide a valid email
    And I click on "Learn Rails 5"
    When I fill in "Email" with "random guy@email."
    And I fill in "Comment" with ""
    And I click on "Create Comment"
    Then I should be on the "Learn Rails 5" article page
    And I should see "Email is invalid"

  Scenario: User opts out from submitting email
    And I click on "Learn Rails 5"
    When I fill in "Email" with ""
    And I fill in "Comment" with "Star Trek Discovery"
    And I click on "Create Comment"
    Then I should be on the "Learn Rails 5" article page
    And I should see "Your comment was added successfully"
    And I should see "Star Trek Discovery"
    And I should see "Commented by: anonymous"

