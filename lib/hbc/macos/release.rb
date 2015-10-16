# originally from Homebrew

require 'rubygems'

module Hbc::MacOS
  class Release
    include Comparable

    SYMBOLS = {
               :el_capitan    => '10.11',
               :yosemite      => '10.10',
               :mavericks     => '10.9',
               :mountain_lion => '10.8',
               :lion          => '10.7',
               :snow_leopard  => '10.6',
               :leopard       => '10.5',
               :tiger         => '10.4',
               :panther       => '10.3',
               :jaguar        => '10.2',
               :puma          => '10.1',
               :cheetah       => '10.0',
              }

    def initialize(release)
      @release = Gem::Version.new(release)
    end

    def <=>(other)
      v = Gem::Version.new(SYMBOLS.fetch(other, other.to_s))
      @release <=> v
    end

    def to_sym
      @inverted ||= SYMBOLS.invert
      @inverted.fetch(@release.to_s, nil)
    end

    def to_s
      @release.to_s
    end
  end
end
