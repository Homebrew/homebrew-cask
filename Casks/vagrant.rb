class Vagrant < Cask
  url 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.5.2.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.5.2'
  sha256 '9a59ece80480a21dd47c0e2c4f5fdd796190120f964f7154f6b29f627c45809d'
  install 'Vagrant.pkg'
  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] }
end
