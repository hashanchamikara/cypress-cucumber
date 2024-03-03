Feature: Login functionality
    As a user
    I want to log in with my username and password
    So that I can access my account

Scenario: Successful login with valid credentials
    Given I am on the login page
    When I enter my username "valid_user" and password "valid_password"
    And I click the login button
    Then I should be logged in successfully

Scenario: Unsuccessful login with invalid credentials
    Given I am on the login page
    When I enter my username "invalid_user" and password "invalid_password"
    And I click the login button
    Then I should see an error message
