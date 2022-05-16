source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Rails' defaults
ruby "3.1.2"

gem "rails"

gem "bootsnap", require: false
gem "cssbundling-rails"
gem "image_processing", "~> 1.2"
gem "jbuilder"
gem "jsbundling-rails"
gem "pg"
gem "puma"
gem "redis"
gem "sassc-rails"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Custom gems below here (excluding groups)
gem "aws-sdk-s3", require: false
gem "devise"
gem "dotenv-rails"
gem "friendly_id"
gem "pg_search"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "rspec-rails"
  gem "selenium-webdriver"
  gem "webdrivers"
end
