When(/^I click the "([^"]*)" stripe button$/) do |button|
  click_button button
end

And(/^I fill in my card details on the stripe form$/) do
  sleep(2)
  @stripe_iframe = all('iframe[name=stripe_checkout_app]').last
  within_frame @stripe_iframe do
    fill_in 'Email', with: 'random@morerandom.com'
    fill_in 'Card number', with: '4242 4242 4242 4242'
    fill_in 'CVC', with: '123'
    fill_in 'Expiry', with: '12/2021'
  end
end

And(/^I submit the stripe form$/) do
  within_frame @stripe_iframe do
    click_button 'Pay SEK10.00'
  end
  sleep(5)
end