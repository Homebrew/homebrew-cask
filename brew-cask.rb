require 'formula'

class BrewCask < Formula
  homepage 'https://github.com/ryanaghdam/homebrew-cask/'
  url 'https://github.com/ryanaghdam/homebrew-cask.git'
  version 'master'

  skip_clean 'bin'

  def install
    prefix.install_p 'lib', 'rubylib'
    inreplace 'bin/brew-cask.rb', '/lib', '/rubylib'

    prefix.install 'Casks', 'bin'
    (bin+'brew-cask.rb').chmod 0755
  end
end
