# encoding: utf-8

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "rubocop/yast/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-yast"
  spec.summary = "Specific YaST Rubocop checks"
  spec.description = "A plugin for the RuboCop code style checker\n" \
    "This Rubocop plugin checks for YaST specific issues."
  spec.homepage = "http://github.com/yast/rubocop-yast"
  spec.authors = ["Ladislav Slezák"]
  spec.email = ["lslezak@suse.cz"]
  spec.licenses = ["MIT"]

  spec.version = RuboCop::Yast::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = ">= 1.9.3"

  spec.require_paths = ["lib"]
  spec.files = Dir[
    "{lib,spec}/**/*",
    "*.md",
    "*.gemspec",
    "Gemfile",
    "Rakefile"
  ]
  spec.test_files = spec.files.grep(/^spec\//)
  spec.extra_rdoc_files = ["LICENSE", "README.md"]

  spec.add_development_dependency("rubocop", "~> 0.27")
  spec.add_development_dependency("rake")
  spec.add_development_dependency("rspec", "~> 2.14.1")
  spec.add_development_dependency("simplecov")
end
