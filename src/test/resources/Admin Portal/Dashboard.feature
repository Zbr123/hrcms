@DashboardFeature
Feature: Dashboard Feature

  Background:
    Given [Dashboard Page Admin Portal] User navigates to the admin portal

  Scenario: User navigates to the dashboard
    When [Dashboard Page Admin Portal] User enters a valid email address
    And [Dashboard Page Admin Portal] User enters a valid password
    And [Dashboard Page Admin Portal] User clicks on the login button
    Then [Dashboard Page Admin Portal] User should see the dashboard with heading "Hi Administrator!"



