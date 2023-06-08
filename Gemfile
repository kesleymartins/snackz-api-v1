source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"
gem "rails", "~> 7.0.5"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'tailwindcss-rails', '~> 2.0', '>= 2.0.29'
gem 'rack-cors', '~> 2.0', '>= 2.0.1'

gem "pg", "~> 1.5"
gem "dockerfile-rails", ">= 1.4", :group => :development

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # gem "spring"
end
