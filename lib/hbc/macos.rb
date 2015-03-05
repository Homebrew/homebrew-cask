# originally from Homebrew

require 'hbc/macos/release'

module Hbc::MacOS
  extend self

  # These Comparable instances can be compared to numerics, strings, or symbols
  def release_with_patchlevel
    @@release_with_patchlevel ||=
      Release.new(ENV.fetch('MACOS_RELEASE_WITH_PATCHLEVEL',
                            `/usr/bin/sw_vers -productVersion 2>/dev/null`.chomp))
  end

  def release
    @@release ||= Release.new(ENV.fetch('MACOS_RELEASE', release_with_patchlevel.to_s[/10\.\d+/]))
  end
end
