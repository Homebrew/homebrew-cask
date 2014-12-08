# this file expects to be required from within Homebrew's Ruby environment

# Force UTF-8 encodings.
# * This is not very nice, but we have no control over how Homebrew was
#   invoked, nor with which Ruby interpreter.
# * The correct way would be to invoke Ruby with "ruby -EUTF-8:UTF-8".
# * The Homebrew project prefers to have heterogeneous encodings among
#   its string values.
# * This logic may conceivably cause problems with code that calls back
#   into Homebrew, such as implicit Tapping and Formula dependencies.
# * ARGV may not be the only special variable which needs treatment here.
if defined?(Encoding)
  # simulate "ruby -EUTF-8:UTF-8", but safe for Ruby 1.8,
  # as this block will not be entered.
  Encoding.default_internal = Encoding::UTF_8
  Encoding.default_external = Encoding::UTF_8
  # encode ARGV
  utf8_argv = ARGV.map do |arg|
    if arg.encoding == Encoding::UTF_8      or
       arg.encoding == Encoding::US_ASCII   or # these two may happen
       arg.encoding == Encoding::ASCII_8BIT    # when LANG is unset
      arg.dup.force_encoding('UTF-8')
    else
      arg.dup.encode('UTF-8')
    end
  end
  ARGV.clear
  ARGV.push *utf8_argv
  # encode Homebrew objects which we use within Homebrew-cask
  HOMEBREW_BREW_FILE   = HOMEBREW_BREW_FILE.dup.force_encoding('UTF-8')
  HOMEBREW_VERSION     = HOMEBREW_VERSION.dup.force_encoding('UTF-8')
  HOMEBREW_CACHE       = Pathname.new(HOMEBREW_CACHE.to_s.force_encoding('UTF-8'))
  HOMEBREW_CELLAR      = Pathname.new(HOMEBREW_CELLAR.to_s.force_encoding('UTF-8'))
  HOMEBREW_LIBRARY     = Pathname.new(HOMEBREW_LIBRARY.to_s.force_encoding('UTF-8'))
  HOMEBREW_PREFIX      = Pathname.new(HOMEBREW_PREFIX.to_s.force_encoding('UTF-8'))
  HOMEBREW_REPOSITORY  = Pathname.new(HOMEBREW_REPOSITORY.to_s.force_encoding('UTF-8'))
end

$LOAD_PATH.unshift(File.expand_path('../../lib', Pathname.new(__FILE__).realpath))
require 'cask'

Cask::CLI.process(ARGV)
exit 0
