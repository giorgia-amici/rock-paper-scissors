Capybara.app::GAME

Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I register$/) do
  fill_in "player1", with: 'Giorgia'
  click_button 'Play'
end

Then(/^I should choose rock\-paper\-scissors$/) do
  pending # express the regexp above with the code you wish you had
end