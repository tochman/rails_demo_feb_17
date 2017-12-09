Then(/^I should be on the "([^"]*)" page$/) do |page|
  sleep 5
  case page
    when 'landing'
      expect(current_path).to eq root_path
    else
      raise 'no path provided'
  end
end


Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content /#{content}/i
end