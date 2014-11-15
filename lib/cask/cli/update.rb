class Cask::CLI::Update < Cask::CLI::Base
  def self.run(*_ignored)
    ARGV.clear
    require HOMEBREW_REPOSITORY.join("Library/Homebrew/cmd/update")
    Homebrew::update
  end

  def self.help
    "a synonym for 'brew update'"
  end
end
