Feature: Admin User can moderate features
  As the owner of the site
  In order to keep the atmosphere on the site civil
  I would like to be able to moderate comments left by my users

  Background:
    Given the following users exist
      | name       | email                | owner | subscriber |
      | Clark Kent | publisher@random.com | true  |            |
      | Random Guy | random@random.com    | false | true       |

    Given the following articles exists in the system
      | title                | content                     |
      | A breaking news item | Some really breaking action |

    Given the following comments exists in the system
      | article              | content      | email               |
      | A breaking news item | This is cool | commenter@random.se |

  @javascript
  Scenario: Visitor can not  moderate comments on article
    Given I am logged in as "random@random.com"
    And I am on the landing page
    And I click on "A breaking news item"
    Then I should not see "Approve"
    Then I should not see "Reject"

  @javascript
  Scenario: Admin User can approve comments on article
    Given I am logged in as "publisher@random.com"
    And I am on the landing page
    And I click on "A breaking news item"
    When I click on "Approve"
    Then I should be on the "A breaking news item" article page
    And I should see "Comment was approved!"

  @javascript
  Scenario: Admin User can approve comments on article
    Given I am logged in as "publisher@random.com"
    And I am on the landing page
    And I click on "A breaking news item"
    When I click on "Reject"
    Then I should be on the "A breaking news item" article page
    And I should see "Comment was rejected!"
    



