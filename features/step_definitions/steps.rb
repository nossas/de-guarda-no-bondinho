Given(/^I'm in "(.*?)"$/) do |arg1|
  visit root_path if arg1 == "the homepage"
end

Given(/^I click on "(.*?)"$/) do |arg1|
  click_link "join_by_email" if arg1 == "join by email button"
end

Given(/^I fill "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in to_element(arg1), with: arg2
end

When(/^I submit "(.*?)"$/) do |arg1|
  within(to_element(arg1)) do
    page.find("input[type='submit']").click
  end
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_css(to_element(arg1))
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  page.should_not have_css(to_element(arg1))
end

Then(/^I should be in "(.*?)"$/) do |arg1|
  page.current_path.should == root_path
end

Given(/^there is an user with email "(.*?)"$/) do |arg1|
  User.make! email: arg1
end

Then(/^it should subscribed to MailChimp$/) do
  expect(@gb_lists).to have_received(:subscribe)
end
