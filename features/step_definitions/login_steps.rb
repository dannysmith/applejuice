Given(/^I'm on the homepage$/) do
  visit '/'
end

When(/^I log in with username "([^"]+)" and password "([^"]+)"$/) do |username, password|
  fill_in 'email', with: username
  fill_in 'password', with: password
  click_button "Sign In"
end

Then(/^I should be logged in$/) do
  expect(current_path).not_to include "login"
end

Then(/^I should be redirected to my dashboard$/) do
  expect(current_path).to match(%r{\/dashboard$})
end
