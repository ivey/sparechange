Then /^the output should have a default date$/ do
  t=Date.today
  step %Q{I wait for output to contain "Date? |#{t.month}/#{t.day}/#{t.year}|"}
end

When /I wait for the date prompt/ do
  assert_partial_output_interactive "Date? "
end

When /^I press enter$/ do
  type("")
end

When /^I wait for the amount prompt$/ do
  assert_partial_output_interactive "Date? "
  type ""
  assert_partial_output_interactive "Amount? "
end

Given /^I know how many entries I have$/ do
  @entries = 0 # TODO fix
end

Then /^I should have a new entry$/ do
  1 > @entries
end

When /^I advance to the category with an amount of "(.*?)"$/ do |amount|
  assert_partial_output_interactive "Date? "
  type ""
  assert_partial_output_interactive "Amount? "
  type amount
  assert_partial_output_interactive "Party? "
  type "asdfg"
  assert_partial_output_interactive "Description? "
  type "aeewfwkfew"
  assert_partial_output_interactive "Category:"
end
