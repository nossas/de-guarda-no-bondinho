Feature: join by email
  In order to be warned about threats
  As an user
  I want to join by email

  Background:
    Given I'm in "the homepage"
    And I click on "join by email button"

  Scenario: when I fill the form correctly
    Given I fill "user name" with "Nícolas Iensen"
    And I fill "user e-mail" with "nicolas@meurio.org.br"
    And I fill "user phone" with "9999-9999"
    When I submit "join by email form"
    Then I should see "thanks for joining"
    And I should not see "join by email button"

  Scenario: when I don't fill the form correctly
  Scenario: when I already joined
