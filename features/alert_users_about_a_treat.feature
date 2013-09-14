Feature: alert users about a treat
  In order to mobilize people
  As an user
  I want to alert users about a treat

  @javascript
  Scenario:
    Given I'm in "the homepage"
    And I click on "the alert button"
    When I click on "the alert confirmation button"
    Then I should not see "the alert button"
    And I should see "the alert was sent"
    And an email should be sent to the admin team
