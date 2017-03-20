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
    And I click "Submit"
    Then I should see "Thank you! You comment has been added."
    And I should see "This is interesting"
