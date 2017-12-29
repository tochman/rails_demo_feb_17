source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'haml-rails'
gem 'validates_email_format_of'

gem 'devise'
gem 'omniauth-facebook', '~> 4.0'
gem 'pundit'
gem 'stripe-rails'

gem 'geocoder'
gem 'state_machine'
gem 'friendly_id', '~> 5.2', '>= 5.2.3'


group :development, :test do
  gem 'pry'
  gem 'pry-byebug'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'coveralls', require: false
  gem 'stripe-ruby-mock', '~> 2.5', require: 'stripe_mock'
  gem 'webmock'
  gem 'dotenv-rails'
  gem 'state_machines-rspec'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
