Given("the following users exist") do |table|
  table.hashes.each do |hash|
    FactoryBot.create(:user, hash)
  end
end

Given(/^I am logged in as "([^"]*)"$/) do |email|
  user = User.find_by(email: email)
  login_as(user, scope: :user)
end