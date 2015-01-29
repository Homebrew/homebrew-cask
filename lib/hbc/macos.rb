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

  def coerce_os_release(arg)

    @osx_symbols ||= Release::SYMBOLS
    @inverted_osx_symbols ||= @osx_symbols.invert

    begin
      if arg.is_a?(Symbol)
        Gem::Version.new(@osx_symbols.fetch(arg))
      elsif arg =~ %r{^\s*:?([a-z]\S+)\s*$}i
        Gem::Version.new(@osx_symbols.fetch($1.downcase.to_sym))
      elsif @inverted_osx_symbols.has_key?(arg)
        Gem::Version.new(arg)
      else
        raise
      end
    rescue StandardError
      raise "invalid MacOS value: #{arg.inspect}"
    end
  end
end
