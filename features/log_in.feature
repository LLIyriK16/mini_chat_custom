Feature: Login user

  Scenario: Login
    Given visit login page
    When fill all area and click log in
    Then user success login

  Scenario: Can't login
    Given visit login page
    Then user see error