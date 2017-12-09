When(/^I click the "([^"]*)" stripe button$/) do |button|
  click_button button
  sleep(5)
  @stripe_iframe = all('iframe[name=stripe_checkout_app]').last

end

And(/^I fill in stripe field "([^"]*)" with "([^"]*)"$/) do |field, value|
  within_frame @stripe_iframe do
    fill_in field, with: value
  end
end

And(/^I submit the stripe form$/) do
  within_frame @stripe_iframe do
    find('.Section-button').click
  end
  sleep(3)
end
