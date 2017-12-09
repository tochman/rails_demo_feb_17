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
  Scenario: Admin User can moderate comments on article
    Given I am logged in as "publisher@random.com"
    And I am on the landing page
    And I click on "A breaking news item"
    Then I should see "Moderate"

  @javascript
  Scenario: Admin User can moderate comments on article
    Given I am logged in as "random@random.com"
    And I am on the landing page
    And I click on "A breaking news item"
    Then I should not see "Moderate"
    



