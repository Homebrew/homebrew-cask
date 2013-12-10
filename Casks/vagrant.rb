class Vagrant < Cask
  url 'https://dl.bintray.com/mitchellh/vagrant/Vagrant-1.4.0.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.4.0'
  sha1 '84b27313b81c827fa9e831b9e4761224ca478451'
  install 'Vagrant.pkg'
  uninstall :script => 'uninstall.tool', :input => %w[Yes]
end
