@UpdateProfile
Feature: Update Profile

  @Update @UpdateProfile1
  Scenario: User successfully login
    Given   [Login Page] User enter the email "automation21@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    And     [Employees Page] User tap on upload excelpdf
