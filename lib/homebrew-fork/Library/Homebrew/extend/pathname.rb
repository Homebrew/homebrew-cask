require 'pathname'

class Pathname
  # I don't trust the children.length == 0 check particularly, not to mention
  # it is slow to enumerate the whole directory just to see if it is empty,
  # instead rely on good ol' libc and the filesystem
  def rmdir_if_possible
    rmdir
    true
  rescue Errno::ENOTEMPTY
    if (ds_store = self+'.DS_Store').exist? && children.length == 1
      ds_store.unlink
      retry
    else
      false
    end
  rescue Errno::EACCES, Errno::ENOENT
    false
  end

  # FIXME eliminate the places where we rely on this method
  alias_method :to_str, :to_s unless method_defined?(:to_str)

  def /(other)
    unless other.respond_to?(:to_str) || other.respond_to?(:to_path)
      opoo "Pathname#/ called on #{inspect} with #{other.inspect} as an argument"
      puts "This behavior is deprecated, please pass either a String or a Pathname"
    end
    self + other.to_s
  end unless method_defined?(:/)
end
