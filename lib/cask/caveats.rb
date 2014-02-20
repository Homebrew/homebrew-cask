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
  def title
    @cask.title
  end

  def caskroom_path
    @cask.class.caskroom.join(title)
  end

  def destination_path
    caskroom_path.join(@cask.version)
  end

  # DSL. Each method should handle output, following the convention of
  # at least one trailing blank line so that the user can distinguish
  # separate caveats.
  #
  # ( The return value of the last method in the block is also sent
  #   to the output by the caller, but that feature is only for the
  #   convenience of Cask authors. )
  def manual_installer(path)
    puts <<-EOS.undent
    To complete the installation of Cask #{@cask}, you must also
    run the installer at

      '#{destination_path.join(path)}'

    EOS
  end

  def path_environment_variable(path)
    puts <<-EOS.undent
    To use #{@cask}, you may need to add the #{path} directory
    to your PATH environment variable, eg (for bash shell):

      export PATH=#{path}:"$PATH"

    EOS
  end

  def files_in_usr_local
    localpath = '/usr/local'
    if localpath.casecmp(HOMEBREW_PREFIX)
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

  # minor bug: because output from arch_only is conditional, the
  # existence of this directive causes "===> Caveats" header to
  # appear even if no warning is output.  One workaround would
  # be to spin out arch-detection from caveats into a separate
  # Cask stanza, and that is probably a sensible design.
  def arch_only(*supported_arches)
    known_arches = %w{intel-64 intel-32}
    supported_arches.each do |arch|
      unless known_arches.include?(arch)
        # There ought to be some standard exceptions for Cask validation errors
        raise "The only valid arguments to caveats arch_only in #{@cask} are: #{known_arches.join(', ')}"
      end
    end
    this_arch = "#{Hardware::CPU.type}-#{Hardware::CPU.bits}"
    unless supported_arches.include?(this_arch)
      puts <<-EOS.undent
      Cask #{@cask} provides binaries for these architectures: #{supported_arches.join(', ')}.
      But you appear to be running on an unsupported architecture:

        #{this_arch}

      Therefore #{@cask} is not expected to work on your system.

      EOS
    end
  end

  # minor bug: because output from os_version_only is conditional, the
  # existence of this directive causes the "===> Caveats" header to
  # appear even if no warning is output.  One workaround would
  # be to spin out os-version-detection from caveats into a separate
  # Cask stanza, and that is probably a sensible design.
  def os_version_only(*supported_versions)
    known_versions = %w{10.0 10.1 10.2 10.3 10.3 10.5 10.6 10.7 10.8 10.9}
    supported_versions.each do |version|
      unless known_versions.include?(version)
        # There ought to be some standard exceptions for Cask validation errors
        raise "The only valid arguments to caveats os_version_only in #{@cask} are: #{known_versions.join(', ')}"
      end
    end
    unless supported_versions.include?(MACOS_VERSION)
      puts <<-EOS.undent
      Cask #{@cask} provides binaries for these OS versions: #{supported_versions.join(', ')}.
      But you appear to be running on an unsupported version

        #{MACOS_VERSION}

      Therefore #{@cask} is not expected to work on your system.

      EOS
    end
  end

  def method_missing(method, *args)
    poo = <<-EOPOO.undent
      Unexpected method #{method} called on caveats in Cask #{@cask}.

        If you are working on #{@cask}, this may point to a typo. Otherwise
        it probably means this Cask is using a new feature. If that feature
        has been released, running `brew update; brew upgrade brew-cask`
        should fix it. Otherwise you should wait to use #{@cask} until the
        new feature is released.
    EOPOO
    poo.split("\n").each { |line| opoo line }
    return nil
  end
end
