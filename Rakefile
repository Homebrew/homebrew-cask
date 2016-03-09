require 'coveralls/rake/task'
require 'rake/testtask'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))

namespace :test do
  Rake::TestTask.new(:minitest) do |t|
    # TODO: setting the --seed here is an ugly temporary hack, to remain only
    #       until test-suite glitches are fixed.
    ENV['TESTOPTS'] = '--seed=14830' if ENV['TRAVIS']
    t.pattern = "test/**/*_test.rb"
    t.libs << 'test'
  end

  RSpec::Core::RakeTask.new(:rspec)

  desc 'Run tests for minitest and RSpec with coverage'
  task :coverage do
    ENV['COVERAGE'] = '1'
    Rake::Task[:test].invoke
  end
end

desc 'Run tests for minitest and RSpec'
task :test => ['test:minitest', 'test:rspec']

Coveralls::RakeTask.new

RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = ['--force-exclusion']
end

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
     'doc/man_page/brew-cask.1.md > man/man1/brew-cask.1'
end
