source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.21.0'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'kado_viewer', '~> 0.1.0'
gem 'bootstrap', '~> 4.0.0.beta2'
gem 'jquery-rails'
gem 'devise', '~> 4.3'
gem 'petergate', '~> 1.8', '>= 1.8.1'
gem 'gritter', '~> 1.2'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'kaminari', '~> 1.1', '>= 1.1.1'
gem 'dotenv-rails', '~> 2.2', '>= 2.2.1'
gem 'carrierwave', '~> 1.2', '>= 1.2.2'
gem 'carrierwave-aws', '~> 1.3'
gem 'mini_magick', '~> 4.8'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem "jquery-slick-rails"

ruby "2.4.0"