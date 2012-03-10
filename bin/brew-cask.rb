# this file expects to be required from within homebrew's ruby environment

$LOAD_PATH << File.expand_path('../../lib', Pathname.new(__FILE__).realpath)
require 'cask'

Cask::CLI.process(ARGV)
