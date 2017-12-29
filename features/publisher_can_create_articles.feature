@javascript
Feature: Publisher can create news articles
  As the owner of the site
  In order to be able to offer interesting content
  I would like to allow certain users to create articles

  Background:
    Given the following users exist
      | name       | email                | owner | publisher |
      | Clark Kent | publisher@random.com | false | true      |
      | JJJ        | jjj@random.com       | true  | true      |


  Scenario: Publisher creates an article
    Given I am logged in as "publisher@random.com"
    And I am on the publisher dashboard page
    And I click on "Create Article"
    And I fill in "Title" with "Breaking news"
    And I fill in "Content" with "Breaking news is awesome stuff!"
    And I click on "Submit for review"
    Then I should be on the "publishing dashboard" page
    And I should see "Your article has been submitted for review"