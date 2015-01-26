class Hbc::CLI::Repository < Hbc::CLI::Base
  def self.run(*args)
    puts Hbc.tapspath.join Hbc.default_tap
  end

  def self.command_name
    @command_name ||= "--repository"
  end

  def self.help
    "displays where Homebrew-cask's .git directory is located"
  end
end
