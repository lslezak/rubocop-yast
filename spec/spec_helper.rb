# encoding: utf-8

require "simplecov"

SimpleCov.start do
  # don't check code coverage in these subdirectories
  add_filter "/vendor/"
  add_filter "/spec/"
end

# allow only the new "expect" RSpec syntax
RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.mock_with :rspec do |c|
    c.syntax = :expect
  end
end

# reuse the Rubocop helper, provides some nice methods used in tests
require File.join(
  Gem::Specification.find_by_name("rubocop").gem_dir, "spec", "spec_helper.rb"
)

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "rubocop-yast"
