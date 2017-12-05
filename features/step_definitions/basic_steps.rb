Given(/^I am on the landing page$/) do
  visit root_path
end


Given(/^the following articles exists in the system$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:article, hash)
  end
end

Given(/^I click on "([^"]*)"$/) do |element|
  click_link_or_button element
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  begin
    fill_in field, with: value
  rescue
    fill_in field.downcase, with: value
  end
end


Then(/^I should be on the "([^"]*)" article page$/) do |article_title|
  article = Article.find_by(title: article_title)
  expect(current_path).to eq article_path(article)
end


Then(/^show me the page$/) do
  save_and_open_page
end