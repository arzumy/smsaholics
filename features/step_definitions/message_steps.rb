Given /^the following post_messages:$/ do |post_messages|
  PostMessage.create!(post_messages.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) post_message$/ do |pos|
  visit post_messages_url
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following messages:$/ do |expected_post_messages_table|
  actual_table = tableish("ul.messages li", "p")
  expected_post_messages_table.diff!(actual_table)
end
