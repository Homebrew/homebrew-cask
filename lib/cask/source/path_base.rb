class Cask::Source::PathBase

  # derived classes must define method self.me?

  def self.path_for_query(query)
    path_string = "#{query}"
    path_string.concat('.rb') unless path_string.match(%r{\.rb\Z}i)
    Pathname.new(path_string)
  end

  attr_reader :path

  def initialize(path)
    @path = Pathname(path).expand_path
  end

  def load
    raise CaskError.new "File '#{path}' does not exist"      unless path.exist?
    raise CaskError.new "File '#{path}' is not readable"     unless path.readable?
    raise CaskError.new "File '#{path}' is not a plain file" unless path.file?
    begin
      require path
    rescue CaskError, StandardError, ScriptError => e
      # bug: e.message.concat doesn't work with CaskError exceptions
      e.message.concat(" while loading '#{path}'")
      raise e
    end
    begin
      Cask.const_get(cask_class_name).new
    rescue CaskError, StandardError, ScriptError => e
      # bug: e.message.concat doesn't work with CaskError exceptions
      e.message.concat(" while instantiating '#{cask_class_name}' from '#{path}'")
      raise e
    end
  end

  def cask_class_name
    path.basename.to_s.sub(/\.rb/, '').split('-').map(&:capitalize).join
  end

  def to_s
    # stringify to fully-resolved location
    path.to_s
  end
end
