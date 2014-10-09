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
    "No available Cask for #{name}"
  end
end

class CaskAlreadyCreatedError < CaskError
  attr_reader :name
  def initialize name
    @name = name
  end

  def to_s
    %Q{A Cask for #{name} already exists. Run "brew cask cat #{name}" to see it.}
  end
end

class CaskAlreadyInstalledError < CaskError
  attr_reader :name
  def initialize name
    @name = name
  end

  def to_s
    %Q{A Cask for #{name} is already installed. Add the "--force" option to force re-install.}
  end
end

class CaskCommandFailedError < CaskError
  def initialize cmd, output, status
    @cmd = cmd
    @output = output
    @status = status
  end

  def to_s;
    <<-EOS
Command failed to execute!

==> Failed command:
#{@cmd}

==> Output of failed command:
#{@output}

==> Exit status of failed command:
#{@status.inspect}
    EOS
  end
end

class CaskUnspecifiedError < CaskError
  def to_s
    "This command requires a Cask name"
  end
end

class CaskInvalidError < CaskError
  attr_reader :name, :submsg
  def initialize(name, *submsg)
    @name = name
    @submsg = submsg.join(' ')
  end

  def to_s
    "Cask '#{name}' definition is invalid" + (submsg.length > 0 ? ": #{submsg}" : '')
  end
end
