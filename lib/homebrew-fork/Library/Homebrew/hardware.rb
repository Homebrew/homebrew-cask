module Hardware
  module CPU
    extend self

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

    # sysctl is described in <mach/machine.h>
    def type
      @type ||= `/usr/sbin/sysctl -n hw.cputype 2>/dev/null`.to_i
      case @type
      when 7
        :intel
      when 18
        :ppc
      end
    end

    def cores
      @cores ||= `/usr/sbin/sysctl -n hw.ncpu 2>/dev/null`.to_i
    end

    def bits
      @bits ||= sysctl_bool("hw.cpu64bit_capable") ? 64 : 32
    end

    def aes?
      sysctl_bool('hw.optional.aes')
    end

    def altivec?
      sysctl_bool('hw.optional.altivec')
    end

    def avx?
      sysctl_bool('hw.optional.avx1_0')
    end

    def avx2?
      sysctl_bool('hw.optional.avx2_0')
    end

    def sse3?
      sysctl_bool('hw.optional.sse3')
    end

    def ssse3?
      sysctl_bool('hw.optional.supplementalsse3')
    end

    def sse4?
      sysctl_bool('hw.optional.sse4_1')
    end

    def sse4_2?
      sysctl_bool('hw.optional.sse4_2')
    end

    protected

    def sysctl_bool(property)
      (@properties ||= {}).fetch(property) do
        result = Utils.popen_read("/usr/sbin/sysctl", "-n", property, &:gets).to_i
        # sysctl call succeded and printed 1
        @properties[property] = $?.success? && result == 1
      end
    end
  end
end
