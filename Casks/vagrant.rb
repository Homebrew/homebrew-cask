class Vagrant < Cask
  url 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.2.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.6.2'
  sha256 '471443c5912a9e02ebed53a8f8acf05c3faed643de54e986ecbd355755976bc5'
  install 'Vagrant.pkg'
  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] }
end
