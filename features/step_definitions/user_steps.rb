Then /^I should see error on these fields:$/ do |table|
  actual_table = Cucumber::Ast::Table.new(tableish("form.formtastic fieldset ol li.error label", lambda {|label| [label, label.parent.search("p[contains(class, 'error')]").first]}))
  table.diff!(actual_table)
end