source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sassc-rails', '~> 2.1'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # For making test data!
  gem 'faker'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'

  # Code coverage
  gem 'simplecov', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Use Devise for authentication
gem 'devise', '~> 4.0'

# Pundit for policies
gem 'pundit'

# simple_form and country_select for easier forms
gem 'country_select'
gem 'simple_form', '~> 4.0'

# administrate for content management
# TODO: Upgrade to official release when it's out
gem 'administrate', github: 'thoughtbot/administrate'
# administrate plugins
gem 'administrate-field-nested_has_many'

# For content tagging
# TODO: Use official branch
gem 'acts-as-taggable-on', '~> 6.0', github: 'ogasawaraShinnosuke/acts-as-taggable-on'

# Rendering markdown
gem 'commonmarker'

group :production do
  # For S3
  gem 'aws-sdk-s3'
end

# Date parsing
gem 'chronic'

# Searching
gem 'pg_search'

# Settings
# TODO: migrate to different settings gem
gem 'rails-settings-cached', '~> 0'
# TODO: PR or leave
gem 'rails-settings-ui', github: 'mrysav/rails-settings-ui'

# Pagination
gem 'pagy'

# Backup/restore with zip file
gem 'rubyzip'
