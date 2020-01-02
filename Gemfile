source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'
gem 'rails', '~> 6.0.1'
gem 'mysql2', '~> 0.5.3'
gem 'puma', '~> 4.1'
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'rspec-rails'
  gem 'spring-commands-rspec'
  gem 'bullet'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', require: false
  gem 'rubocop-rails'
  gem 'pry-remote'
end

group :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'database_cleaner'
end
