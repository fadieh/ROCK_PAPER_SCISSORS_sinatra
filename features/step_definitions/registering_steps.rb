Given(/^I am the home page$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content "Rock, Paper, Scissors"
end

# 

# Given(/^I am on the home page$/) do
#   visit '/'
# end

# When(/^I should see a field with "(.*?)"$/) do |arg1|
#   fill_in "p1_name", :with => "Fadie"
#   click_button "Play"
# end

# Then(/^I enter my name and press play$/) do |arg1|
#   expect(page).to have_content "Hello Fadie"
# end

Given(/^I am on the home page$/) do
	visit '/'
end

When(/^I enter my name and press play$/) do
	fill_in 'p1_name', :with => 'Fadie'
	click_button 'play'
end

Then(/^I should see the words "(.*?)"$/) do |arg1|
	expect(page).to have_content 'Hello Fadie'
end