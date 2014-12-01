class CaskError < RuntimeError; end

class CaskNotInstalledError < CaskError
  attr_reader :token
  def initialize(token)
    @token = token
  end

  def to_s
    "#{token} is not installed"
  end
end

class CaskUnavailableError < CaskError
  attr_reader :token
  def initialize(token)
    @token = token
  end

  def to_s
    "No available Cask for #{token}"
  end
end

class CaskAlreadyCreatedError < CaskError
  attr_reader :token
  def initialize(token)
    @token = token
  end

  def to_s
    %Q{A Cask for #{token} already exists. Run "brew cask cat #{token}" to see it.}
  end
end

class CaskAlreadyInstalledError < CaskError
  attr_reader :token
  def initialize(token)
    @token = token
  end

  def to_s
    %Q{A Cask for #{token} is already installed. Add the "--force" option to force re-install.}
  end
end

class CaskCommandFailedError < CaskError
  def initialize(cmd, output, status)
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
    "This command requires a Cask token"
  end
end

class CaskInvalidError < CaskError
  attr_reader :token, :submsg
  def initialize(token, *submsg)
    @token = token
    @submsg = submsg.join(' ')
  end

  def to_s
    "Cask '#{token}' definition is invalid" + (submsg.length > 0 ? ": #{submsg}" : '')
  end
end
