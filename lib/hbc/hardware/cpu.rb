# originally from Homebrew

module Hbc::Hardware::CPU
  module_function

  ARCHITECTURES = {
                    ppc:   {
                             32 => :ppc_7400,
                             64 => :ppc_64,
                           },
                    intel: {
                             32 => :i386,
                             64 => :x86_64,
                           },
                  }.freeze

  def bits
    @bits ||= `/usr/sbin/sysctl -n hw.cpu64bit_capable 2>/dev/null`.to_i == 1 ? 64 : 32
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

  # sysctl is described in <mach/machine.h>
  def type
    @type ||= case `/usr/sbin/sysctl -n hw.cputype 2>/dev/null`.to_i
              when 7
                :intel
              when 18
                :ppc
              end
  end

  def arch
    ARCHITECTURES.fetch(type, {}).fetch(bits)
  end

  def cores
    @cores ||= `/usr/sbin/sysctl -n hw.ncpu 2>/dev/null`.to_i
  end
end
