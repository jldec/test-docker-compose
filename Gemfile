# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '2.7.2'

gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'rails', '~> 5.1.5'

gem 'actionpack-action_caching', '~> 1.2'
gem 'active_model_serializers', '~> 0.10.9'
gem 'algoliasearch-rails', '~> 1.20.4'
gem 'autoprefixer-rails'
gem 'bootstrap', '~> 4.3.1'
gem 'bugsnag', '~> 6.13.1'
gem 'bunny', '~> 2.15'
gem 'cancancan', '~> 1.17'
gem 'coffee-rails', '~> 4.2'
gem 'down', '~> 5.1'
gem 'faraday', '~> 0.15.4'
gem 'faraday-http-cache', '~> 1.3'
gem 'faraday_middleware', '~> 0.13.1'
gem 'geocoder'
gem 'gibbon', '~> 3.3'
gem 'i18n-js', '~> 3.2'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails', '~> 4.3'
gem 'jwt', '~> 1.5'
gem 'meta-tags'
gem 'mime-types', '~> 3.1'
gem 'rails_param', '~> 0.10.0'
gem 'recaptcha'
gem 'recipient_interceptor'
gem 'redcarpet', '~> 3.5'
gem 'redis-rails', '~> 5.0'
gem 'request_store', '~> 1.4'
gem 'rinku', '~> 2.0.5'
gem 'roo', '~> 2.7'
gem 'shopify_api', '~>4.11'
gem 'sidekiq', '~> 6.4.0'
gem 'sidekiq-scheduler', '~> 3.0.0'
gem 'simple_form'
gem 'tessa', '~> 0.9.0'
gem 'toot', '~> 0.4.1'
gem 'typhoeus', '~> 1.3'
gem 'uglifier', '>= 1.3.0'
gem 'wcc-api', '~> 0.5.0'
gem 'wcc-auth', '~> 0.8.0',
  require: 'wcc/auth/devise'
gem 'wcc-blogs-client', require: 'wcc/blogs'
gem 'wcc-contentful', '~> 1.1.0'
gem 'wcc-contentful-app', '~> 1.1.0', require: 'wcc/contentful/app/rails'
gem 'wcc-data', '~> 0.3.3'
gem 'wcc-media-client', '~> 0.4.14'
gem 'wcc-styles', '~> 5.0.0'
gem 'webpacker', '~> 4.0'
gem 'xlsxtream', '~> 2.1'

source 'https://rails-assets.org' do
  gem 'rails-assets-datetimepicker', '2.4.5'
  gem 'rails-assets-dropzone'
  gem 'rails-assets-moment'
  gem 'rails-assets-moment-timezone'
  gem 'rails-assets-selectize'
end

group :development, :test do
  gem 'annotate'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 3.35'
  gem 'climate_control'
  gem 'danger-wcc', '~> 0.1.0'
  gem 'dotenv-rails', '~> 2.2.0'
  gem 'factory_bot_rails', '~> 4.0'
  gem 'guard', '~> 2.16.2'
  gem 'guard-reek', '~> 1.2'
  gem 'guard-rspec', '~> 4.7'
  gem 'guard-rubocop', '~> 1.3'
  gem 'guard-shell', '~> 0.7.1'
  gem 'letter_opener_web', '~> 1.3.1'
  gem 'percy-capybara', '~> 4.0'
  gem 'pry-rails'
  gem 'rails-controller-testing', '~> 1.0'
  gem 'rspec-json_expectations', '~> 2.2.0'
  gem 'rspec-rails', '~> 3.7'
  gem 'rspec_junit_formatter', '~> 0.3.0'
  gem 'selenium-webdriver', '~> 3.14.1'
  gem 'simplecov', '~> 0.21.2', require: false
  gem 'simplecov-cobertura', '~> 1.4'
  gem 'vcr', '~> 6.0'
  gem 'webdrivers', '~> 4.3.0'
  gem 'webmock', '~> 3.4'
end

group :development do
  gem 'better_errors', '~> 2.8.0'
  gem 'binding_of_caller'
  gem 'listen'
  # gem 'rails_real_favicon'
  gem 'bullet', '~> 5.9'
  git 'https://github.com/Shopify/erb-lint.git',
    branch: 'master' do
    gem 'erb_lint', '~> 0.0.24', require: false
  end
  gem 'html_tokenizer', '~> 0.0.7'
  gem 'rubocop', '~> 0.71.0', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'web-console', '>= 3.3.0'
end

group :production do
  gem 'dalli'
  gem 'rails_12factor'
  gem 'sprockets-redirect'
end
