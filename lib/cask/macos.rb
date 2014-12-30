# originally from Homebrew

require 'cask/macos/release'

module Cask::MacOS
  extend self

  # This Comparable instance can be compared to numerics, strings, or symbols
  def release
    @@release ||= Release.new(MACOS_RELEASE)
  end
end
