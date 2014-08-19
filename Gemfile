source 'https://rubygems.org'

gem 'pg'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
# Use sqlite3 as the database for Active Record
# Use SCSS for stylesheets
gem 'bcrypt-ruby'
# Use Uglifier as compressor for JavaScript assets
# Use CoffeeScript for .js.coffee assets and views
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

gem 'faker', '1.1.2'
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'
gem "twitter-bootstrap-rails"
gem 'uglifier', '>= 1.3.0'
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
#gem 'sass-rails', '~> 4.0.3'
gem 'coffee-rails', '~> 4.0.0'


# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring

group :development, :test do
   gem 'rspec-rails', '~> 3.0.0'
   gem 'autotest-rails'
   gem 'capybara'
end

group :test, :production do
   gem 'rails_12factor'
end

group :development do
   gem 'pry-rails'
#   gem 'sqlite3', '1.3.9'
   gem 'spring'
end

group :test do
   gem 'factory_girl_rails', '4.2.0'
end

group :production do
   gem 'unicorn'
end

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

