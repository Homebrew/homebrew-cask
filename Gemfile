source 'https://rubygems.org'

gem 'rake'

group :debug do
  gem 'pry'
  gem 'pry-byebug', platforms: :mri
end

group :development do
  gem 'rubocop-cask', '~> 0.6.1'
end

group :release do
  gem 'ronn', '0.7.3'
end

group :test do
  gem 'coveralls', require: false
  gem 'minitest', '5.4.1'
  gem 'minitest-reporters'
  gem 'mocha', '1.1.0', require: false
  gem 'rspec', '~> 3.0.0'
  gem 'rspec-its', require: false
  gem 'rspec-wait', require: false
end
