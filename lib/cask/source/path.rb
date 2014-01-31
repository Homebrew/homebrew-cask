class Cask::Source::Path
  def self.me?(query)
    File.file?(query)
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

