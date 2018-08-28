# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_request_store/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_request_store'
  s.version     = SpreeRequestStore.version
  s.summary     = 'Provide current user, current store and current currency method by using RequestStore'
  s.description = '-'
  s.required_ruby_version = '>= 2.2.7'

  s.author    = 'Charles Wong'
  s.email     = 'charles@eoniq.co'
  s.homepage  = 'https://github.com/EONIQ/spree_request_store'
  s.license = 'BSD-3-Clause'

  s.files        = Dir['README.md', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core'
  s.add_dependency 'spree_multi_currency'
  s.add_dependency 'spree_multi_domain'
  s.add_dependency 'spree_auth_devise'
  s.add_dependency 'request_store'
  s.add_dependency 'spree_extension'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'appraisal'
end
