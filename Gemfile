source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '>= 2.5'

#もとからあったもの
gem 'rails', '~> 5.2.3'
gem 'turbolinks', '~> 5'
gem 'uglifier'
gem 'coffee-rails'
gem 'sqlite3'

#エラー報告
gem "google-cloud-error_reporting"

#デザイン
gem "jquery-rails"
gem 'bootstrap'
gem 'sass-rails'
gem 'font-awesome-rails'

#twitter
gem 'twitter'
gem 'omniauth'
gem 'omniauth-twitter'

#OGP画像合成
gem 'mini_magick'

#SEO
gem 'meta-tags'
gem 'sitemap_generator'
gem 'google-analytics-rails'

#ストレージとDB
gem "google-cloud-firestore"
gem "google-cloud-storage", "~> 1.10"

#　多言語化
gem 'rails-i18n'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :test do
  gem "rspec-rails"
  gem "rspec-retry"
  gem "rack-test"
  gem "capybara"
  gem "poltergeist"
  gem 'phantomjs', :require => 'phantomjs/poltergeist'
end
