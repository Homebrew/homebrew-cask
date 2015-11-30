class Hbc::CLI::Alfred < Hbc::CLI::Base
  def self.run(*args)
    ohai "Great news!"
    ohai "As of v2.6, Alfred now has first-class support for Casks out of the box!"
    ohai "So there's no more need for `brew cask alfred`. Go upgrade your Alfred! :)"
  end

  def self.help
    "displays note about new built-in alfred support"
  end
end
