source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.1'
gem 'pg', '~> 1.0.0'
gem 'puma'

gem 'graphql'
gem 'graphql-batch'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'baby_squeel'
gem 'strong_migrations'

group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'
end

group :development do
  gem 'awesome_print'
  gem 'bullet'
  gem 'graphql-rails_logger'
  gem 'graphql-schema_comparator', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false

  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-rails'
  gem 'test-prof'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
