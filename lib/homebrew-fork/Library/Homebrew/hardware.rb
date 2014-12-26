class Hardware
  module CPU extend self
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
