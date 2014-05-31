class Cask::CLI::Doctor
  def self.run
    notfound_msg       = "#{Tty.red}Not Found - Unknown Error#{Tty.reset}"
    fq_default_tap     = notfound_msg
    alt_taps           = notfound_msg
    default_cask_count = notfound_msg
    privileged_uid     = notfound_msg
    homebrew_origin    = notfound_msg

    begin
      privileged_uid = Process.euid == 0 ? "Yes #{Tty.red}(warning: not recommended)#{Tty.reset}" : 'No'
    rescue StandardError; end

    begin
      fq_default_tap = HOMEBREW_REPOSITORY.join 'Library', 'Taps', Cask.default_tap
    rescue StandardError; end

    begin
      alt_taps = Pathname.glob(HOMEBREW_REPOSITORY.join 'Library', 'Taps', '*', '*', 'Casks').map(&:dirname) -
                 [fq_default_tap]
      alt_taps = nil unless alt_taps.length > 0
    rescue StandardError; end

    begin
      default_cask_count = HOMEBREW_REPOSITORY.join(fq_default_tap, 'Casks').children.count(&:file?)
    rescue StandardError
      default_cask_count = "0 #{Tty.red}(Error reading #{fq_default_tap})#{Tty.reset}"
    end

    begin
      HOMEBREW_REPOSITORY.cd do
        homebrew_origin = Cask::SystemCommand.run('git',
                                                  :args => %w{config --get remote.origin.url},
                                                  :stderr => :silence).strip
      end
      if homebrew_origin !~ %r{\S}
        homebrew_origin = "<NONE> #{Tty.red}(Error)#{Tty.reset}"
      elsif homebrew_origin !~ %r{(mxcl|Homebrew)/homebrew(\.git)?\Z}
        homebrew_origin.concat " #{Tty.red}(warning: nonstandard origin)#{Tty.reset}"
      end
    rescue StandardError
      homebrew_origin = "#{Tty.red}Not Found - Error running git#{Tty.reset}"
    end

    ohai 'OS X Version:',                                    MACOS_FULL_VERSION
    ohai "Hardware Architecture:",                           "#{Hardware::CPU.type}-#{Hardware::CPU.bits}"
    ohai 'Ruby Version:',                                    "#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}"
    ohai 'Ruby Path:',                                       RUBY_PATH
    ohai 'Homebrew Version:',                                HOMEBREW_VERSION
    ohai 'Homebrew Executable Path:',                        HOMEBREW_BREW_FILE
    ohai 'Homebrew Cellar Path:',                            HOMEBREW_CELLAR
    ohai 'Homebrew Repository Path:',                        HOMEBREW_REPOSITORY
    ohai 'Homebrew Origin:',                                 homebrew_origin
    ohai 'Homebrew-cask Version:',                           HOMEBREW_CASK_VERSION
    ohai 'Homebrew-cask Default Tap Path:',                  fq_default_tap
    ohai 'Homebrew-cask Alternate Cask Taps:',               alt_taps
    ohai 'Homebrew-cask Default Tap Cask Count:',            default_cask_count
    ohai 'Contents of $LOAD_PATH:',                          $LOAD_PATH
    ohai 'Contents of $RUBYLIB Environment Variable:',       ENV['RUBYLIB']
    ohai 'Contents of $RUBYOPT Environment Variable:',       ENV['RUBYOPT']
    ohai 'Contents of $RUBYPATH Environment Variable:',      ENV['RUBYPATH']
    ohai 'Contents of $RBENV_VERSION Environment Variable:', ENV['RBENV_VERSION']
    ohai 'Contents of $GEM_HOME Environment Variable:',      ENV['GEM_HOME']
    ohai 'Contents of $GEM_PATH Environment Variable:',      ENV['GEM_PATH']
    ohai 'Contents of $BUNDLE_PATH Environment Variable:',   ENV['BUNDLE_PATH']
    ohai 'Running As Privileged User:',                      privileged_uid
  end

  def self.help
    "checks for configuration issues"
  end
end
