class Cask::CLI::Doctor
  def self.run(*_ignored)
    ohai "Ruby Version:"
    puts "#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}"
    ohai "Contents of $LOAD_PATH:"
    puts $LOAD_PATH
    ohai "Running As Privileged User:"
    puts  Process.euid == 0 ? 'Yes' : 'No'
  end

  def self.help
    "checks for configuration issues"
  end
end
