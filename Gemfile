source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.6'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Testing and debugging
group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5'
  gem "factory_bot_rails"
  gem 'pry', '~> 0.11.3'
  gem 'database_cleaner'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


# Install bootstrap front-end framework
gem 'popper_js', '~> 1.12.9'
gem 'bootstrap', '~> 4.1.1'
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
  gem 'rails-assets-chosen'
end

gem 'rails_12factor', group: :production

# User authentication using devise
gem 'devise'

# Simple form gem
gem 'simple_form'

# For country selection
gem 'country_select'

# Jquery UI
gem 'jquery-ui-rails'

# Carrierwave for image upload
gem 'carrierwave', '~> 1.0'

# Minimagick for image resize
gem "mini_magick"

# Figaro for secure configuration
gem "figaro"

# Fog gem for AWS integration
gem "fog-aws"

# Phone number input and verification
gem 'intl-tel-input'

# User Authentication with Facebook
gem 'omniauth-facebook'

# User Authentication with Google
gem 'omniauth-google-oauth2'

# Validate file size and type
gem 'file_validators'

# Font awesome gem
gem "font-awesome-rails"

# Time selection
gem "combined_time_select", "~> 2.0.0"

# Jquery validation for rails form
gem 'jquery-validation-rails'

# Input masking
gem 'jquery_mask_rails'

# Friendly ID for Vendor URLs
gem 'friendly_id', '~> 5.1.0'

# Geocode location
gem "geocoder"

# String interpolation of date/time and converting timezones in javascript
gem 'momentjs-rails'
gem 'moment_timezone-rails'

# Pagination for listings pages
gem 'will_paginate', '~> 3.1.0'

# Full calendar gem
gem 'fullcalendar.io-rails'

# Date time picker
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.47'

ruby "2.3.1"


