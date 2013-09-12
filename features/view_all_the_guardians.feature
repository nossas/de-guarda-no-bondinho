Feature: view all the guardians
  In order to see the people who are supporting
  As an user
  I want to view all the guardians

  Scenario: there are few users
    Given there are 15 users enrolled
    When I'm in "the homepage"
    Then "the guardians partial list" should have 15 elements

  Scenario: there are many users
    Given there are 60 users enrolled
    When I'm in "the homepage"
    Then "the guardians partial list" should have 32 elements

  @javascript
  Scenario: view the guardians full list
    Given there are 43 users enrolled
    When I'm in "the homepage"
    And I click on "see all guardians"
    Then I should see "the guardians full list"
    And "the guardians full list" should have 43 elements
