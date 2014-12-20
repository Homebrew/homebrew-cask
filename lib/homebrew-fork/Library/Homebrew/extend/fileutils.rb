require 'fileutils'

# We enhance FileUtils to make our Formula code more readable.
module FileUtils

  # Create a temporary directory then yield. When the block returns,
  # recursively delete the temporary directory.
  def mktemp(prefix=name)
    # I used /tmp rather than `mktemp -td` because that generates a directory
    # name with exotic characters like + in it, and these break badly written
    # scripts that don't escape strings before trying to regexp them :(

    # If the user has FileVault enabled, then we can't mv symlinks from the
    # /tmp volume to the other volume. So we let the user override the tmp
    # prefix if they need to.

    tempd = with_system_path { `mktemp -d #{HOMEBREW_TEMP}/#{prefix}-XXXXXX` }.chuzzle
    raise "Failed to create sandbox" if tempd.nil?
    prevd = pwd
    cd tempd
    yield
  ensure
    cd prevd if prevd
    ignore_interrupts{ rm_r tempd } if tempd
  end
  module_function :mktemp

  # A version of mkdir that also changes to that folder in a block.
  alias_method :old_mkdir, :mkdir
  def mkdir name, &block
    old_mkdir(name)
    if block_given?
      chdir name do
        yield
      end
    end
  end
  module_function :mkdir
end
