require 'coveralls/rake/task'
require 'rake/testtask'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

Coveralls::RakeTask.new

Rake::TestTask.new do |t|
  t.name = 'minitest'
  t.pattern = "test/**/*_test.rb"
  t.libs << 'test'
end

RSpec::Core::RakeTask.new(:spec)

RuboCop::RakeTask.new do |t|
  t.name = 'rubocop'
  t.options = ['--force-exclusion']
end

task :test => [:minitest, :spec, 'coveralls:push']
task :default => [:test, :rubocop]

task :console do
    sh 'irb -Ilib -rvendor/homebrew-fork/global -rhbc'
end
