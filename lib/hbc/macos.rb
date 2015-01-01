# originally from Homebrew

require 'hbc/macos/release'

module Hbc::MacOS
  extend self

  # This Comparable instance can be compared to numerics, strings, or symbols
  def release
    @@release ||= Release.new(MACOS_RELEASE)
  end
end
