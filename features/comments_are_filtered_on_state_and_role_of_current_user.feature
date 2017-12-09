@javascript
Feature: Comments are filtered on state and role of current user
  As the publisher
  In order to be in control of what my subscribers see on the site
  I would like comments to be displayed according to state and who is logged in at any given time


  Background:
    Given the following users exist
      | name       | email                | owner | subscriber |
      | Clark Kent | publisher@random.com | true  |            |
      | Random Guy | random@random.com    | false | true       |

    Given the following articles exists in the system
      | title                | content                     |
      | A breaking news item | Some really breaking action |

    Given the following comments exists in the system
      | article              | content      | email               | state     |
      | A breaking news item | This is cool | commenter@random.se | approved  |
      | A breaking news item | Awesome      | commenter@random.se | submitted |
      | A breaking news item | This is shit | commenter@random.se | rejected  |


  Scenario: Subscriber can only see approved comments
    Given I am logged in as "random@random.com"
    And I am on the "A breaking news item" article page
    Then I should see "This is cool"
    But I should not see "Awesome"
    And I should not see "This is shit"


  Scenario: Subscriber can only see approved comments
    Given I am logged in as "publisher@random.com"
    And I am on the "A breaking news item" article page
    Then I should see "This is cool"
    And I should see "Awesome"
    But I should not see "This is shit"