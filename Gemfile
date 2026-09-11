# frozen_string_literal: true

source "https://rubygems.org"

gemspec

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
gem 'jekyll-feed', '~> 0.15'
gem 'jekyll-sitemap', '~> 1.4'

group :test do
  gem "html-proofer", "~> 5.0"
end
