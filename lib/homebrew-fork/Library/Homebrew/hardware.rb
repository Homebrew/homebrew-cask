class Hardware
  module CPU extend self
    INTEL_32BIT_ARCHS = [:i386].freeze
    INTEL_64BIT_ARCHS = [:x86_64].freeze
    PPC_32BIT_ARCHS   = [:ppc, :ppc7400, :ppc7450, :ppc970].freeze
    PPC_64BIT_ARCHS   = [:ppc64].freeze

    def type
      @type || :dunno
    end

    def family
      @family || :dunno
    end

    def cores
      @cores || 1
    end

    def bits
      @bits || 64
    end

    def is_32_bit?
      bits == 32
    end

    def is_64_bit?
      bits == 64
    end

    def intel?
      type == :intel
    end

    def ppc?
      type == :ppc
    end
  end

  require 'os/mac/hardware'
  CPU.extend MacCPUs
end
