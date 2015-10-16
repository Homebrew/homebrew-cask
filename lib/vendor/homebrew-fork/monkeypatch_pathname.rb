require 'pathname'

class Pathname

  # FIXME eliminate the places where we rely on this method
  alias_method :to_str, :to_s unless method_defined?(:to_str)
end
