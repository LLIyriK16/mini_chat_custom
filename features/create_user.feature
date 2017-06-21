Feature: Create

  Scenario: Create success user
    Given click button Sign Up
    When all parameters present
    Then user created

  Scenario: Unsuccess user
    Given click button Sign Up
    Then click Sign up for create user count of users must by 0