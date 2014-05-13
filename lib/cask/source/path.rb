class Cask::Source::Path
  def self.me?(query)
    query_with_ext = "#{query}"
    query_with_ext.concat('.rb') unless query_with_ext.match(%r{\.rb\Z}i)
    # bug? arguably, we should not pick up a relative path
    # containing a Cask file so easily, since this source
    # is tested before the default Tap.  Perhaps there
    # should be two Path sources, absolute and relative.
    File.file?(query_with_ext)
  end

  attr_reader :path

  def initialize(path)
    @path = Pathname(path).expand_path
  end

  def load
    require path
    Cask.const_get(cask_class_name).new
  end

  def cask_class_name
    path.basename.to_s.sub(/\.rb/, '').split('-').map(&:capitalize).join
  end
end
