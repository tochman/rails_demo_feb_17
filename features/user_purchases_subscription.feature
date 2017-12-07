Feature: User can purchase a subscription
  As a visitor
  In order to access all content of the news service
  I would like to be able to purchase a life long subscription


  Background:
    Given the following users exist
      | email                 | subscriber |
      | random@random.com     | false      |
      | subscriber@random.com | true       |

    And the following articles exists in the system
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |

    And this table exist
      | column_1 | value_1 |
      | column_2 | value_2 |
      | column_3 | value_3 |

  @javascript
  Scenario: User can click on "Subscribe" link if not already subscribing
    Given I am logged in as "random@random.com"
    And I am on the landing page
    When I click on "Learn Rails 5"
    Then I should be on the "landing" page
    And I should see "You need to purchase a subscription"
    When I click on "Subscribe"
    And I click the "Pay with Card" stripe button
    And I fill in stripe field "Card number" with "4242 4242 4242 4242"
    And I fill in stripe field "CVC" with "123"
    And I fill in stripe field "Expiry" with "12/2021"
    And I submit the stripe form
    Then I should be on the "landing" page
    And I should see "Welcome as a subscriber"
    When I click on "Learn Rails 5"
    Then I should be on the "Learn Rails 5" article page



