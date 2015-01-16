class Hbc::CLI::Update < Hbc::CLI::Base
  def self.run(*_ignored)
    result = Hbc::SystemCommand.run(Hbc.homebrew_executable,
                                    :args => %w{update})
    # todo: separating stderr/stdout is undesirable here.
    # Hbc::SystemCommand should have an option for plain
    # unbuffered output.
            print result.stdout
    $stderr.print result.stderr
    exit result.exit_status
  end

  def self.help
    "a synonym for 'brew update'"
  end
end
