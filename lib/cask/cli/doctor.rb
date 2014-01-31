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
    puts Cask::VERSION
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
