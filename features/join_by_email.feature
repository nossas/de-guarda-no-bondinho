Feature: join by email
  In order to be warned about threats
  As an user
  I want to join by email

  Background:
    Given I'm in "the homepage"
    And I click on "join by email button"

  @javascript
  Scenario: when I fill the form correctly
    Given I fill "user name" with "Nícolas Iensen"
    And I fill "user email" with "nicolas@meurio.org.br"
    And I fill "user phone" with "(21) 9999-9999"
    When I submit "join by email form"
    Then I should see "thanks for joining"
    And I should not see "join by email button"
    And it should subscribed to MailChimp

  @javascript
  Scenario: when I don't fill the form correctly
    When I submit "join by email form"
    Then I should be in "the homepage"
    And I should see "user name field error"
    And I should see "user email field error"
    And I should see "user phone field error"

  @javascript
  Scenario: when I already joined
    Given there is an user with email "nicolas@meurio.org.br"
    And I fill "user name" with "Nícolas Iensen"
    And I fill "user email" with "nicolas@meurio.org.br"
    When I fill "user phone" with "(21) 9999-9999"
    Then I should see "user email field error"
