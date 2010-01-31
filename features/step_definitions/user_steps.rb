Then /^I should see error on these fields:$/ do |table|
  actual_table = Cucumber::Ast::Table.new(tableish("form.formtastic fieldset ol li.error label", lambda {|label| [label, label.parent.search("p[contains(class, 'error')]").first]}))
  table.diff!(actual_table)
end

Given /^I am logged in$/ do
  Given 'a user exists'
  And 'I am on the home page'
  When 'I fill in "Email" with "hello@ar.zu.my" within "form#login-form"'
  And 'I fill in "Password" with "password" within "form#login-form"'
  And 'I press "Login"'
end
