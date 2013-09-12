Feature: alert users about a treat
  In order to mobilize people
  As an user
  I want to alert users about a treat

  Scenario:
    Given I'm in "the homepage"
    When I click on "the alert button"
    Then an email should be sent to the admin team
    And I should not see "the alert button"
    And I should see "the alert was sent"
