source 'https://rubygems.org'

ruby "3.1.2"

gem "rails",           "7.0.4"
# gem "pg", "1.5.3"
gem 'rails-i18n', '7.0.6'
gem 'rounding', '~> 1.0', '>= 1.0.1'
gem 'roo'
gem 'activerecord-import'
gem 'bcrypt',       '3.1.12'
gem 'will_paginate'
gem 'bootstrap-will_paginate', '1.0.0'
gem 'bootstrap-sass', '3.3.7'
gem 'puma',         '3.9.1'
gem "sassc-rails",  "2.1.2"
gem 'uglifier',     '3.2.0'
gem 'coffee-rails', '4.2.2'
gem 'jquery-rails', '4.3.1'
gem 'turbolinks',   '5.0.1'
gem 'jbuilder',     '2.6.4'
gem 'bootsnap', require: false
gem 'omniauth-google-oauth2'
gem 'omniauth-rails_csrf_protection'
gem 'dotenv-rails'
gem 'google-authenticator-rails'
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'

group :development, :test do
  gem 'byebug', '9.0.6', platform: :mri
end

group :development do
  gem "sqlite3", "1.4.2"
  gem 'web-console',           '3.5.1'
  gem 'listen'
  gem 'spring',                '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-rails' #binding.pry
end

group :production do
  gem "pg", "1.3.5"
  gem "aws-sdk-s3", "1.114.0", require: false
end
