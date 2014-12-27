require 'rubygems'

module OS
  module Mac
    class Version
      include Comparable

      SYMBOLS = {
        :yosemite      => '10.10',
        :mavericks     => '10.9',
        :mountain_lion => '10.8',
        :lion          => '10.7',
        :snow_leopard  => '10.6',
        :leopard       => '10.5',
        :tiger         => '10.4',
      }

      def initialize(release)
        @release = Gem::Version.new(release)
      end

      def <=>(other)
        v = Gem::Version.new(SYMBOLS.fetch(other, other.to_s))
        @release <=> v
      end

      def to_sym
        SYMBOLS.invert.fetch(@release.to_s, nil)
      end

      def to_s
        @release.to_s
      end
    end
  end
end
