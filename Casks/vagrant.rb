cask :v1 => 'vagrant' do
  version '1.7.1'
  sha256 'eaeb3ad6624ccaeaefa6fc7a77a2f5d9640ef9385c5eeebdb90602d5f2011176'

  url "https://dl.bintray.com/mitchellh/vagrant/vagrant_#{version}.dmg"
  homepage 'http://www.vagrantup.com'
  license :mit

  pkg 'Vagrant.pkg'

  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] },
            :pkgutil => 'com.vagrant.vagrant'

  caveats "To install bash completion for vagrant run: brew install homebrew/completions/vagrant-completion"

end
