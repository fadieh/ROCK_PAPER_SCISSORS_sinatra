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