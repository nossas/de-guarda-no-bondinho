Feature: view all the guardians
  In order to see the people who are supporting
  As an user
  I want to view all the guardians

  Scenario: there are few users
    Given there are 15 users enrolled
    And I'm in "the homepage"
    Then "the guardians list" should have 15 elements

  Scenario: there are many users
    Given there are 60 users enrolled
    And I'm in "the homepage"
    Then "the guardians list" should have 32 elements