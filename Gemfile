source 'https://rubygems.org'


gem 'rails', '4.2.5'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
#gem 'jbuilder', '~> 2.0'
gem 'active_model_serializers'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'bcrypt', '~> 3.1.10'

gem 'puma'
gem 'figaro'
gem 'slim-rails'
gem 'devise'
gem 'pundit'
gem 'bootstrap', '~> 4.0.0.alpha3'
gem 'font-awesome-rails'
gem 'kaminari'

source "https://rails-assets.org" do
  gem "rails-assets-tether"
end

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'teaspoon-jasmine'
  gem 'pry-byebug'
  gem 'factory_girl_rails'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'guard-cucumber'
  gem 'guard-teaspoon'
  gem 'pry-rails'
  gem 'ruby_gntp'
end

