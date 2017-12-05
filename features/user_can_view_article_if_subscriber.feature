Feature: User can view an article if he is a subscriber
  As a publisher
  In order to be able to monetize on my content
  I would like to restrict access to articles to subscribing users


  Background:
    Given the following users exist
      | email                 | subscriber |
      | random@random.com     | false      |
      | subscriber@random.com | true       |

    And the following articles exists in the system
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |


  Scenario: Subscriber can view an article
    Given I am logged in as "subscriber@random.com"
    And I am on the landing page
    When I click on "Learn Rails 5"
    Then I should be on the "Learn Rails 5" article page


  Scenario: Non-subscriber can not view article
    Given I am logged in as "random@random.com"
    And I am on the landing page
    When I click on "Learn Rails 5"
    Then I should be on the "landing" page
    And I should see "You need to purchase a subscription"

