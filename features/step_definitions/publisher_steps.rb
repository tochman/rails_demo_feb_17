And(/^I am on the publisher dashboard page$/) do
  visit publishing_articles_path
end

And(/^the article's "([^"]*)" should be "([^"]*)"$/) do |attribute, name|
  user = User.find_by(name: name)
  article = Article.last
  expect(article.method(attribute.to_sym).call).to eq user
end