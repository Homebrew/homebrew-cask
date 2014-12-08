require 'formula'


class BrewCask < Formula
  homepage 'https://github.com/caskroom/homebrew-cask/'
  url 'https://github.com/caskroom/homebrew-cask.git'
  version '0.50.0'

  def install
    opoo <<-EOS.undent
      `brew-cask` has moved to a new install and upgrade mechanism. You no
      longer need to install the formula. Instead once you've tapped this
      repository, you've got the command. And whenever you run `brew update`,
      this command will be updated automatically.

      To make sure that you're up to date, it's recommended to run the below
      command:
        brew update && brew uninstall --force brew-cask && brew tap --repair
    EOS
  end
end
