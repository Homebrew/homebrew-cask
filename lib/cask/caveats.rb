class Cask::Caveats
  def initialize(block)
    @block = block
  end

  def eval_and_print(cask)
    Cask::CaveatsDSL.new(cask, @block)
  end
end

class Cask::CaveatsDSL
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

  # todo removeme transitional backward compatibility
  def title
    @cask.token
  end

  def version
    @cask.version
  end

  def caskroom_path
    @cask.class.caskroom.join(token)
  end

  def staged_path
    caskroom_path.join(@cask.version.to_s)
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
    if HOMEBREW_PREFIX.to_s.downcase.index(localpath) == 0
      puts <<-EOS.undent
      Cask #{@cask} installs files under "#{localpath}".  The presence of such
      files can cause warnings when running "brew doctor", which is considered
      to be a bug in homebrew-cask.

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

  def assistive_devices
    puts <<-EOS.undent
    To use #{@cask}, you may need to give it access to assistive
    devices (Accessibility).  For OS X Mavericks:

      System Preferences / Security & Privacy / Privacy / Accessibility

    EOS
  end

  # minor bug: because output from arch_only is conditional, the
  # existence of this directive causes "===> Caveats" header to
  # appear even if no warning is output.  One workaround would
  # be to spin out arch-detection from caveats into a separate
  # Cask stanza, and that is probably a sensible design.
  def arch_only(*supported_arches)
    known_arches = %w{intel-64 intel-32}
    supported_arches.each do |arch|
      unless known_arches.include?(arch)
        raise CaskInvalidError.new(@cask, "The only valid arguments to caveats arch_only are: #{known_arches.utf8_inspect}")
      end
    end
    this_arch = "#{Hardware::CPU.type}-#{Hardware::CPU.bits}"
    unless supported_arches.include?(this_arch)
      puts <<-EOS.undent
      Cask #{@cask} provides binaries for these architectures: #{supported_arches.utf8_inspect}.
      But you appear to be running on an unsupported architecture:

        #{this_arch}

      Therefore #{@cask} is not expected to work on your system.

      EOS
    end
  end

  def x11_required
    unless File.exist?('/usr/X11/bin/X')
      puts <<-EOS.undent
      #{@cask} requires XQuartz/X11, which can be installed via homebrew-cask by
          brew cask install xquartz
      or manually, by downloading the package from
          http://xquartz.macosforge.org
      EOS
    end
  end

  def method_missing(method, *args)
    Cask::Utils.method_missing_message(method, @cask.to_s, 'caveats')
    return nil
  end
end
