require 'pathname'
require 'resource'

# we enhance pathname to make our code more readable
class Pathname

  # we assume this pathname object is a file obviously
  alias_method :old_write, :write if method_defined?(:write)
  def write(content, *open_args)
    raise "Will not overwrite #{to_s}" if exist?
    dirname.mkpath
    open("w", *open_args) { |f| f.write(content) }
  end

  # extended to support common double extensions
  alias extname_old extname
  def extname(path=to_s)
    /(\.(tar|cpio|pax)\.(gz|bz2|lz|xz|Z))$/.match(path)
    return $1 if $1
    return File.extname(path)
  end

  # for filetypes we support, basename without extension
  def stem
    File.basename((path = to_s), extname(path))
  end

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

  def chmod_R perms
    opoo "Pathname#chmod_R is deprecated, use FileUtils.chmod_R"
    require 'fileutils'
    FileUtils.chmod_R perms, to_s
  end

  def version
    require 'version'
    Version.parse(self)
  end

  def text_executable?
    %r[^#!\s*\S+] === open('r') { |f| f.read(1024) }
  end

  def incremental_hash(klass)
    digest = klass.new
    if digest.respond_to?(:file)
      digest.file(self)
    else
      buf = ""
      open("rb") { |f| digest << buf while f.read(1024, buf) }
    end
    digest.hexdigest
  end

  def sha256
    require 'digest/sha2'
    incremental_hash(Digest::SHA2)
  end

  def verify_checksum expected
    raise ChecksumMissingError if expected.nil? or expected.empty?
    actual = Checksum.new(expected.hash_type, send(expected.hash_type).downcase)
    raise ChecksumMismatchError.new(self, expected, actual) unless expected == actual
  end

  # FIXME eliminate the places where we rely on this method
  alias_method :to_str, :to_s unless method_defined?(:to_str)

  def cd
    Dir.chdir(self){ yield }
  end

  def subdirs
    children.select{ |child| child.directory? }
  end

  def resolved_path
    self.symlink? ? dirname+readlink : self
  end

  def resolved_path_exists?
    link = readlink
  rescue ArgumentError
    # The link target contains NUL bytes
    false
  else
    (dirname+link).exist?
  end

  def /(other)
    unless other.respond_to?(:to_str) || other.respond_to?(:to_path)
      opoo "Pathname#/ called on #{inspect} with #{other.inspect} as an argument"
      puts "This behavior is deprecated, please pass either a String or a Pathname"
    end
    self + other.to_s
  end unless method_defined?(:/)

  def ensure_writable
    saved_perms = nil
    unless writable_real?
      saved_perms = stat.mode
      chmod 0644
    end
    yield
  ensure
    chmod saved_perms if saved_perms
  end

 if RUBY_VERSION == "2.0.0"
    # https://bugs.ruby-lang.org/issues/9915
    prepend Module.new {
      def inspect
        super.force_encoding(@path.encoding)
      end
    }
  end
end
