Feature: User can comment on an article
  As a user of the news service
  In order to express my opinions
  I would like to be able to comment on any given news article

  Background:
    Given the following articles exists in the system
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |

  Scenario: User can successfully leave a comment
    Given I am on the landing page
    And I click on "Learn Rails 5"
    Then show see the page
    When I fill in "Email" with "random@email.com"
    And I fill in "Comment" with "Star Trek Discovery"
    And I click on "Create Comment"
    Then I should be on the "Learn Rails 5" page
    And I should see "Your comment was added successfully"
    And I should see "Star Trek Discovery"