source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'jquery-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'dotenv-rails', groups: [:development]

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'friendly_id', '~> 5.1.0'
gem 'devise', '~> 4.3'
gem 'petergate', '~> 1.7'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'
gem 'kaminari', :git => 'https://github.com/kaminari/kaminari'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'carrierwave', '~> 1.0'
gem 'mini_magick', '~> 4.6'
gem 'carrierwave-aws', '~> 1.0', '>= 1.0.2'

gem 'cocoon', '~> 1.2', '>= 1.2.9'
gem 'gritter', '~> 1.2'
gem 'twitter', '~>6.1'
gem 'redis', '~> 4.0', '>= 4.0.1'

gem 'figaro'
gem 'httparty'
gem 'certified'

ruby "2.4.1"