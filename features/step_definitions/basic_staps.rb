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


And(/^I click on "([^"]*)" for "([^"]*)"$/) do |link, article_title|
  article = Article.find_by(title: article_title)
  within("#article-#{article.id}") do
    click_link_or_button link
  end
end

And(/^I fill in "([^"]*)" with "([^"]*)"$/) do |input, text|
  fill_in input, with: text
end

And(/^I click "([^"]*)"$/) do |text|
  click_link_or_button text
end

Then(/^show me the page$/) do
  save_and_open_page
end