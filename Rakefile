require 'rake/testtask'
require 'rspec/core/rake_task'

Rake::TestTask.new do |t|
  t.name = 'minitest'
  t.pattern = "test/**/*_test.rb"
  t.libs << 'test'
end

RSpec::Core::RakeTask.new(:spec)

task :test => [:minitest, :spec]
task :default => :test

task :console do
    sh 'irb -Ilib -rvendor/homebrew-fork/global -rhbc'
end
