Given(/^I am the home page$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content "Rock, Paper, Scissors"
end