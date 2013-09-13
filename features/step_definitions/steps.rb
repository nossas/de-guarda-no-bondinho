Given(/^I'm in "(.*?)"$/) do |arg1|
  visit root_path if arg1 == "the homepage"
end

Given(/^I click on "(.*?)"$/) do |arg1|
  click_link to_link(arg1)
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
  wait_until do
    page.should have_css(to_element(arg1))
  end
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

Given(/^there are (\d+) users enrolled$/) do |arg1|
  arg1.to_i.times { User.make! }
end

Then(/^"(.*?)" should contain "(.*?)"$/) do |arg1, arg2|
  page.should have_css(to_element(arg1), text: arg2)
end

Then(/^"(.*?)" should have (\d+) elements?$/) do |arg1, arg2|
  page.should have_css(to_element(arg1), count: arg2.to_i)
end

Then(/^an email should be sent to "(.*?)"$/) do |arg1|
  ActionMailer::Base.deliveries.select{|e| e.to.include?(arg1)}.should_not be_empty
end

Then(/^an email should be sent to the admin team$/) do
  ActionMailer::Base.deliveries.should_not be_empty
end
