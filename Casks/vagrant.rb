class Vagrant < Cask
  url 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.5.1.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.5.1'
  sha256 '3b22ee8907cce1ab3aa593b6ee75ed4453dda2be5784660ad116c16e03475f6e'
  install 'Vagrant.pkg'
  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] }
end
