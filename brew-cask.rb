require 'pathname'
require 'formula'

class BrewCask < Formula; end
require Pathname(__FILE__).realpath.dirname.join('lib', 'cask', 'version')

class BrewCask < Formula

  include BrewCask::Version

  homepage 'https://github.com/phinze/homebrew-cask/'
  url 'https://github.com/phinze/homebrew-cask.git', :tag => "v#{BrewCask::VERSION}"

  head 'https://github.com/phinze/homebrew-cask.git', :branch => 'master'

  skip_clean 'bin'

  def install
    # man1.install 'doc/man/brew-cask.1'
    prefix.install 'lib' => 'rubylib'
    inreplace 'bin/brew-cask.rb', '/lib', '/rubylib'

    prefix.install 'Casks', 'bin'
    (bin+'brew-cask.rb').chmod 0755
  end
end
