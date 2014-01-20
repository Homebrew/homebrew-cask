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
    puts retval unless retval.nil?
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

  # DSL. Each method should handle output. (The return value
  # of the last method is also output by the caller, but that
  # feature is only for the convenience of Cask authors.)
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
