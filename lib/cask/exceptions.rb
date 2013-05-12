class CaskNotInstalledError < RuntimeError
  attr_reader :cask
  def initialize cask
    @cask = cask
  end

  def to_s
    "#{cask} is not installed"
  end
end

class CaskUnavailableError < RuntimeError
  attr_reader :name
  def initialize name
    @name = name
  end

  def to_s
    "No available cask for #{name}"
  end
end

class CaskAlreadyCreatedError < RuntimeError
  attr_reader :name
  def initialize name
    @name = name
  end

  def to_s
    "Cask for #{name} already exists. Use `brew cask edit #{name}` to see it."
  end
end
