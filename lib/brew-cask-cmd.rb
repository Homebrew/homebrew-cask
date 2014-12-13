#!/System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/bin/ruby -W0 -EUTF-8:UTF-8
# encoding: UTF-8

require 'pathname'

# todo remove internal Homebrew dependencies and remove this line
$LOAD_PATH.unshift(File.expand_path('../homebrew-fork/Library/Homebrew', Pathname.new(__FILE__).realpath))
$LOAD_PATH.unshift(File.expand_path('..', Pathname.new(__FILE__).realpath))

# todo remove internal Homebrew dependencies and remove this line
require 'global'

require 'cask'

Cask::CLI.process(ARGV)
exit 0
