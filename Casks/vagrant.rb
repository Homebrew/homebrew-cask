class Vagrant < Cask
  url 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.1.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.6.1'
  sha256 '1e0133f501e6666123388786b28715d9670903a8b51f330b2b3039fb5b2a599e'
  install 'Vagrant.pkg'
  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] }
end
