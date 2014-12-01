source 'https://rubygems.org'

gem 'rails', '3.2.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
end

gem 'json'

gem "bcrypt-ruby", :require => "bcrypt"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'rspec-rails'
gem 'factory_girl_rails'
gem 'simple_form'
gem 'rolify'
gem 'database_cleaner'
gem 'email_spec'
gem 'letter_opener'
gem 'devise'
gem 'bootstrap-sass'
gem "paperclip", "~> 3.0"
gem 'rack-cache', :require => 'rack/cache'
gem 'dragonfly'
gem 'carrierwave'
gem 'omniauth'
gem 'oauth2'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem "time_diff", "~> 0.2.2"

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

gem 'puma'

group :production do
  gem 'puma'
end

gem 'heroku'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

group :test do
  gem 'cucumber-rails'
end