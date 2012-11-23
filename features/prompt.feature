Feature: I get an interactive prompt
  In order to give commands to the application
  I want to get a prompt

  @no-quit
  Scenario: Quitting
    When I run `sch` interactively
    And I wait for the date prompt
    And I type "quit"
    Then the exit status should be 0

  Scenario: Prompts
    Given I know how many entries I have
    When I run `sch` interactively
    And I wait for output to contain "Date? "
    And I type "01/21/2012"
    Then I wait for output to contain "Amount? "
    And I type "100.00"
    Then I wait for output to contain "Party? "
    And I type "USPS"
    Then I wait for output to contain "Description? "
    And I type "Postage for red dog"
    Then I wait for output to contain "Category:"
    And I type "1"
    Then I should have a new entry

  Scenario: Default date
    When I run `sch` interactively
    Then the output should have a default date

  Scenario: income categories
    When I run `sch` interactively
    And I advance to the category with an amount of "10"
    Then I wait for output to contain "ravelry"

  Scenario: expense categories
    When I run `sch` interactively
    And I advance to the category with an amount of "-10"
    Then I wait for output to contain "postage"