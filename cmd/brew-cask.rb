#!/System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/bin/ruby -W0 -EUTF-8:UTF-8
# encoding: UTF-8

# Ruby version check
unless RUBY_VERSION.split(".").first.to_i >= 2
  alt_ruby = which "ruby"
  alt_ruby_version = `#{alt_ruby} --version`.chomp[/\d\.\d/, 0] if alt_ruby

  unless alt_ruby && alt_ruby_version.split(".").first.to_i >= 2
    abort "Ruby 2.0 or above is required. You can install it with `brew install ruby`."
  end

  exec alt_ruby, "-W0", "-I#{HOMEBREW_LIBRARY_PATH}", "-rglobal", __FILE__, *ARGV
end

require 'pathname'

$LOAD_PATH.unshift(File.expand_path('../../lib', Pathname.new(__FILE__).realpath))

# todo remove internal Homebrew dependencies and remove this line
require 'vendor/homebrew-fork/global'

require 'hbc'

begin
  Hbc::CLI.process(ARGV)
rescue Interrupt => e
  puts
  exit 130
end
