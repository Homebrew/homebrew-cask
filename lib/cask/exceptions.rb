class CaskError < RuntimeError; end

class CaskNotInstalledError < CaskError
  attr_reader :cask
  def initialize cask
    @cask = cask
  end

  def to_s
    "#{cask} is not installed"
  end
end

class CaskUnavailableError < CaskError
  attr_reader :name
  def initialize name
    @name = name
  end

  def to_s
    "No available cask for #{name}"
  end
end

class CaskAlreadyCreatedError < CaskError
  attr_reader :name
  def initialize name
    @name = name
  end

  def to_s
    "Cask for #{name} already exists. Use `brew cask edit #{name}` to see it."
  end
end

class CaskAlreadyInstalledError < CaskError
  attr_reader :name
  def initialize name
    @name = name
  end

  def to_s
    "Cask for #{name} is already installed. Use `--force` to install anyways."
  end
end

class CaskCommandFailedError < CaskError
  def initialize cmd, output
    @cmd = cmd
    @output = output
  end

  def to_s;
    <<-EOS.undent
      Command failed to execute!

      ==> Failed command:
      #{@cmd}

      ==> Output of failed command:
      #{@output}
    EOS
  end
end

class CaskUnspecifiedError < CaskError
  def to_s
    'This command requires a cask argument'
  end
end
