class CaskUnavailableError < RuntimeError
  attr_reader :name
  def initialize name
    @name = name
  end

  def to_s
    "No available cask for #{name}"
  end
end
