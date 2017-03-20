Given(/^I am on the landing page$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^the following articles exists in the system$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:article, hash)
  end
end
