class Cask::CLI::Update < Cask::CLI::Base
  def self.run(*_ignored)
    result = Cask::SystemCommand.run(HOMEBREW_BREW_FILE,
                                     :args => %w{update})
    # todo: separating stderr/stdout is undesirable here.
    # Cask::SystemCommand should have an option for plain
    # unbuffered output.
            print result.stdout
    $stderr.print result.stderr
    exit result.exit_status
  end

  def self.help
    "a synonym for 'brew update'"
  end
end
