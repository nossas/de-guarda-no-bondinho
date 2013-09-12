Feature: see enrolled users counter
  In order to know how many people are supporting
  As an user
  I want to see the enrolled users counter

  Scenario:
    Given there are 3 users enrolled
    And I'm in "the homepage"
    Then "the user counter" should contain "3"