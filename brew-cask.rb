require 'formula'

class BrewCask < Formula
  homepage 'https://github.com/phinze/homebrew-cask/'
  url 'https://github.com/phinze/homebrew-cask.git', :tag => 'v0.14.0'
  version '0.14.0'

  head 'https://github.com/phinze/homebrew-cask.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'lib' => 'rubylib'
    inreplace 'bin/brew-cask.rb', '/lib', '/rubylib'

    prefix.install 'Casks', 'bin'
    (bin+'brew-cask.rb').chmod 0755
  end
end
