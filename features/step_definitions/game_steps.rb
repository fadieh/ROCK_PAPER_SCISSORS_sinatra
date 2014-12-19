Given(/^I am logged into the game$/) do
  visit '/'
  fill_in 'p1_name', :with => 'Fadie'
  click_button 'play'
end

Then(/^I should see the inputs "(.*?)", "(.*?)", "(.*?)"$/) do |arg1, arg2, arg3|
  expect(page).to have_field 'rock'
  expect(page).to have_field 'paper'
  expect(page).to have_field 'scissors'
end

# 

Given(/^I am on the game page$/) do
  visit '/'
  fill_in 'p1_name', :with => 'Fadie'
  click_button 'play'
end

When(/^I select "(.*?)" and click Play$/) do |arg1|
  choose 'rock'
  click_button 'play!'
end

Then(/^I should see the words "(.*?)" on the result page$/) do |arg1|
  expect(page).to have_content 'You have choosen rock'
end

# 

Given(/^I am on the game page for the second time$/) do
  visit '/'
  fill_in 'p1_name', :with => 'Fadie'
  click_button 'play'
end

When(/^I choose "(.*?)" and click Play$/) do |arg1|
  choose 'paper'
  click_button 'play!'
end

Then(/^I should see "(.*?)" on the result page$/) do |arg1|
  expect(page).to have_content 'You have choosen paper'
end

#

Given(/^I am on the game page for the third time$/) do
  visit '/'
  fill_in 'p1_name', :with => 'Fadie'
  click_button 'play'
end

When(/^I pick "(.*?)" and click Play$/) do |arg1|
  choose 'scissors'
  click_button 'play!'
end

Then(/^I should see the setence "(.*?)" on the result page$/) do |arg1|
  expect(page).to have_content 'You have choosen scissors'
end