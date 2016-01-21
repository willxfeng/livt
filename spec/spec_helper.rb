require 'valid_attribute'
require 'database_cleaner'
require 'factory_girl_rails'
require_relative 'support/factories'

require 'coveralls'
Coveralls.wear!('rails')

RSpec.configure do |config|
  config.before :each do
    ActionMailer::Base.deliveries.clear
  end
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end
  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end
  config.before(:each, :js => true) do
    DatabaseCleaner.strategy = :truncation
  end
  config.before(:each) do
    DatabaseCleaner.start
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end
end

def sign_in(user)
  visit root_path
  click_link 'Sign In'

  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Sign In'
end
