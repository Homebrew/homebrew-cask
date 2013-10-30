require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = "test/**/fetch_test.rb"
  # t.pattern = "test/**/*_test.rb"
  t.libs << 'test'
end

task :default => :test
