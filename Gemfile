source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '~> 4.0.0'
gem 'bootstrap-sass', '~> 2.3.2.2'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 2.1.2'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

gem 'devise', '~> 3.1.0'
gem 'simple_form', '~> 3.0.0'
gem 'rack-zippy', '~> 1.0.1'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
end

group :development do
  gem 'sqlite3', '~> 1.3.8'
  gem 'rspec-rails', '2.13.1'
  gem 'guard-rspec', '2.5.0'
  gem "better_errors", '~> 1.0.1'
  gem "binding_of_caller"
end

group :development, :test do
  gem 'spork-rails', github: 'sporkrb/spork-rails'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.3.6'
  gem 'dotenv-rails', '0.9.0'
end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end
