require 'fileutils'

# We enhance FileUtils to make our Formula code more readable.
module FileUtils

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
