require 'hardware'
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

    def prefer_64_bit?
      Hardware::CPU.is_64_bit? and version > :leopard
    end
  end
end
