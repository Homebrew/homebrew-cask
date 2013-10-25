require 'formula'

HOMEBREW_CASK_VERSION = '0.19.3'

class BrewCask < Formula
  homepage 'https://github.com/phinze/homebrew-cask/'
  url 'https://github.com/phinze/homebrew-cask.git', :tag => "v#{HOMEBREW_CASK_VERSION}"

  head 'https://github.com/phinze/homebrew-cask.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'lib' => 'rubylib'
    inreplace 'bin/brew-cask.rb', '/lib', '/rubylib'

    prefix.install 'Casks', 'bin'
    (bin+'brew-cask.rb').chmod 0755
  end
end
