class Hbc::Caveats
  def initialize(block)
    @block = block
  end

  def eval_and_print(cask)
    Hbc::CaveatsDSL.new(cask, @block)
  end
end

class Hbc::CaveatsDSL
  # constructor; implicitly renders caveat text by evaluating
  # block in the context of the DSL
  def initialize(cask, block)
    @cask = cask
    retval = instance_eval &block
    unless retval.nil?
      puts retval.to_s.sub(/[\r\n \t]*\Z/, "\n\n")
    end
  end

  # helpers
  def token
    @cask.token
  end

  def version
    @cask.version
  end

  def caskroom_path
    @cask.caskroom_path
  end

  def staged_path
    @cask.staged_path
  end

  # DSL. Each method should handle output, following the convention of
  # at least one trailing blank line so that the user can distinguish
  # separate caveats.
  #
  # ( The return value of the last method in the block is also sent
  #   to the output by the caller, but that feature is only for the
  #   convenience of Cask authors. )

  def path_environment_variable(path)
    puts <<-EOS.undent
    To use #{@cask}, you may need to add the #{path} directory
    to your PATH environment variable, eg (for bash shell):

      export PATH=#{path}:"$PATH"

    EOS
  end

  def zsh_path_helper(path)
    puts <<-EOS.undent
    To use #{@cask}, zsh users may need to add the following line to their
    ~/.zprofile.  (Among other effects, #{path} will be added to the
    PATH environment variable):

      eval `/usr/libexec/path_helper -s`

    EOS
  end

  def files_in_usr_local
    localpath = '/usr/local'
    if Hbc.homebrew_prefix.to_s.downcase.index(localpath) == 0
      puts <<-EOS.undent
      Cask #{@cask} installs files under "#{localpath}".  The presence of such
      files can cause warnings when running "brew doctor", which is considered
      to be a bug in homebrew-cask.

      EOS
    end
  end

  def depends_on_java(java_version = 'any')
    if java_version == 'any'
      puts <<-EOS.undent
      #{@cask} requires Java. You can install the latest version with

        brew cask install java

      EOS
    elsif java_version =~ /8/ || java_version =~ /\+/
      puts <<-EOS.undent
      #{@cask} requires Java #{java_version}. You can install the latest version with

        brew cask install java

      EOS
    else
      puts <<-EOS.undent
      #{@cask} requires Java #{java_version}. You can install it with

        brew cask install caskroom/versions/java#{java_version}

      EOS
    end
  end

  def logout
    puts <<-EOS.undent
    You must log out and log back in for the installation of #{@cask}
    to take effect.

    EOS
  end

  def reboot
    puts <<-EOS.undent
    You must reboot for the installation of #{@cask} to take effect.

    EOS
  end

  def discontinued
    puts <<-EOS.undent
    #{@cask} has been officially discontinued upstream.
    It may stop working correctly (or at all) in recent versions of OS X.

    EOS
  end

  def free_license(web_page)
    puts <<-EOS.undent
    The vendor offers a free license for #{@cask} at
      #{web_page}

    EOS
  end

  def method_missing(method, *args)
    Hbc::Utils.method_missing_message(method, @cask.to_s, 'caveats')
    return nil
  end
end
