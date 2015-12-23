Feature: Login

  Scenario: Login with valid username
    Given I'm on the homepage
    When I log in with username "admin" and password "p4ssw0rd"
    Then I should be logged in
    And I should be redirected to my dashboard
