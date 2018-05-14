ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'shoulda/matchers'
require 'pry'

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.library :rails
  end
end

class ActiveSupport::TestCase
  fixtures :all
end
