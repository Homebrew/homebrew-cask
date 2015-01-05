class Hbc::CLI::Prefix < Hbc::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    if cask_tokens.empty?
      puts install_prefix
    else
      cask_tokens.each { |cask_token| puts cask_prefix(cask_token) }
    end
  end

  def self.install_prefix
    @install_prefix ||= Pathname.new(HOMEBREW_PREFIX).join('opt', 'brew-cask')
  end

  def self.cask_prefix(cask_token)
    cask = Hbc.load(cask_token)
    raise Hbc::CaskNotInstalledError.new(cask) unless cask.installed?
    cask.staged_path
  end

  def self.command_name
    @command_name ||= '--prefix'
  end

  def self.help
    "with no args, displays Homebrew-cask's install path; given installed #{
    }Casks, lists the locations in the Caskroom where the Casks are installed"
  end
end
