module FileHelper
  class << self
    def local_binary_path(name)
      File.expand_path(File.join(File.dirname(__FILE__), 'binaries', name))
    end

    def local_binary_url(name)
      'file://' + local_binary_path(name)
    end

    def valid_alias?(candidate)
      return false unless candidate.symlink?
      candidate.readlink.exist?
    end
  end
end
