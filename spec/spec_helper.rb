# ENV['RACK_ENV'] = 'test'
ENV['ENVIRONMENT'] = 'test'

require 'rake'

Rake.application.load_rakefile

require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'capybara'
require 'capybara/rspec'
require 'rspec'
# require_relative './features/web_helpers'

Capybara.app = BookmarkManager

RSpec.configure do |config|

  ### Not recognising the method, This is to get rid of NOTICE when running tests
  ## config.use_transactional_fixtures = false

  config.before(:each) do
    # Rake::Task['setup'].execute
    Rake::Task['test_database_setup'].execute
    ### This will only load the p statement in Rakefile once
    ### at the top of the task
    # Rake::Task['test_database_setup'].invoke
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
