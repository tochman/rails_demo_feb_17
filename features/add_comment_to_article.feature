Feature: Add comment to article
  As a reader
  In order to share my opinion about an article
  I would like to be able to leave a comment

  Background:
    Given the following articles exists in the system
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |


  Scenario: Visitor creates a comment
    Given I am on the landing page
    And I click on "Read more" for "A breaking news item"
    Then I should see "A breaking news item"
    And I should see "Some really breaking action"
    And I fill in "Comment" with "This is interesting"
    And I fill in "Email" with "thomas@craft.se"
    Then show me the page
    And I click "Create Comment"
    Then I should see "Thank you! You comment has been added."
    And I should see "This is interesting"
    And I should see "Comment by: thomas@craft.se"

  Scenario: Throws an error when comment body is empty

  Scenario: Comment is okay even if email is not submitted

  Scenario: Throws an error if email is present but badly formatted


