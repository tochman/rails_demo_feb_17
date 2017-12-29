Then(/^I should be on the "([^"]*)" page$/) do |page|
  sleep 2
  case page
    when 'landing'
      expect(current_path).to eq root_path
    when 'publishing dashboard'
      expect(current_path).to eq publishing_articles_path
    else
      raise 'no path provided'
  end
end


Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content /#{content}/i
end

Then(/^I should not see "([^"]*)"$/) do |content|
  expect(page).to_not have_content /#{content}/i
end

Then(/^I should be on the "([^"]*)" article page$/) do |article_title|
  article = Article.find_by(title: article_title)
  sleep 2
  expect(current_path).to eq article_path(article)
end