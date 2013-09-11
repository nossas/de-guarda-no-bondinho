Feature: join by Facebook
  In order to be warned about threats
  As an user
  I want to join by Facebook

  Background:
    Given I'm in "the homepage"
    And I click on "join by Facebook button"

  @javascript @omniauth_test @gibbon
  Scenario: when I fill the form correctly
    Given I fill "user phone" with "(21) 99999999"
    When I submit "join by Facebook form"
    Then I should see "thanks for joining"
    And I should not see "join by Facebook button"
    And it should subscribed to MailChimp

  Scenario: when I don't fill the form correclty
  Scenario: when I already joined
