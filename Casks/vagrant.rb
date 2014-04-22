class Vagrant < Cask
  url 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.5.4.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.5.4'
  sha256 'c8ded45183a03a8bfabe67ee82886ecfdafeb24030df9e631717ae1209475ba8'
  install 'Vagrant.pkg'
  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] }
end
