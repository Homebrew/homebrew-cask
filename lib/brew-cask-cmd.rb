#!/System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/bin/ruby -W0 -EUTF-8:UTF-8
# encoding: UTF-8

# just in case
if RUBY_VERSION.to_i < 2
  raise 'brew-cask: Ruby 2.0 or greater is required.'
end

require 'pathname'

$LOAD_PATH.unshift(File.expand_path('..', Pathname.new(__FILE__).realpath))

# todo remove internal Homebrew dependencies and remove this line
require 'vendor/homebrew-fork/global'

require 'hbc'

begin
  Hbc::CLI.process(ARGV)
rescue Interrupt => e
  puts
  exit 130
end
exit 0
