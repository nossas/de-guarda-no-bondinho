Feature: share on Facebook
  In order to bring more people to watch
  As an user
  I want to share on Facebook

  @javascript
  Scenario: 
    Given I'm in "the homepage"
    And I click on "join by email button"
    And I fill "user name" with "Nícolas Iensen"
    And I fill "user email" with "test@iensen.me"
    And I fill "user phone" with "(21) 99999999"
    When I submit "join by email form"
    Then I should see "Facebook share button"
