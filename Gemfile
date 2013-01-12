source 'https://rubygems.org'

gem 'rails', '3.2.11'

gem 'pg'

group :production do
  gem 'thin'
end

gem 'rspec-rails', group: [:test, :development]
group :test do
  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'database_cleaner'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'uglifier', '>= 1.0.3'
  gem 'bootstrap-sass'
end

# JS Libs
gem 'jquery-rails'
gem 'jquery_mobile_rails'

# Other Gems
gem 'strong_parameters'
gem 'simple_form'
gem 'active_model_serializers', git: 'git://github.com/josevalim/active_model_serializers.git'
gem 'mongo_mapper'
gem 'bson_ext'
gem 'daemons-rails'
gem 'tweetstream'
gem 'twitter-text'
gem 'omniauth-twitter' # so users can log in with twitter
gem 'stamp'
gem 'faker'

group :development do
  gem 'quiet_assets', group: :development
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
