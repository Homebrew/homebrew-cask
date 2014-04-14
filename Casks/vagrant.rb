class Vagrant < Cask
  url 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.5.3.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.5.3'
  sha256 '7bb8a7cc1246bbb5831e78b31f0335777bcd9d16bc88016430a054dd2f2e038c'
  install 'Vagrant.pkg'
  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] }
end
