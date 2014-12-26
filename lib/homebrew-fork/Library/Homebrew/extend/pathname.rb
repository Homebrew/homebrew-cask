require 'pathname'

class Pathname

  def version
    require 'version'
    Version.parse(self)
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
