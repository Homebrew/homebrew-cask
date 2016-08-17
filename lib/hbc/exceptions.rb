class Hbc::CaskError < RuntimeError; end

class Hbc::AbstractCaskErrorWithToken < Hbc::CaskError
  attr_reader :token

  def initialize(token)
    @token = token
  end
end

class Hbc::CaskNotInstalledError < Hbc::AbstractCaskErrorWithToken
  def to_s
    "#{token} is not installed"
  end
end

class Hbc::CaskUnavailableError < Hbc::AbstractCaskErrorWithToken
  def to_s
    "No available Cask for #{token}"
  end
end

class Hbc::CaskAlreadyCreatedError < Hbc::AbstractCaskErrorWithToken
  def to_s
    %Q{A Cask for #{token} already exists. Run "brew cask cat #{token}" to see it.}
  end
end

class Hbc::CaskAlreadyInstalledError < Hbc::AbstractCaskErrorWithToken
  def to_s
    %Q{A Cask for #{token} is already installed. Add the "--force" option to force re-install.}
  end
end

class Hbc::CaskAutoUpdatesError < Hbc::AbstractCaskErrorWithToken
  def to_s
    %Q{A Cask for #{token} is already installed and using auto-updates. Add the "--force" option to force re-install.}
  end
end

class Hbc::CaskCommandFailedError < Hbc::CaskError
  def initialize(cmd, stdout, stderr, status)
    @cmd = cmd
    @stdout = stdout
    @stderr = stderr
    @status = status
  end

  def to_s
    <<-EOS
Command failed to execute!

==> Failed command:
#{@cmd}

==> Standard Output of failed command:
#{@stdout}

==> Standard Error of failed command:
#{@stderr}

==> Exit status of failed command:
#{@status.inspect}
    EOS
  end
end

class Hbc::CaskX11DependencyError < Hbc::AbstractCaskErrorWithToken
  def to_s
    <<-EOS.undent
      #{token} requires XQuartz/X11, which can be installed via homebrew-cask by

        brew cask install xquartz

      or manually, by downloading the package from

        https://www.xquartz.org/
    EOS
  end
end

class Hbc::CaskCyclicCaskDependencyError < Hbc::AbstractCaskErrorWithToken
  def to_s
    "Cask '#{token}' includes cyclic dependencies on other Casks and could not be installed."
  end
end

class Hbc::CaskUnspecifiedError < Hbc::CaskError
  def to_s
    "This command requires a Cask token"
  end
end

class Hbc::CaskInvalidError < Hbc::AbstractCaskErrorWithToken
  attr_reader :submsg
  def initialize(token, *submsg)
    super(token)
    @submsg = submsg.join(" ")
  end

  def to_s
    "Cask '#{token}' definition is invalid" + (!submsg.empty? ? ": #{submsg}" : "")
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

class Hbc::CaskNoShasumError < Hbc::CaskError
  attr_reader :token
  def initialize(token)
    @token = token
  end

  def to_s
    <<-EOS.undent
      Cask '#{token}' does not have a sha256 checksum defined and was not installed.
      This means you have the "--require-sha" option set, perhaps in your HOMEBREW_CASK_OPTS.
    EOS
  end
end
