# frozen_string_literal: true

source "https://rubygems.org"

gemspec

gem "jekyll-gist"
# chirpy dropped this in v7.6.0, but 9 posts rely on redirect_from front matter
gem "jekyll-redirect-from"
gem "html-proofer", "~> 5.0", group: :test

platforms :windows, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.2.0", :platforms => [:windows]
