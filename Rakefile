require 'coveralls/rake/task'
require 'rake/testtask'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))

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

desc 'Open a REPL for debugging and experimentation'
task :console do
  require 'pry'
  require 'pry-byebug'
  require 'vendor/homebrew-fork/global'
  require 'hbc'
  ARGV.clear
  Hbc.pry
end

desc 'Generate man page from Markdown source'
task :man do
  sh 'ronn --roff --pipe --organization=Homebrew-cask --manual=brew-cask ' \
     'doc/src/brew-cask.1.md > man/man1/brew-cask.1'
end
