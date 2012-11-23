Feature: I get an interactive prompt
  In order to give commands to the application
  I want to get a prompt

  @no-quit
  Scenario: Quitting
    When I run `sch` interactively
    And I wait for output to contain "Date? "
    And I type "quit"
    Then the exit status should be 0

  Scenario: Quitting
    When I run `sch` interactively
    And I wait for output to contain "Date? "
