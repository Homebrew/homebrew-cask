class Hbc::CaskError < RuntimeError; end

class Hbc::CaskNotInstalledError < Hbc::CaskError
  attr_reader :token
  def initialize(token)
    @token = token
  end

  def to_s
    "#{token} is not installed"
  end
end

class Hbc::CaskUnavailableError < Hbc::CaskError
  attr_reader :token
  def initialize(token)
    @token = token
  end

  def to_s
    "No available Cask for #{token}"
  end
end

class Hbc::CaskAlreadyCreatedError < Hbc::CaskError
  attr_reader :token
  def initialize(token)
    @token = token
  end

  def to_s
    %Q{A Cask for #{token} already exists. Run "brew cask cat #{token}" to see it.}
  end
end

class Hbc::CaskAlreadyInstalledError < Hbc::CaskError
  attr_reader :token
  def initialize(token)
    @token = token
  end

  def to_s
    %Q{A Cask for #{token} is already installed. Add the "--force" option to force re-install.}
  end
end

class Hbc::CaskAutoUpdatesError < Hbc::CaskError
  attr_reader :token
  def initialize(token)
    @token = token
  end

  def to_s
    %Q{A Cask for #{token} is already installed and using auto-updates. Add the "--force" option to force re-install.}
  end
end

class Hbc::CaskCommandFailedError < Hbc::CaskError
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

class Hbc::CaskX11DependencyError < Hbc::CaskError
  attr_reader :token
  def initialize(token)
    @token = token
  end

  def to_s
    <<-EOS.undent
      #{token} requires XQuartz/X11, which can be installed via homebrew-cask by

        brew cask install xquartz

      or manually, by downloading the package from

        http://xquartz.macosforge.org
    EOS
  end
end

class Hbc::CaskCyclicCaskDependencyError < Hbc::CaskError
  attr_reader :token
  def initialize(token)
    @token = token
  end

  def to_s
    "Cask '#{token}' includes cyclic dependencies on other Casks and could not be installed."
  end
end

class Hbc::CaskUnspecifiedError < Hbc::CaskError
  def to_s
    "This command requires a Cask token"
  end
end

class Hbc::CaskInvalidError < Hbc::CaskError
  attr_reader :token, :submsg
  def initialize(token, *submsg)
    @token = token
    @submsg = submsg.join(' ')
  end

  def to_s
    "Cask '#{token}' definition is invalid" + (submsg.length > 0 ? ": #{submsg}" : '')
  end
end

class Hbc::CaskTokenDoesNotMatchError < Hbc::CaskInvalidError
  def initialize(token, header_token)
    super(token, "Bad header line: '#{header_token}' does not match file name")
  end
end

class Hbc::CaskSha256MissingError < ArgumentError
end

class Hbc::CaskSha256MismatchError < RuntimeError
  attr_reader :path, :expected, :actual
  def initialize(path, expected, actual)
    @path = path
    @expected = expected
    @actual = actual
  end

  def to_s
    <<-EOS.undent
      sha256 mismatch
      Expected: #{expected}
      Actual: #{actual}
      File: #{path}
      To retry an incomplete download, remove the file above.
      EOS
  end
end
