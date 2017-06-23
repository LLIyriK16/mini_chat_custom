Feature: Profile user

  Scenario: Profile
    Given login user
    When user visit profile path
    Then expect page status 200