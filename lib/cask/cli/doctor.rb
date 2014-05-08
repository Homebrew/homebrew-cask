class Cask::CLI::Doctor
  def self.run
    ohai 'OS X Version:'
    puts MACOS_FULL_VERSION
    ohai "Hardware Architecture:", "#{Hardware::CPU.type}-#{Hardware::CPU.bits}"
    ohai 'Ruby Version:'
    puts "#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}"
    ohai 'Ruby Path:'
    puts RUBY_PATH
    ohai 'Homebrew Version:'
    puts HOMEBREW_VERSION
    ohai 'Homebrew Executable Path:'
    puts HOMEBREW_BREW_FILE
    ohai 'Homebrew Cellar Path:'
    puts HOMEBREW_CELLAR
    ohai 'Homebrew-cask Version:'
    puts HOMEBREW_CASK_VERSION

    fq_default_tap = HOMEBREW_REPOSITORY.join 'Library', 'Taps', Cask.default_tap
    alt_taps = Pathname.glob(HOMEBREW_REPOSITORY.join 'Library', 'Taps', '*', '*', 'Casks').map(&:dirname) -
               [fq_default_tap]
    alt_taps = nil unless alt_taps.length > 0
    default_cask_count = begin
                             HOMEBREW_REPOSITORY.join(fq_default_tap, 'Casks').children.count(&:file?)
                         rescue StandardError
                             "0 #{Tty.red}(Error reading #{fq_default_tap})#{Tty.reset}"
                         end
    ohai 'Homebrew-cask Default Tap Path:'
    puts fq_default_tap
    ohai 'Homebrew-cask Alternate Cask Taps:'
    puts alt_taps
    ohai 'Homebrew-cask Default Tap Cask Count:'
    puts default_cask_count

    ohai 'Contents of $LOAD_PATH:'
    puts $LOAD_PATH
    ohai 'Contents of $RUBYLIB Environment Variable:'
    puts ENV['RUBYLIB']
    ohai 'Contents of $RUBYOPT Environment Variable:'
    puts ENV['RUBYOPT']
    ohai 'Contents of $RUBYPATH Environment Variable:'
    puts ENV['RUBYPATH']
    ohai 'Contents of $RBENV_VERSION Environment Variable:'
    puts ENV['RBENV_VERSION']
    ohai 'Contents of $GEM_HOME Environment Variable:'
    puts ENV['GEM_HOME']
    ohai 'Contents of $GEM_PATH Environment Variable:'
    puts ENV['GEM_PATH']
    ohai 'Contents of $BUNDLE_PATH Environment Variable:'
    puts ENV['BUNDLE_PATH']
    ohai 'Running As Privileged User:'
    puts Process.euid == 0 ? "Yes #{Tty.red}(warning: not recommended)#{Tty.reset}" : 'No'
  end

  def self.help
    "checks for configuration issues"
  end
end
