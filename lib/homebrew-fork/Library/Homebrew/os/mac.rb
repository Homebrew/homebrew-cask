require 'os/mac/version'

module OS
  module Mac
    extend self

    ::MacOS = self # compatibility

    # This can be compared to numerics, strings, or symbols
    # using the standard Ruby Comparable methods.
    def release
      @release ||= Version.new(MACOS_RELEASE)
    end
  end
end
