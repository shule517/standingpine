source "https://rubygems.org"
ruby "2.4.1"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.0"
gem "pg"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "rubocop", require: false
gem "paperclip"
gem "fog-google"
gem "google-api-client"
gem "administrate", github: "thoughtbot/administrate"
gem "wysiwyg-rails"

group :development, :test do
  gem "sqlite3"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "pry-byebug"
  gem "rspec-rails"
  gem "rubocop-rspec"
  gem "factory_girl_rails"
  gem "guard"
  gem "guard-rspec"
  gem "spring-commands-rspec"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "faker"
  gem "capybara"
  gem "database_cleaner"
  gem "launchy"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
