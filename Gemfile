source 'https://rubygems.org'

gemspec
gem 'rails', '3.2.13'
gem 'resque', :git => 'https://github.com/resque/resque.git', :branch => "1-x-stable"

gem 'sqlite3', :platforms => :ruby
gem 'activerecord-jdbcsqlite3-adapter', :platforms => :jruby

group :test do
  gem 'minitest-spec-rails'
  gem 'coveralls', :require => false
  gem 'redcard'
  gem "mocha", :require => false

  # Hax for supporting Ruby 1.8
  gem 'minitest-spec-rails-tu-shim', :platforms => :ruby_18
end


group :assets do
  gem 'uglifier', '>= 1.0.3'

  gem 'libv8',        '3.11.8.13', :platforms => :ruby
  gem 'therubyracer', '~> 0.11.4', :platforms => :ruby
  gem 'therubyrhino', '2.0.2',     :platforms => :jruby
end
