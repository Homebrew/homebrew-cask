# originally from Homebrew

module Hbc::Hardware::CPU
  extend self

  def is_32_bit?
    !is_64_bit?
  end

  def is_64_bit?
    @capable ||= `/usr/sbin/sysctl -n hw.cpu64bit_capable 2>/dev/null`.to_i
    @capable == 1
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
    @bits ||= is_64_bit? ? 64 : 32
  end
end
