source "https://rubygems.org"
gem "just-the-docs"

group :jekyll_plugins do
    gem "jekyll-seo-tag"
end

# Needed for git metadata
gem 'git'

# To avoid Twilight Zone errors when running `jekyll serve`
gem "tzinfo"

# Performance-booster for watching directories on Windows
gem "wdm", :platforms => [:mingw, :x64_mingw, :mswin]
  
# Windows and JRuby do not include zoneinfo files, so bundle tzinfo-data gem
# and associated library files.
platforms :mingw, :x64_mingw, :mswin, :jruby do
    gem "tzinfo-data"
end
  
gem "webrick", "~> 1.7"
